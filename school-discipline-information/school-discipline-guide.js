  $(document).ready(function() {
	var orgDisciplineH = $('#discipline-content').height();
    $('#toc').height($('#discipline-content').height());
	$('#showToc').mouseover(function() {
		$(this).css('cursor', 'pointer');
	});
	$('#hideToc').mouseover(function() {
		$(this).css('cursor', 'pointer');
	});
	$('.def').mouseover(function() {
		$(this).css('cursor', 'pointer');
	});
	
	
	// ------------------------------ GET THIS WORKING ---------------------------------

	$('.def').click(function() {
    	var thisId = $(this).attr("id");
		$('#subDiv').dialog({
			closeText: "",
			autoOpen: true
		}).dialog("widget").find(".ui-dialog-title").hide();


		$('#subDiv').load('../../school-discipline-information/definitions-list.asp #def-' + thisId, function(response, status, xhr) {
		//$('#subDiv').load('http://www.pacer.org/school-discipline-information/definitions-list.asp #def-' + thisId, function(response, status, xhr) {
			//alert($("#simplemodal-data").html());
			if (status == "error") {
    			var msg = "Sorry but there was an error: ";
    			$("#subDiv").html(msg + xhr.status + " " + xhr.statusText);
  			} else if ($("#subDiv").html() == "") {
				$("#subDiv").html("Error: Definition not found");
			}
		});
		//$.get('/school-discipline-information/definitions-list.asp', function(data) {
				//alert($thisItem.tagName());
		//		$.modal('<h1>Definitions:</h1>' + $('#def-' + thisId, data).html(), {overlayClose: true, escClose: true, focus: true});
		//});
	});
	
	// -------------------------------- END NEW -------------------------------------------


	  var tocWidth = $('#toc').width();
	  var largestH;
	  $('#toc').height() > $('#discipline-content').height() ? largestH = $('#toc').height() : largestH = $('#discipline-content').height();
	$('#showToc').click(function () {
	  // var largestH;
	  $('#toc').fadeIn();
	  $('#top-right-image').fadeOut();
	  $('#contentheader').css('marginRight', 10);
	  $('#toc').height('auto');
	  // $('#toc').height() > $('#discipline-content').height() ? largestH = $('#toc').height() : largestH = $('#discipline-content').height();

		var contentWidth = $('#contentwrapper').width();


		var dcwidth = contentWidth/3 < 317 ? 316 : contentWidth/3;
	  if(contentWidth < 317){
		  $('#discipline-content').css('marginLeft', dcwidth);
		  $('#discipline-content').css('padding', 0);
		  $('#discipline-content').removeClass('cat-504');
		  $('#maincontent').css('height', largestH);
		  $('#toc').css('max-width',tocWidth-20 );
		  $('#rightContent').hide();
		  $('#hideToc').css('z-index', 2);
		  $('#hideToc').css('left', -30);
		  $('#hideToc').show();
	  }else {
		  $('#discipline-content').animate({marginLeft: dcwidth, height: largestH}, 1000, function () {
			  $('#hideToc').show();
		  });
	  }
		$('#showToc').hide();
	});

	
	$('#hideToc').click(function () {

		$('#discipline-content').css('padding','10px 10px 40px 40px');
		$('#discipline-content').css('min-height', 0);
		$('#discipline-content').addClass('cat-504');
  $('#discipline-content').animate({marginLeft:0, height:largestH}, 1000, function() {
	  	$('#toc').height($('#discipline-content').height());
	 	// $('#pagecontent').css('height', largestH+200);
	    $('#maincontent').css('height', largestH+200);
	 	 $('#toc').css('max-width',tocWidth + 20 );
		 $('#showToc').fadeIn();
	     $('#rightContent').show();
		 $('#top-right-image').fadeIn();
	     $('#contentheader').css('marginRight', 520);
	  });
	  $("#hideToc").hide();
	});
	
	//end doc ready function
  });
  
