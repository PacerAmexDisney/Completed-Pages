$(document).ready(function() {
	$('.dash').attr('aria-hidden','true');
	var $pageTabs = $('#tabs').tabs();
	//When linking to a tab on the page the browser sometimes jumps you to the bottom of the page.  This will start you at the top of the tab if you link directly to a tab on the page.
	if (window.location.hash) {
			$('html, body').animate({
				scrollTop: $($pageTabs).offset().top - 115
			}, 150);
	}

	$(".ui-tabs-panel").each(function(i){
		var totalSize = $(".ui-tabs-panel").size() - 1;
		if (i != totalSize) {
			next = i + 1;
			$(this).append("<a href='#' class='next-tab mover' rel='" + next + "'>Next Tab &#187;</a>");
		}

		if (i != 0) {
			prev = i - 1;
		$(this).append("<a href='#' class='prev-tab mover' rel='" + prev + "'>&#171; Prev Tab</a>");
		}
		$(this).append('<br class="clearfloat" />');
	});

	$('.next-tab, .prev-tab').click(function(e) { 
		// call mobile button call which will only trigger if mobile solution has been initialized.
		if ($.isFunction(MobileMoveButtonClick)){
			MobileMoveButtonClick(e);
		}else{
			alert('Error: Mobile Tabbed-Pannel not initialized.')
		}
	   //scroll back to the top
	   $('html, body').animate({
			scrollTop: $($pageTabs).offset().top - 115
		}, 150);
	   //delay the changing of the tabs until the scroll is complete so the person sees the heading change
	   setTimeout($.proxy(function() {
			//alert('timeout - ' + $(this).attr("rel"));
			$('#tabs').tabs('option', 'active', $(this).attr("rel"));
			//Re-scroll the window after the content length has changed.
			$('html, body').animate({
				scrollTop: $($pageTabs).offset().top - 115
			}, 150);

	   }, this), 300);
	   return false;
	});
 });
