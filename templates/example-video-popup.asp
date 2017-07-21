<!DOCTYPE html>
<html>
	<head>
		<meta charset='utf-8'/>
		<title>Colorbox Examples</title>
		<style>
			.videoPopUp {
				font-size:1em;				
			}
		</style>
		<link rel="stylesheet" type="text/css" href="/js/colorbox1.5.9/colorbox.css">
		
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script type="text/javascript">
			if (typeof jQuery == 'undefined')
			{
				document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
			}
		</script>
        <script src="/js/colorbox1.5.9/jquery.colorbox-min.js"></script>
		<script>
			$(document).ready(function(){
				//Change Any Links that contain the v= version into the embed version that colorbox expects
				//Note: You lose all extra query string items in the current version of this function
				$(".videoPopUp").each(function(){
					if (/\?v=/i.test(this.href)) {
						var vars = [], hash;
    					var q = this.href.split('?')[1];
						if(q != undefined){
							q = q.split('&');
							for(var i = 0; i < q.length; i++){
								hash = q[i].split('=');
								vars.push(hash[1]);
								vars[hash[0]] = hash[1];
							}
						}
						this.href = 'http://www.youtube.com/embed/' + vars['v'] + '?rel=0&amp;wmode=transparent';						
					}
				});
				//Initialize Colorbox
				$(".videoPopUp").colorbox({iframe:true, innerWidth:640, innerHeight:390});
			});
		</script>
	</head>
	<body>
    
    
    
    
		<p><a class='videoPopUp' href="http://www.youtube.com/embed/VOJyrQa_WR4?rel=0&amp;wmode=transparent">Original Link to Embed YouTube Video Popup (Iframe/Direct Link To YouTube)</a></p>
	
    
		<p><a class='videoPopUp' href="http://www.youtube.com/?v=VOJyrQa_WR4&rel=0&amp;wmode=transparent">Modified Link to use v= style link to YouTube Video Popup (Iframe/Direct Link To YouTube)</a></p>
    
    
    
    
    
    
    
    </body>
</html>