//requires jQuery ver 1.43 or greater


jQuery(document).ready(function() {
	jQuery(".ExpandHeader").each(function(index, element) {
		//add accessibility aria-roles and tabindex
		jQuery(this).attr("role", "button");
		jQuery(this).attr("tabindex", "0");
		jQuery(this).prepend('<span class="fa fa-plus-circle"></span> ');
	});
	
	jQuery(".ExpandHeader").click(function () {
		jExpandHeader = jQuery(this);
		jExpandHeader.children('.fa').toggleClass('fa-plus-circle fa-minus-circle');

		jReadMore = jQuery(this).nextAll().find('.ReadMore').first();
		jReadMore.hide();
		//getting the next element
		jContent = jQuery(this).nextAll('.ExpandItem').first();
		//alert(jQuery(this).nextAll('.ExpandItem')[0].tagName);
		//open up the content needed - toggle the slide- if visible, slide up, if not slidedown.
		jContent.slideToggle(700, function () {
			//execute this after slideToggle is done
			//change text of header based on visibility of content div
			jExpandHeader.toggleClass('ItemOpen');
			jContent.toggleClass('ItemOpen');
		});
	});
	jQuery(".ReadMore").click(function () {
		//Get the Previous ExpandHeader or the parent if the readmore link is 1 level deeper than the header.
		if (jQuery(this).prevAll('.ExpandHeader').first().length) {
			jExpandHeader = jQuery(this).prevAll('.ExpandHeader').first();
		} else {
			jExpandHeader = jQuery(this).parent().prevAll('.ExpandHeader').first();
		}
		jExpandHeader.children('.fa').toggleClass('fa-plus-circle fa-minus-circle');
		//getting the next ExpanItem element or the parent if the readmore is 1 level deeper than the header.
		if (jQuery(this).nextAll('.ExpandItem').first().length) {
			jContent = jQuery(this).nextAll('.ExpandItem').first();
		} else {
			jContent = jQuery(this).parent().nextAll('.ExpandItem').first();
		}
		//open up the content needed - toggle the slide- if visible, slide up, if not slidedown.
		jContent.slideToggle(700, function () {
			//execute this after slideToggle is done
			//change text of header based on visibility of content div
			jExpandHeader.toggleClass('ItemOpen');
			jContent.toggleClass('ItemOpen');
		});
		jQuery(this).hide();
	});
	jQuery(".ExpandHeader").bind('keypress',function (event){
		if (event.keyCode === 13){
				this.click();
		}
	});
	
	
	
	jQuery("#ExpandAll").click(function () {
		if (jQuery(this).text().indexOf('Expand All') >= 0) {
			jQuery(this).text('Collapse All');
			jQuery('.ExpandItem').slideDown();
			jQuery('.ReadMore').hide();
			jQuery(".ExpandHeader").children('.fa').removeClass('fa-plus-circle');
			jQuery(".ExpandHeader").children('.fa').addClass('fa-minus-circle');
		} else {
			jQuery(this).text('Expand All');
			jQuery('.ExpandItem').slideUp();
			jQuery(".ExpandHeader").children('.fa').removeClass('fa-minus-circle');
			jQuery(".ExpandHeader").children('.fa').addClass('fa-plus-circle');
		}
	});
	
	jQuery("#ExpandAll").bind('keypress',function (event){
		if (event.keyCode === 13){
				this.click();
		}
	});
	
	
	jQuery('.defaultOpen').click();


});