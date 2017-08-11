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
			this.href = 'http://www.youtube.com/embed/' + vars['v'] + '?rel=0&amp;wmode=transparent&amp;autoplay=1';						
		}
	});
	//Initialize Colorbox
	$(".videoPopUp").colorbox({iframe:true, innerWidth:960, innerHeight:585});
});
