<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Video Problem Contact Form</title>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.6.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
$(function() {
  $("#submit_btn").click(function() {
	  var fUrl = $("input#url").val();
	  var fReferer = $("input#referer").val();
	  var fVideo = $("input#video").val();	
	  var fDesc = $("#description").val();
	  var dataString = 'sentval=true&url='+ encodeURIComponent(fUrl) + '&referer=' + encodeURIComponent(fReferer) + '&video=' + encodeURIComponent(fVideo)+ '&description=' + encodeURIComponent(fDesc);
		//alert (dataString);return false;
		
		$.ajax({
      type: "POST",
      url: "/bullying/video/problem-form/mailer.asp",
      data: dataString,
      success: function(returnData, textStatus, xhr) {
        $('#contact_form').html("<div id='message'></div>");
		//alert(returnData);
        if (returnData == "true") {
			$('#message').html("<h3>Response Sent!</h3>")
        	.append('<p>Thank you for your input.  <br />We will look into this issue soon.</p><p><a href="javascript:parent.HideForm();">Close This Window</a></p>')
        	.hide()
        	.fadeIn(1500, function() {
          	$('#message').append('<img id="checkmark" src="images/check.png" />');
        	});
		} else {
			$('#message').html("<h2>Submission Error</h2>")
       	 	.append('<p>We are having technical difficulties at this time. You can email us directly about any site issues to <a href=\"mailto:webmaster@pacer.org\">webmaster@pacer.org</a></p>');
		}
      }
     });
    return false;
	});
});
</script>
<link href="css/formpage.css" media="all" type="text/css" rel="stylesheet">
</head>

<body>
<div id="closebutton"><a href="javascript:parent.HideForm();">Close Window <img src="/bullying/video/problem-form/images/cancel.png" width="16" height="16" alt="" /></a></div>
<div id="contact_form">
  <form name="contact" method="post" action="">
  	<input type="hidden" name="url" id="url" value="" />
  	<input type="hidden" name="referer" id="referer" value="" />
  	<input type="hidden" name="video" id="video" value="" />
	<script type="text/javascript">    
  		document.getElementById("url").value = parent.document.URL;
  		document.getElementById("referer").value = parent.document.referrer;
  		document.getElementById("video").value = parent.document.getElementById("video-title").innerHTML;
 	</script>

    <label for="description" id="description_label">Please describe the problem you are having:</label><br />
	<textarea id="description" name="description" rows="4" cols="42"></textarea>
    <p style="width:360px; margin:10px; color:#eee; font-size:.9em;">Note: Some locations block YouTube videos. There is a link below the video to view using an alternative file location when the dispayed video is through YouTube.</p>
    <input type="submit" name="submit" id="submit_btn" value="Send" />
  </form>
</div>
</body>
</html>
