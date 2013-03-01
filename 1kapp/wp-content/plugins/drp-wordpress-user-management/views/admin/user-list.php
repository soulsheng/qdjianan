<?php if(!class_exists('WPUM')) exit;?>
<div id="wpum-admin" class="wrap">
	<h2>
		DRP WPUM - Registered Users
	</h2>
	<?php if(isset($message)):?>
		<div id="message" class="updated">
			<p><?php echo esc_attr($message);?></p>
		</div>
	<?php endif;?>
	<ul class="subsubsub">
		<li>
			<a href="<?php echo admin_url('admin.php?page=drp-wpum');?>" class="current">
				Found Users (<?php echo $pagination->total_items;?>)
			</a>
		</li>
	</ul>
	<form method="get" id="user-ip-search-form" action="<?php echo admin_url('admin.php');?>">
		<p class="search-box">
			<input type="hidden" name="page" value="drp-wpum" />
			<input type="text" name="ip" value="<?php echo (isset($_GET['ip'])) ? esc_attr($_GET['ip']) : 'Enter IP';?>" />
			<input type="submit" class="button" value="Search User IPs" name="search" />
		</p>
	</form>	
	<div class="tablenav">
		<div class="alignleft actions">
			<form id="search-form" method="get" action="<?php echo admin_url('admin.php');?>">
				<input type="hidden" value="drp-wpum" name="page" />
				<?php if (isset($_GET['ip'])):?>
					<input type="hidden" value="<?php echo esc_attr($_GET['ip']) ;?>" name="ip" />
				<?php endif;?>
				<select name="status">
					<option value="">Show All Users</option>
					<option <?php if(isset($_GET['status']) AND $_GET['status'] == WPUM::STATUS_ACTIVE) echo "selected='selected'";?> value="<?php echo WPUM::STATUS_ACTIVE;?>">Only Active Users</option>
					<option <?php if(isset($_GET['status']) AND $_GET['status'] == WPUM::STATUS_BANNED) echo "selected='selected'";?> value="<?php echo WPUM::STATUS_BANNED;?>">Only Banned Users</option>
				</select>
				<select name="online">
					<option value="">Who Are On/Off Line</option>
					<option <?php if(isset($_GET['online']) AND $_GET['online'] == 1) echo "selected='selected'";?> value="1">Online</option>
				</select>
				<select name="date">
					<option value="">Registered Any Time</option>
					<option <?php if(isset($_GET['date']) AND $_GET['date'] == 1) echo "selected='selected'";?> value="1">Within The Past Day</option>
					<option <?php if(isset($_GET['date']) AND $_GET['date'] == 2) echo "selected='selected'";?> value="2">Within The Past Week</option>
					<option <?php if(isset($_GET['date']) AND $_GET['date'] == 3) echo "selected='selected'";?> value="3">Within The Past Month</option>
					<option <?php if(isset($_GET['date']) AND $_GET['date'] == 4) echo "selected='selected'";?> value="4">Within The Past Year</option>
					<option value="5" <?php if(isset($_GET['date']) AND $_GET['date'] == 5) echo "selected='selected'";?>>Custom</option>
				</select>
				<input type="text" value="<?php echo (!empty($_GET['date_start'])) ? esc_attr($_GET['date_start']) : date('m/d/Y', strtotime('-7 days'));?>" class="date-picker first <?php if(isset($_GET['date']) AND $_GET['date'] == 5) echo "show";?>" name="date_start" />     
				<span <?php if(empty($_GET['date']) OR $_GET['date'] != 5) echo "class='separator'";?>>-</span>
				<input type="text" value="<?php echo (!empty($_GET['date_end'])) ? esc_attr($_GET['date_end']) : date('m/d/Y');?>" class="date-picker <?php if(isset($_GET['date']) AND $_GET['date'] == 5) echo "show";?>" name="date_end" />
				<input type="submit" value="Filter" class="button-secondary action" />
			</form>
		</div>
	</div>
	<table cellspacing="0" class="widefat">
		<thead>
			<tr>
				<th align="center" width="3%">
					
				</th>
				<th width="25%">
					Username
				</th>
				<th width="10%">
					Status
				</th>
				<th width="12%" align="center" style="text-align:center;">
					Login Count
				</th>
				<th width="15%">
					Registered
				</th>
				<th width="25%">
					Last Logged In
				</th>
				<th width="10%">
				</th>
			</tr>
		</thead>
		<tbody>
		<?php if($pagination->total_items > 0):?>
			<?php foreach($users as $user):?>
				<?php $data = (!empty($user->wpum_user_login_details)) ? unserialize($user->wpum_user_login_details) : '';?>
				<tr>
					<td align="center" width="3%">
						<?php if(isset($data['count']) AND $data['count'] > 1):?>
							<span data-user-id="<?php echo esc_attr($user->ID);?>" class="toggle-logins">+</span>
						<?php endif;?>
					</td>
					<td width="25%">
						<?php if(!empty($user->last_active)):?>
							<span class="online">
								<?php echo esc_attr($user->user_login);?>
							</span>
						<?php else:?>
							<?php echo esc_attr($user->user_login);?>
						<?php endif;?>
					</td>
					<td width="10%" class="user-status">
						<?php 
							$status = (!empty($user->wpum_user_status)) ? $user->wpum_user_status : '';
							
							switch($status)
							{
								case WPUM::STATUS_ACTIVE;
									echo 'Active';
								break;
								
								case WPUM::STATUS_BANNED;
									echo 'Banned';
								break;

								default;
									echo 'Active';
								break;
							}
						?>
					</td>
					<td width="12%" align="center">
						<?php echo (!empty($data['count'])) ? esc_attr($data['count']) : 0;?>
					</td>
					<td width="15%">
						<?php echo date('M d, Y', strtotime($user->user_registered));?>
					</td>
					<td width="25%">
						<?php echo (!empty($data['date'])) ? date('M d, Y', $data['date']).' from '.esc_attr($data['ip']) : 'N/A';?>
					</td>
					<td width="10%" align="center">
						<?php if(empty($status) OR $status == WPUM::STATUS_ACTIVE):?>
							<a class="edit-status" href="#" data-user-id="<?php echo esc_attr($user->ID);?>" data-status="<?php echo WPUM::STATUS_BANNED;?>">Ban</a>
						<?php else:?>
							<a class="edit-status" href="#" data-user-id="<?php echo esc_attr($user->ID);?>" data-status="<?php echo WPUM::STATUS_ACTIVE;?>">Unban</a>
						<?php endif;?>
					</td>
				</tr>
			<?php endforeach;?>
		<?php else:?>
			<tr>
				<td colspan="6" class="empty-data-set">No Users Found</td>
			</tr>
		<?php endif;?>
		</tbody>
	</table>
	<?php echo $pagination->render();?>
</div>
<script type="text/javascript">
	WPUM.bindUserPage();
</script>