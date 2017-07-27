<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Publications: Discipline Guide</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/style.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />

<script type="text/javascript" src="../css/menu.js"></script>
<script language="JavaScript" type="text/javascript">
<!--
// -----------------------------------------------------------------------------
// Globals
// Major version of Flash required
var requiredMajorVersion = 8;
// Minor version of Flash required
var requiredMinorVersion = 0;
// Revision of Flash required
var requiredRevision = 0;
// the version of javascript supported
var jsVersion = 1.0;
// -----------------------------------------------------------------------------
// -->
</script>
<script language="VBScript" type="text/vbscript">
<!-- // Visual basic helper required to detect Flash Player ActiveX control version information
Function VBGetSwfVer(i)
  on error resume next
  Dim swControl, swVersion
  swVersion = 0
  
  set swControl = CreateObject("ShockwaveFlash.ShockwaveFlash." + CStr(i))
  if (IsObject(swControl)) then
    swVersion = swControl.GetVariable("$version")
  end if
  VBGetSwfVer = swVersion
End Function
// -->
</script>
<script language="JavaScript1.1" type="text/javascript">
<!-- // Detect Client Browser type
var isIE  = (navigator.appVersion.indexOf("MSIE") != -1) ? true : false;
var isWin = (navigator.appVersion.toLowerCase().indexOf("win") != -1) ? true : false;
var isOpera = (navigator.userAgent.indexOf("Opera") != -1) ? true : false;
jsVersion = 1.1;
// JavaScript helper required to detect Flash Player PlugIn version information
function JSGetSwfVer(i){
	// NS/Opera version >= 3 check for Flash plugin in plugin array
	if (navigator.plugins != null && navigator.plugins.length > 0) {
		if (navigator.plugins["Shockwave Flash 2.0"] || navigator.plugins["Shockwave Flash"]) {
			var swVer2 = navigator.plugins["Shockwave Flash 2.0"] ? " 2.0" : "";
      		var flashDescription = navigator.plugins["Shockwave Flash" + swVer2].description;
			descArray = flashDescription.split(" ");
			tempArrayMajor = descArray[2].split(".");
			versionMajor = tempArrayMajor[0];
			versionMinor = tempArrayMajor[1];
			if ( descArray[3] != "" ) {
				tempArrayMinor = descArray[3].split("r");
			} else {
				tempArrayMinor = descArray[4].split("r");
			}
      		versionRevision = tempArrayMinor[1] > 0 ? tempArrayMinor[1] : 0;
            flashVer = versionMajor + "." + versionMinor + "." + versionRevision;
      	} else {
			flashVer = -1;
		}
	}
	// MSN/WebTV 2.6 supports Flash 4
	else if (navigator.userAgent.toLowerCase().indexOf("webtv/2.6") != -1) flashVer = 4;
	// WebTV 2.5 supports Flash 3
	else if (navigator.userAgent.toLowerCase().indexOf("webtv/2.5") != -1) flashVer = 3;
	// older WebTV supports Flash 2
	else if (navigator.userAgent.toLowerCase().indexOf("webtv") != -1) flashVer = 2;
	// Can't detect in all other cases
	else {
		
		flashVer = -1;
	}
	return flashVer;
} 
// If called with no parameters this function returns a floating point value 
// which should be the version of the Flash Player or 0.0 
// ex: Flash Player 7r14 returns 7.14
// If called with reqMajorVer, reqMinorVer, reqRevision returns true if that version or greater is available
function DetectFlashVer(reqMajorVer, reqMinorVer, reqRevision) 
{
 	reqVer = parseFloat(reqMajorVer + "." + reqRevision);
   	// loop backwards through the versions until we find the newest version	
	for (i=25;i>0;i--) {	
		if (isIE && isWin && !isOpera) {
			versionStr = VBGetSwfVer(i);
		} else {
			versionStr = JSGetSwfVer(i);		
		}
		if (versionStr == -1 ) { 
			return false;
		} else if (versionStr != 0) {
			if(isIE && isWin && !isOpera) {
				tempArray         = versionStr.split(" ");
				tempString        = tempArray[1];
				versionArray      = tempString .split(",");				
			} else {
				versionArray      = versionStr.split(".");
			}
			versionMajor      = versionArray[0];
			versionMinor      = versionArray[1];
			versionRevision   = versionArray[2];
			
			versionString     = versionMajor + "." + versionRevision;   // 7.0r24 == 7.24
			versionNum        = parseFloat(versionString);
        	// is the major.revision >= requested major.revision AND the minor version >= requested minor
			if ( (versionMajor > reqMajorVer) && (versionNum >= reqVer) ) {
				return true;
			} else {
				return ((versionNum >= reqVer && versionMinor >= reqMinorVer) ? true : false );	
			}
		}
	}	
	return (reqVer ? false : 0.0);
}
// -->
</script>


</head>

<body>
<div id="skiptocontent">
<a href="#maincontent">Skip to main content</a>
</div>

<div id="wrapper">

<div id="main">

<div id="header">
	<div>			<!--#include virtual="/googleSearchBox.htm"-->
            <!-- Contains Contact Pacer | Donate | Google search bar | Social media -->
<a href="../"><img src="../images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
	</div>
	<!--#include virtual="/dynamicheader.htm"-->
</div>

<div id="rightBar">


<p class="pubinfo">
<a href="../forms/request.asp">Reprint Request Form</a><br /><br />

<a href="OrderForm.pdf">Publication Order Form</a>
<img src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /><br /><br />
Items marked <img src="images/square.png" width="16" height="12" alt="square" />are FREE to Minnesota parents of children and young adults with disabilities.<br /><br /> 
<img src="images/star.png" width="16" height="13" alt="star" />items are free to young adults, high school or older, with disabilities and their families.<br /><br />
Please limit requests for free items to 10 or less per order.
</p>
</div>

<div id="maincontent">

	<div id="pagetoporange">
	<div class="printemail">
		<p>
		<img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>
		
		</p>
	</div>
	<div id="breadcrumb">
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp">Publications</a> / Discipline of Minnesota Students with Disabilities: An Interactive Guide
	
	<h1>Publications</h1>
	
</div>

<!--BEGIN CONTENT-->

</div>

<div id="pagecontent">

<h2 style="margin-bottom: 1.5em;">School Discipline Process for Minnesota Students with Disabilities:<br /><em>An Interactive Guide</em></h2>

<div style="text-align: center;">
<script language="JavaScript" type="text/javascript">
<!-- 
var hasRightVersion = DetectFlashVer(requiredMajorVersion, requiredMinorVersion, requiredRevision);
if(hasRightVersion) {  // if we've detected an acceptable version
    var oeTags = '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"'
    + 'width="658" height="610"'
    + 'codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab">'
    + '<param name="movie" value="disciplineGuide.swf" /><param name="loop" value="false" /><param name="quality" value="high" /><param name="bgcolor" value="#ffffff" />'
    + '<embed src="disciplineGuide.swf" loop="false" quality="high" bgcolor="#ffffff" '
    + 'width="658" height="610" name="disciplineGuide" align="middle"'
    + 'play="true"'
    + 'loop="false"'
    + 'quality="high"'
    + 'allowScriptAccess="sameDomain"'
    + 'type="application/x-shockwave-flash"'
    + 'pluginspage="http://www.macromedia.com/go/getflashplayer">'
    + '<\/embed>'
    + '<\/object>';
    document.write(oeTags);   // embed the flash movie
  } else {  // flash is too old or we can't detect the plugin
    var alternateContent = 'Alternate HTML content should be placed here.'
  	+ 'This content requires the Macromedia Flash Player.'
   	+ '<a href=http://www.macromedia.com/go/getflash/>Get Flash</a>';
    document.write(alternateContent);  // insert non-flash content
  }
// -->
</script>
<noscript>
	<!--// Provide alternate content for browsers that do not support scripting
	// or for those that have scripting disabled.-->
  	This content requires the Macromedia Flash Player.
  	<a href="http://www.macromedia.com/go/getflash/">Get Flash</a>  	
  	<p>
  	<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
  	</p>
</noscript>
</div>
<p>
  	<br /><br /><br /><br />
 </p>

</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>