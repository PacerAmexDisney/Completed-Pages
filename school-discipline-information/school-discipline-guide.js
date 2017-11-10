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
	
	
	
	$('#showToc').click(function () {
	  var largestH;
	  $('#toc').fadeIn();
	  $('#top-right-image').fadeOut();
	  $('#contentheader').css('marginRight', 10);
	  $('#toc').height('auto');
	  $('#toc').height() > $('#discipline-content').height() ? largestH = $('#toc').height() : largestH = $('#discipline-content').height();

		var dcwidth = $('#contentwrapper').width() / 3;
	  
  	  $('#discipline-content').animate({marginLeft:dcwidth, height:largestH}, 1000, function() {
		$('#hideToc').show();
	  });
	  $('#showToc').hide();
	});
	
	$('#hideToc').click(function () {
  $('#discipline-content').animate({marginLeft:0, height:orgDisciplineH}, 1000, function() {  
	  	$('#toc').height($('#discipline-content').height());
		$('#showToc').fadeIn();
		$('#top-right-image').fadeIn();
	  $('#contentheader').css('marginRight', 520);

	  });
	  $("#hideToc").hide();
	});
	
	//end doc ready function
  });
  
