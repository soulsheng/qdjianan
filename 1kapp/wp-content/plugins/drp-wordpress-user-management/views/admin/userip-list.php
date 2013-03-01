<?php if(!class_exists('WPUM')) exit;?>
<ul class="user-login-list">
    <?php foreach($ips as $ip):?>
        <li>
            <?php echo esc_attr($ip->login_ip);?>
        </li>
    <?php endforeach;?>
</ul>