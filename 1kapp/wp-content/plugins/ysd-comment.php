<?php
/*
Plugin Name: 云商店评论
Plugin URI: http://www.yuanshangdian.com/
Author: luofei614
Author URI: http://weibo.com/luofei614
Description: 云商店评论系统,评论时需要登陆微博后才能评论，从而防止垃圾信息。
Version: 1.0
*/
if(!isset($_SESSION)) session_start(); //判断是否已经session_start， 如果没有进行session_start
if(!empty($_GET['ysd_a'])){
	header('Content-Type:text/html; charset=utf-8');
	//检查referer
	if(!isset($_SERVER['HTTP_REFERER']) || !preg_match('/^http:\/\/sinaclouds.sinaapp.com/', $_SERVER['HTTP_REFERER'])){
		exit('<script>alert("来源错误")</script>');
	}
	if('callback'==$_GET['ysd_a'] && !empty($_GET['ticket']) && !empty($_GET['screen_name'])){
		//登陆回调
		$_SESSION['ysd_sso_ticket']=$_GET['ticket'];//ticket session
		echo '<script>window.top.login_success("'.$_GET['screen_name'].'")</script>';
	}elseif('login_out'==$_GET['ysd_a'] && !empty($_GET['ticket'])){
		//退出
		if(isset($_SESSION['ysd_sso_ticket']) && $_SESSION['ysd_sso_ticket']==$_GET['ticket']){
			unset($_SESSION['ysd_sso_ticket']);
			echo 'succ';
		}	
	}
}else{
	add_action('comment_form_before_fields','webo_login');
	//add_action('comment_form_after_fields','weibo_choose');
	add_action('pre_comment_on_post','ysd_comment_on_post');
	add_action('comment_post','ysd_comment_post');
}

function webo_login(){
	if(is_user_logged_in()){ //管理员登录，无需微博登陆
		return ;
	}
	//根路径
	$root=dirname(rtrim($_SERVER['SCRIPT_NAME'],'/'));
	if('/'==$root || '\\'==$root) $root='';
	$arr=explode('wp-content',__FILE__);
	$ssl=( ( isset($_SERVER['HTTP_APPMASK']) && $_SERVER['HTTP_APPMASK'] & 0x1 ) || ( isset($_SERVER['HTTP_X_PROTO']) && $_SERVER['HTTP_X_PROTO'] == 'SSL' ) )?true:false;
	$path=($ssl?'https://':'http://').$_SERVER['HTTP_HOST'].'/'.$root.'/wp-content'.str_replace('\\', '/', $arr[1]);
	$callback_url=$path.'?ysd_a=callback';
	$login_out_url=$path.'?ysd_a=login_out';
	$sso_url='http://sinaclouds.sinaapp.com/weibosso/?callback='.urlencode($callback_url).'&login_out='.urlencode($login_out_url);
	echo '<script>function login_success(name){ document.getElementById("author").value=name; }</script>';
	echo '<iframe scrolling="no" frameborder="0" style="height:24px; width:100%;" allowtransparency="true" src="'.$sso_url.'"></iframe>';
}

function weibo_choose(){
	if(!is_user_logged_in())
		echo '<input type="checkbox" name="send_to_weibo" /> 同时发布到微博';
}

function ysd_comment_on_post($comment_post_ID){
	if(!is_user_logged_in() && !isset($_SESSION['ysd_sso_ticket'])){
		//var_dump($_SESSION);
		wp_die('<strong>错误</strong>: 请先用微博登陆后才能评论');
	}
}

function ysd_comment_post(){
	if(isset($_POST['send_to_weibo'])){
		//同时更新到微博
		$content=$_POST['comment'];
		if(mb_strlen($content,'utf-8')>120){
			$content=mb_substr($content, 0,120).'...';
		}
		$content.=$_SERVER['HTTP_REFERER'];
		$url='http://sinaclouds.sinaapp.com/weibosso/?a=send_msg&ticket='.$_SESSION['ysd_sso_ticket'];
		$ch = curl_init();
	            curl_setopt($ch, CURLOPT_URL, $url);
	            curl_setopt($ch, CURLOPT_POST, true);
	            curl_setopt($ch, CURLOPT_POSTFIELDS, array('content'=>$content));
	            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	            curl_exec($ch);
	}
}

?>
