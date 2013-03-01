var WPUM = {
	bindUserPage: function(){
		jQuery(document).ready(function(){
			jQuery('#wpum-admin select[name="date"]').bind('change', function(){
				if(jQuery(this).val() == 5)
				{
					jQuery('#wpum-admin .date-picker').show();
					jQuery('#wpum-admin #search-form span').show();
				}
				else
				{
					jQuery('#wpum-admin .date-picker').hide();	
					jQuery('#wpum-admin #search-form span').hide();
				}
			});
			
			jQuery('#wpum-admin .date-picker').simpleDatepicker();
			
			jQuery('#wpum-admin #user-ip-search-form input:text').bind('focus', function(){
				if(jQuery(this).val() == 'Enter IP')
				{
					jQuery(this).val('');
				}
			});
			
			jQuery('#wpum-admin .edit-status').bind('click', function(e){
				e.preventDefault();
				
				var $this = jQuery(this);
				$this.text('Updating ....');
				
				var data = {
					action: 'edit_user_status',
					user_id: $this.attr('data-user-id'),
					status: $this.attr('data-status'),
					security: WPUMData.nonce
				};
						
				jQuery.post(ajaxurl, data, function(response) {			
					if(response == '1'){
						if($this.attr('data-status') != WPUMData.statusActive)
						{
							$this.attr('data-status', WPUMData.statusActive);
							$this.text('Unban');
							$this.parents('tr').find('td.user-status').empty().text('Banned');
						}
						else
						{
							$this.attr('data-status', WPUMData.statusBanned);
							$this.text('Ban');
							$this.parents('tr').find('td.user-status').empty().text('Active');
						}
					}
					else
					{
						$this.text('Error');
					}
				});
			});
			
			jQuery('#wpum-admin .toggle-logins').bind('click', function(e){
				var $this = jQuery(this);
				$this.unbind('click');
				$this.text('-');
				var $usercell = $this.parent().next();
				$usercell.append("<div>Loading User IPs ...</div>");
				
				var data = {
					action: 'get_user_logins',
					user_id: $this.attr('data-user-id')
				};
						
				jQuery.get(ajaxurl, data, function(response) {			
					$usercell.find('div').html(response);
					$this.bind('click', function(){
						$that = jQuery(this);
						
						if($that.text() == '+')
						{
							$that.parent().next().find('div:first').slideDown('slow');
							$that.text('-');
						}
						else
						{
							$that.parent().next().find('div:first').slideUp('slow');
							$that.text('+');
						}
					});
				});
			});
		});
	},
	bindIPPage: function(){
		jQuery(document).ready(function(){
			jQuery('#wpum-admin #ip-checkbox').bind('click', function(){
				if(jQuery(this).attr('checked'))
				{
					jQuery('tbody input:checkbox').attr('checked', true);
				}
				else
				{
					jQuery('tbody input:checkbox').attr('checked', false);
				}
			})
		
			jQuery('#wpum-admin #ip-action-form').bind('submit', function(e){
				e.preventDefault();
				
				var $form = jQuery(this);
				
				jQuery('tbody input:checked').each(function(){
					$form.append("<input type='hidden' name='banned_ips[]' value='"+ jQuery(this).val() +"' />");
				});
				$form.unbind('submit');
				$form.submit();
			});
		});	
	}
}
