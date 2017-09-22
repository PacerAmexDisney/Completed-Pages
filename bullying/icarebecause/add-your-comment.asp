<!--#include virtual="/bullying/templates/header.asp"-->



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<meta name="description" content="" />

<title>National Bullying Prevention Center</title>



<meta property="og:title" content="National Bullying Prevention Center" />

<meta property="og:url" content="http://www.pacer.org/bullying/icarebecause/add-your-comment.asp" />

<meta property="og:image" content="http://www.pacer.org/bullying/nbpm/images/unityDay-fb.jpg" />

<meta property="og:description" content="" />



<script src="/SpryAssets/SpryValidationTextarea.js" type="text/javascript"></script>
<script src="/SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<link href="/SpryAssets/SpryValidationTextarea.css" rel="stylesheet" type="text/css" />
<link href="/SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
if (typeof jQuery == 'undefined')
{
    document.write(unescape("%3Cscript src='/js/jquery-1.10.2.min.js' type='text/javascript'%3E%3C/script%3E"));
}
</script>

<% ' ----------------------------------------------- FORM SECURITY ITEMS -------------------------------------------- %>

<!--#include virtual="/formsecurity/sha256.asp"-->
<!--#include virtual="/formsecurity/validate.asp"-->
<script type="text/javascript" src="/formsecurity/AddSecurity.js"></script>

<% ' ----------------------------------------------- END FORM SECURITY ITEMS -------------------------------------------- %>


<script type="text/javascript">
	$().ready(function() {
		var actionPage = "/bullxying/icarebexcause/add-yxour-comment-prxocessing-d3x4dk.asp";
		AddFormAction(actionPage.replace(/x/gi, ""));
	});
</script>
<style type="text/css">
#eventContainer{
	height:1225px;
	overflow-y:auto;
}
form.secured .secret {
	display:none;
}
form.secured .offScreen {
	display:block;
	width:1px;
	height:1px;
	position:absolute;
	left:-9999999px;
} 

</style>



</head>

<body onload="setForm()" class="onecol">

<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>
<!--#include virtual="/bullying/templates/page-header-nav.asp"-->

  <div class="breadcrumb"> <a href="/bullying/">Home</a> /</div>

  <div class="content">
    <h1 id="maincontent">I Care Because ...</h1>
        <script type="text/javascript">
		if (history.length > 1) {
		document.write('<p style="text-align:right"><a href="javascript:history.back();">Return to the Previous Page</a></p>');
		}
	</script>

<noscript>
<h2 align="center">Alert - Javascript is required to Use this form</h2>
</noscript>
<form id="icarebecauseform" name="icarebecauseform" class="secured" action="" method="post" style="padding-left:15px;">
    <input type="hidden" id="secureCode" name="secureCode" value="<%=SetCode(10)%>" />
<table cellspacing="5">
            <tr>
            <td width="156"><label for="fname">First Name:</label></td><td width="652"><input type="text" maxlength="50" size="50" name ="fname" id="fname" tabindex="10" /></td>
      		</tr><tr>
            <td><label for="age">Age:</label></td><td><span id="sprytextfield1">
            <input type="text" name="age" id="age" tabindex="20" />
            <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span><span class="textfieldMinValueMsg">The entered value is less than the minimum required.</span><span class="textfieldMaxValueMsg">The entered value is greater than the maximum allowed.</span></span></td>
            </tr><tr>
			<td><label for="state">State / Location:</label></td><td><input maxlength="50" type="text" size="50" name="state" id="state" tabindex="30" /></td>
            </tr><tr>
            <td colspan="2"><span id="sprytextarea1">
            <label for="comment">I Care Because ...</label><br />
            <textarea name="comment" id="comment" cols="70" rows="12" tabindex="40"></textarea><br /> Characters remaining - 
            <span id="countsprytextarea1">&nbsp;</span><span class="textareaRequiredMsg">A value is required.</span><span class="textareaMaxCharsMsg">Exceeded maximum number of characters.</span></span>
			</td>
            </tr><tr>
            <td colspan="2">
            
            <% ' -----------------------------------------------  SECURITY FIELDS -------------------------------------------- %>
            <div class="secret"></div>
            <div class="offScreen" id="emailField">
                <label for="email">Email</label><input type="text" name="email" id="email" value="" tabindex="-1" />
            </div>
            <% ' -----------------------------------------------  END SECURITY FIELDS ---------------------------------------- %>
  
            
			<input type="submit" value="Submit" tabindex="50" />
			</td>
            </tr>
            </table>
</form>
   
<p style="color:#666; font-size:.9em">* - All submissions are reviewed before they are posted to the site.</p>
<script type="text/javascript">
var sprytextarea1 = new Spry.Widget.ValidationTextarea("sprytextarea1", {maxChars:1300, validateOn:["blur", "change"], counterId:"countsprytextarea1", counterType:"chars_remaining"});
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1", "integer", {validateOn:["blur"], minValue:1, maxValue:99});
</script>
<!--#include virtual="/bullying/templates/footer.asp"-->
