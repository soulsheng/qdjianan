<?php if(!class_exists('WPUM')) exit;?>
<div id="wpum-admin" class="wrap">
	<h2>
		DRP WPUM - Ban An IP
	</h2>
	<?php if(isset($error)):?>
		<div id="message" class="error">
			<p><?php echo esc_attr($error);?></p>
		</div>
	<?php endif;?>
	<form method="post" action="<?php echo get_admin_url().'admin.php?page=drp-wpum-ban';?>">
		<table class="form-table">
			<tbody>
				<tr <?php if(isset($errors['banned_ip'])):?>class="form-invalid"<?php endif;?>>
					<th>
						<label for="banned-ip">Enter One Or Multiple IPs:</label>
					</th>
					<td>
						<textarea name="banned_ip" id="banned-ip"></textarea>
						<?php if(isset($errors['banned_ip'])):?>
							<div class="error">
								<?php echo esc_attr($errors['banned_ip']);?>
							</div>
						<?php endif;?>
						<div class="helper-text">
							To ban multiple IP's, enter each IP into the textbox and separate each IP with a semi-colon.
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<p>
			<input type="submit" class="button-primary" value="Ban IP" />
		</p>
		<input type="hidden" name="action" value="add" />
		<?php wp_nonce_field("wpum_add_bannedip");?>
	</form>
</div>