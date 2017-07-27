<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="robots" content="NOINDEX, NOFOLLOW" />

<title>Search Results - National Parent Center on Transition and Employment</title>

<link rel="icon" href="http://www.pacer.org/transition/favicon.ico" />
<link href="/transition/css/style.css" rel="stylesheet" type="text/css" />
<!--#include virtual="/transition/dynamic-head-items.html"-->
</head>

<body>

<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>


<!--#include virtual="/transition/dynamic-header.html"-->
<!--#include virtual="/transition/topnav.html"-->

<div class="breadcrumb"> <a href="/transition/">Home</a> /</div>

  <div class="content">
    <h1 id="maincontent">Search Results</h1>

<!-- Google Search Result Snippet Begins -->
<div id="cse" style="width: 95%; margin:0px auto">Loading</div>
<script src="http://www.google.com/jsapi" type="text/javascript"></script>
<script type="text/javascript"> 
  function parseQueryFromUrl () {
    var queryParamName = "q";
    var search = window.location.search.substr(1);
    var parts = search.split('&');
    for (var i = 0; i < parts.length; i++) {
      var keyvaluepair = parts[i].split('=');
      if (decodeURIComponent(keyvaluepair[0]) == queryParamName) {
        return decodeURIComponent(keyvaluepair[1].replace(/\+/g, ' '));
      }
    }
    return '';
  }
  google.load('search', '1', {language : 'en', style : google.loader.themes.ESPRESSO});
  google.setOnLoadCallback(function() {
    var customSearchControl = new google.search.CustomSearchControl('008159103446416441332:lzmgy5qqvao');
    customSearchControl.setResultSetSize(google.search.Search.FILTERED_CSE_RESULTSET);
    customSearchControl.setLinkTarget(google.search.Search.LINK_TARGET_SELF);
	var options = new google.search.DrawOptions();
    options.enableSearchResultsOnly();     
    customSearchControl.draw('cse', options);
    var queryFromUrl = parseQueryFromUrl();
    if (queryFromUrl) {
      customSearchControl.execute(queryFromUrl);
    }
  }, true);
</script>
 

<!-- Google Search Result Snippet Ends -->


	</div>

<!--#include virtual="/transition/footer.html"-->
  <!-- end .container --></div>
</body>
</html>