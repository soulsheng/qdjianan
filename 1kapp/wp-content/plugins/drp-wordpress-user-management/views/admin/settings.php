<?php if(!class_exists('WPUM')) exit;?>
<div id="wpum-admin" class="wrap">
	<h2>
		DRP WPUM - Settings
	</h2>
	<?php if(isset($error)):?>
		<div id="message" class="error">
			<p><?php echo esc_attr($error);?></p>
		</div>
	<?php endif;?>
	<?php if(isset($message)):?>
		<div id="message" class="updated">
			<p><?php echo esc_attr($message);?></p>
		</div>
	<?php endif;?>
	<form method="post" action="<?php echo get_admin_url().'admin.php?page=drp-wpum-settings';?>">
		<table class="form-table">
			<tbody>
				<tr <?php if(isset($errors['ban_message'])):?>class="form-invalid"<?php endif;?>>
					<th>
						<label for="ban-message">Enter Ban Message</label>
					</th>
					<td>
						<textarea name="ban_message" id="ban-message"><?php echo esc_attr(get_option('wpum_ban_message'));?></textarea>
						<div class="helper-text">
							Enter the message a banned user will see when they attempt to log in.
						</div>
					</td>
				</tr>
				<tr <?php if(isset($errors['online_interval'])):?>class="form-invalid"<?php endif;?>>
					<th>
						<label for="online-interval">Enter Online Minute Interval</label>
					</th>
					<td>
						<input type="text" name="online_interval" id="online-interval" value="<?php echo esc_attr(get_option('wpum_online_interval', WPUM::DEFAULT_INTERVAL));?>" />
						<div class="helper-text">
							Enter how many minutes to wait to check if the user is still online.
						</div>
					</td>
				</tr>
				<tr <?php if(isset($errors['banunban_user_ip'])):?>class="form-invalid"<?php endif;?>>
					<th>
						<label for="banunban-user-ip">Ban Users IPs On User Ban</label>
					</th>
					<td>
						<input type="checkbox" name="banunban_user_ips" id="banunban-user-ip" <?php if(get_option('wpum_banunban_user_ips')) echo "checked='checked'";?> value="1" />
						<div class="helper-text">
							Checkmark the above if you would like to ban a user's ips automatically when a user is banned.
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<p>
			<input type="submit" class="button-primary" value="Update Settings" />
		</p>
		<?php wp_nonce_field("wpum_edit_settings");?>
	</form>
</div>