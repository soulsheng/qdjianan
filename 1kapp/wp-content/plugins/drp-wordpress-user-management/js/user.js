var PingServer = {
	ping: function(){
		var data = {
			action: 'ping_server',
			security: PingServerData.nonce
		};
				
		jQuery.post(PingServerData.ajaxurl, data);
	},
	start: function(){
		jQuery(document).ready(function(){
			setInterval("PingServer.ping()", PingServerData.interval)								
		});
	}
}

PingServer.start();