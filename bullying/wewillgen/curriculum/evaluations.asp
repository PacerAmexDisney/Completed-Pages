<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
If Session("wwgLogin") <> "Valid" Then
	Session("wwgEntranceURL") = Request.ServerVariables("URL")
	Response.Redirect("/bullying/wewillgen/educator-login.asp")
End If
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>WE WILL Generation - Curriculum - Resources</title>
<link rel="icon" href="http://www.pacer.org/bullying/favicon.ico" />
<link href="/bullying/css/bullying.css" rel="stylesheet" type="text/css" />
<link href="/bullying/wewillgen/css/loginstyle.css" rel="stylesheet" type="text/css" />



<!--#include virtual="/bullying/dynamic-head-items.html"--></head>

<body class="twocol">
<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>
 
  <!--#include virtual="/bullying/dynamic-header.html"--> 
  <!--#include virtual="/bullying/wewillgen/curriculum/logintopnav.html"--> 
  
  <script type="text/javascript">
	var navId="none";
	if (document.getElementById(navId)){
		document.getElementById(navId).className = document.getElementById(navId).className+" active";
	}
</script>
  <div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/wewillgen/">We Will Generation</a> /
  
  <div id="loginname">
  Logged in as:&nbsp;&nbsp;&nbsp;<strong><%=Session("fname")%></strong>
  </div>
  </div>
  
  <!-- ######################### NAVIGATION ################################# -->
  <div class="sidebar1"> 
    <!--#include virtual="/bullying/wewillgen/curriculum/loginnav.html"--> 
    <script type="text/javascript">
	// ID and SubId to be Orange
	var currId="evaluations";	
	var showTree = "none-sub";
	var showTree2 = "none-none-sub";
	if (document.getElementById(currId)){
document.getElementById(currId).className = "active";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "submenu") {
			if (subTrees[i].id != showTree && subTrees[i].id != showTree2) {
				subTrees[i].className = "submenuhidden";
			}
		}
	}
</script> 
  </div>
  <!-- ###################### END Navigation ############################## -->
  
  <div class="content"> 
    <h1 id="maincontent">Evaluations</h1>

<!--	<div class="downloadbox">
	  <h2>Downloads</h2>
		<ul>
			<li class="pdficonlist"><a href="#">item 1</a></li>
			<li class="wordiconlist"><a href="#">item 2</a></li>
			<li class="ppticonlist"><a href="#">item 3</a></li>
		</ul>
	</div>
 -->

	<p>Additions and improvements to the WE WILL Curriculum will be made continuously, but we need your help. By filling out these evaluations, you&rsquo;re helping to make this curriculum the best it can be and helping students learn about bullying prevention.</p>
    <p>This evaluation is for students to share their opinions about how they view bullying related issues before the WE WILL Curriculum and how the view those same issues after participating in the program. Individual responses are anonymous, but overall results will be shared. Please answer as completely as you can. Thank you for your participation, your feedback is greatly appreciated</p>
      <p><a href="http://www.surveymonkey.com/s/WWGpre-eval" target="_blank">Pre-Evaluation Student Survey</a><br />
      Please complete this evaluation before beginning the WE WILL Curriculum. This will allow us to see how the curriculum changes students&rsquo; understanding of bullying and ability to address it in their schools and communities.</p>
      <p><a href="http://www.surveymonkey.com/s/WWGpost-eval" target="_blank">Post-Evaluation Student Survey</a><br />
      Please complete this evaluation after completing the WE WILL Curriculum. The questions are the same as the pre-program evaluation in order to capture how students&rsquo; knowledge, perception, and level of empowerment have changed after participating in the curriculum.</p>
    <p>You can also download paper copies of the evaluations:<br />
              </p>
      <p><a href="/bullying/wewillgen/curriculum/pdfs/WWG_PreEval.pdf" target="_blank">Pre-Evaluation of WE WILL Generation Curriculum</a><br />
        <a href="/bullying/wewillgen/curriculum/pdfs/WWG_PostEval.pdf" target="_blank">Post-Evaluation of WE WILL Generation Curriculum</a></p> 

    <p>If you choose to complete the paper copies, please send completed evaluations to:<br />
      PACER&rsquo;s National Bullying Prevention Center<br />
      8161 Normandale Blvd.<br />
    Minneapolis, MN 55437</p>
      
      <br class="clearfloat" />
    
    <!-- end .content -->
</div>
  <!--#include virtual="/bullying/footer.html"--> 
  <!-- end .container --></div>
</body>
</html>
