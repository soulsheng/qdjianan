jQuery(document).ready(function () {
	jQuery('.akismet-status').each(function () {
		var thisId = jQuery(this).attr('commentid');
		jQuery(this).prependTo('#comment-' + thisId + ' .column-comment div:first-child');
	});
	jQuery('.akismet-user-comment-count').each(function () {
		var thisId = jQuery(this).attr('commentid');
		jQuery(this).insertAfter('#comment-' + thisId + ' .author strong:first').show();
	});
	jQuery('#the-comment-list tr.comment .column-author a[title ^= "http://"]').each(function () {
 		var thisTitle = jQuery(this).attr('title');
 		    thisCommentId = jQuery(this).parents('tr:first').attr('id').split("-");
 		
 		jQuery(this).attr("id", "author_comment_url_"+ thisCommentId[1]);
 		
 		if (thisTitle) {
 			jQuery(this).after(' <a href="#" class="remove_url" commentid="'+ thisCommentId[1] +'" title="Remove this URL">x</a>');
 		}
 	});
 	jQuery('.remove_url').live('click', function () {
 		var thisId = jQuery(this).attr('commentid');
 		var data = {
 			action: 'comment_author_deurl',
			_wpnonce: WPAkismet.comment_author_url_nonce,
 			id: thisId
 		};
 		jQuery.ajax({
		    url: ajaxurl,
		    type: 'POST',
		    data: data,
		    beforeSend: function () {
		        // Removes "x" link
	 			jQuery("a[commentid='"+ thisId +"']").hide();
	 			// Show temp status
		        jQuery("#author_comment_url_"+ thisId).html('<span>Removing...</span>');
		    },
		    success: function (response) {
		        if (response) {
	 	