<?php if(!class_exists('WPUM')) exit;?>
<div id="wpum-admin" class="wrap">
	<h2>
		DRP WPUM - Banned IPs
		<a class="button add-new-h2" href="<?php echo admin_url('admin.php?page=drp-wpum-ban&action=add');?>">
			Ban An IP
		</a>
	</h2>
	<?php if(isset($message)):?>
		<div id="message" class="updated">
			<p><?php echo esc_attr($message);?></p>
		</div>
	<?php endif;?>
	<ul class="subsubsub">
		<li>
			<a href="<?php echo admin_url('admin.php?page=drp-wpum-ban');?>" class="current">
				Found IPs (<?php echo $pagination->total_items;?>)
			</a>
		</li>
	</ul>
	<form method="get" id="ip-search-form" action="<?php echo admin_url('admin.php');?>">
		<p class="search-box">
			<input type="hidden" name="page" value="drp-wpum-ban" />
			<input type="text" name="ip" value="<?php if(isset($_GET['ip'])) echo esc_attr($_GET['ip']);?>" />
			<input type="submit" class="button" value="Search IPs" name="search" />
		</p>
	</form>	
	<div class="tablenav">
		<div class="alignleft actions">
			<form id="ip-action-form" method="post" action="<?php echo admin_url('admin.php?page=drp-wpum-ban');?>">
				<select name="action">
					<option value="delete">Delete IPs</option>
				</select>
				<input type="submit" value="Apply" class="button-secondary action" />
				<?php wp_nonce_field("wpum_delete_bannedip");?>
			</form>
		</div>
	</div>
	<table cellspacing="0" class="widefat">
		<thead>
			<tr>
				<th class="check-column">
					<input type="checkbox" id="ip-checkbox"/>
				</th>
				<th>
					Banned IP
				</th>
			</tr>
		</thead>
		<tbody>
		<?php if(isset($ips)):?>
			<?php foreach($ips as $ip):?>
				<tr>
					<th class="check-column">
						<input type="checkbox" value="<?php echo esc_attr($ip->banned_ip);?>" name="banned_ips[]" />
					</th>
					<td>
						<?php echo esc_attr($ip->banned_ip);?>
					</td>
				</tr>
			<?php endforeach;?>
		<?php else:?>
			<tr>
				<td colspan="2" class="empty-data-set">No IPs Found</td>
			</tr>
		<?php endif;?>
		</tbody>
	</table>
	<?php echo $pagination->render();?>
</div>
<script type="text/javascript">
	WPUM.bindIPPage();
</script>