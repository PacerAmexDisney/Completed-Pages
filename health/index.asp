<!--#include virtual="/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>Family-to-Family Health Information Center</title>

<meta property="og:title" content="Family-to-Family Health Information Center" />
<meta property="og:url" content="http://www.pacer.org/health/index.asp" />
<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
<meta property="og:description" content="" />

<script language="javascript" type="text/javascript">
<!--
function popUpMedia(url) {
	newwindow=window.open(url,'Audio Track','height=150,width=500');
	wleft = (screen.width - 500) / 2;
	htop = (screen.height - 150) / 2;
	newwindow.moveTo(wleft,htop);
	if (window.focus) {newwindow.focus()}
	return false;
}

// -->
</script>

</head>

<body>
<!--#include virtual="/templates/page-header-nav.asp"-->


<div id="topbar">
<div id="breadcrumb">

	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> /

</div>
	<h1>Health Information Center</h1>
</div>

<script type="text/javascript">
	// ID of the current Left Nav item
	var currId="overview";
	// current subtree that should be displayed
	var showTree = "currentPageSubtree";
	var showTree2 = "secondarySubtreeIfNeeded";
</script>

<div id="leftbar">

<!--#include virtual="/health/leftNav.htm" -->
</div>

<script type="text/javascript">
	// set current page
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
	}
	// collapse all subtrees except the one targeted above that the current page exists in.
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "treemenu") {
			if (subTrees[i].id != showTree && subTrees[i].id != showTree2) {
				subTrees[i].className = "treemenuhidden";
			}
		}
	}
</script>

<div id="maincontent">

<div id="pagecontent">

<!--BEGIN CONTENT-->
<%
'<div class="alertBox"><img src="images/mn-capital.jpg" width="200" height="154" alt="" class="centered"/>
'<h3 align="center">Minnesota State Agency Shutdown Planning Information</h3>
'<p>As many of you know the 2011 legislative session ended without a budget agreement.
'We are receiving a number of calls regarding the possibility of a July 1 shutdown of the MN Department of Human Services (DHS) and other state agencies. Many families are wondering how this might affect their benefits. We wanted to share a couple of resources to help address your concerns and to keep you up to date on the latest information.
'</p>
'<ol style="margin:0px; padding:0px 15px" class="space">
'<li><a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&amp;RevisionSelectionMethod=LatestReleased&amp;dDocName=dhs16_162264?IdcService=GET_DYNAMIC_CONVERSION&amp;RevisionSelectionMethod=LatestReleased&amp;dDocName=dhs16_162264" target="_blank">DHS  Shutdown Planning Information</a>, includes notices to clients receiving child care  assistance, adoption assistance, health care, cash assistance, food assistance  and a list of critical services that may be allowed to continue during the  possible shutdown.</li>
'<li><a href="http://www.health.state.mn.us/topics/shutdown/index.html" target="_blank">MN Department of Health (MDH) Possible Shutdown Site</a></li>
'</ol>
'</div>
%>
<%
'<div class="alertBox">
'<h2><a href="pdfs/WorkingEffectivelywithDoctors2010.pdf" target="_blank"><img src="images/workingwithdoctors.gif" width="150" height="149" style="padding: .5em;" alt="Working Effectively With Doctors" /></a></h2>
'<p>This presentation titled Working Effectively With Doctors will provide tips and tools for creating positive working relationships between families and doctors and improve health outcomes for individuals with special health care needs by:</p>
'<ul>
'	<li>Promoting collaboration on the health care team</li>
'	<li>Improving communication</li>
'	<li>Developing health care plans</li>
'	<li>Maintaining personal medical records</li>
'</ul>
'<p style="text-align:right"><a href="pdfs/WorkingEffectivelywithDoctors2010.pdf" target="_blank"><img src="../images/pdficon_small.gif" width="15" height="15" alt="pdf document" />Download presentation</a></p>
'</div>
%>


<h2>Overview</h2>

<p>PACER&rsquo;s   Health Information Center (HIC) provides a central source for families  of children and young adults with special health care needs  and disabilities to obtain support, advocacy, and information about the  health care system. Children and youth with special  health care needs (CYSHCN) are those who have or are at risk for chronic  physical, developmental, behavioral, or emotional conditions that require  health and related services of a type or amount beyond that required by  children generally. PACER promotes family-centered care and family and  professional collaboration at all levels of health care. The  HIC also has a strong commitment to promote and  support the needs of families from racially, culturally, and linguistically  diverse communities. </p>
<h2>The Center provides information to help families about:</h2>
<ul class="space">
	   <li>Working effectively with doctors and other health care professionals and providers</li>
 <li>Developing a family-centered care plan </li>
 <li>Acquiring advocacy skills to use within the health care system </li>
 <li>Developing health care summaries and plans for emergencies, home, and school</li>
 <li>Health insurance&mdash;both public and private</li>
 <li>Medical Assistance, TEFRA, parental fees, Waivers, Consumer Directed Community Supports (CDCS), and grants</li>
 <li>Supplemental Security Income (SSI) through Social Security</li>
 <li>Appeals process for insurance and government assistance programs </li>
</ul>

			<%
			Dim fDate, sql, rs, ConStr, conn
			ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
			Set conn = Server.CreateObject("ADODB.Connection")
			conn.open ConStr

			sql = "SELECT * FROM Workshops WHERE workshop_grant LIKE '%HIAC%' AND workshop_date >= DATEADD(day, -1, getdate()) AND workshop_workshop = 'yes' ORDER BY workshop_date"
			set rs = conn.execute(sql)

			if Not rs.eof then
			%>
			<div id="workshops" style="padding:10px; border:1px solid #f93; margin:5px;">
            <h2 class="nounderline">Upcoming Workshops</h2>
			<ul class="nobullet">
			<%
			do until rs.eof
			%>
			<li>

				<%
				if rs("workshop_flyer") <> "" then
				%>
					<span style="font-size: 110%;"><strong><%=rs("workshop_name")%></strong></span> - <a href="/workshops/flyer/<%=rs("workshop_flyer")%>" target="_blank">see flyer</a> <img src="/images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /><br />
				<%
				else
				%>
					<span style="font-size: 110%;"><strong><%=rs("workshop_name")%></strong></span><br />
				<%
				end if
				%>
				<%=rs("workshop_description")%><br /><strong>
				<%
				fDate=rs("workshop_date")
				Response.write FormatDateTime(fDate,1)
				%>
				</strong><br />
				<%
				if rs("workshop_directions") <> "" then
				%>
					<%=rs("workshop_time")%> (<em><a href="<%=rs("workshop_directions")%>"><%=rs("workshop_location")%></a></em>)<br />
				<%
				else
				%>
					<%=rs("workshop_time")%> (<em><%=rs("workshop_location")%></em>)<br />
		    <%
				end if
				%>


				<%
				if rs("workshop_closed") = "yes" then
				%>
					<strong>This workshop is full.</strong>
				<%
				elseif rs("workshop_closed") = "wait" then
				%>
					<strong>This workshop is full. To be added to the Wait List please call 952.838.9000</strong>
				<%
				elseif rs("workshop_link") <> "" then
				%>
					<strong><a href="/forms/workshops.asp?wksp=<%=rs("workshop_id")%>">Register for this workshop</a></strong>
				<%
				else
				%>
					<strong><a href="/forms/workshops.asp?wksp=<%=rs("workshop_id")%>">Register for this workshop</a></strong>
		    <%
				end if
				%>
				<br /><br />
			</li>
			<%
			rs.movenext
			loop
			%></ul></div><%
			rs.close
			set rs = nothing
			end if
			%>






<h2>Project Services:</h2>
<ul class="space">
	<li>Individual help by telephone and face-to-face meetings</li>
	<li>Family workshop training for health care advocacy, negotiation, strengthening relationships, and navigating managed care</li>
	<li>Collaboration with community health care professionals to provide training and information about family-centered care</li>
	<li>Collaboration with state and local agencies to provide family-centered systems of care for children and youth with special health care needs</li>
	<li>Newsletter about health care issues, recent legislation, and health resources</li>
	<li>Links with parent-to-parent support programs</li>
	<li>Online resources</li>
</ul>

<h2>Why is family involvement in the health system important?</h2>
<ul class="space">
	<li>Teamwork and collaboration among families and professionals are essential to provide quality care for an individual child or a young adult for the health system in general to run more efficiently as a whole.</li>
	<li>Parents, doctors, personal care attendants, and other professionals act as part of a team by contributing their own unique expertise and knowledge.</li>
	<li>Team members work together as colleagues. Recommendations from each team member are equally valued.</li>
	<li>While professionals can provide support and expertise, families have the ultimate responsibility of coordinating all the roles of a team, acting as caregivers, advocates, and decision makers. The expertise that families bring to systems of care is as vital as that of other team members.</li>
	<li>Each family has its own values, and family members are best able to understand the needs of their child. Contributions from other team members help a family make informed decisions that are in the best interest of their child.</li>
</ul>


<p>
For more information about the  Health Information Center, please contact <a href="mailto:linda.cherwitz@pacer.org">Linda Goldman Cherwitz</a> or <a href="mailto:wendy.ringer@pacer.org">Wendy Ringer</a>: (952)838-9000 Voice; (952)838-0190 TTY.
</p>
<hr />
<div id="IframeWrapper" style="width:530px; max-width: 90%; margin:10px auto">
<h3>MyCare <span style="font-size:.8em;">- an initiative to educate Americans about programs, benefits, and rights under the new Federal health care law.</span></h3>
<iframe style="max-width: 100%;" width="530" height="315" src="http://www.youtube.com/embed/xElgO3ck1io?rel=0" frameborder="0" allowfullscreen></iframe>
</div>


<p style="border-top: solid 1px black; text-align: left; font-style:italic">
The Health Information Center is funded in part through a grant from the Health Resources and Services Administration (HRSA), U.S. Dept. of Health and Human Services (HHS) grant #84MC00005. The contents should not be construed as the official position or policy of, nor should any endorsements be inferred by, HRSA, HHS, or the Federal Government.</p>

<%
'<p style="text-align: left; font-style:italic">Funding for PACER's Health Information Center comes in part from the Medica Foundation with its generous support of the Medical Prevention and Health Care Literacy Project for Children with Disabilities and Special Health Care Needs.</p>
%>

                    
                    <h2 class="greenBar">Additional Information</h2>
<div id="rightBar">

<div class="stayinformed" style="width: 250px; max-width: 100%; margin: 20px auto">
  <p align="center"><a href="https://www.region4genetics.org/education/families/" target="_blank"><img src="/health/images/journey-through-diagnosis.jpg" width="240" height="136" alt=""/></a></p>
<h2>Guide for families that have <br />
  child with a genetic condition</h2>
  <p>A brand new guide, The Journey Through Diagnosis, is written BY parents FOR parents from the Region 4 Genetics Collaborative. This user-friendly guide provides information and support to families who have a child with a genetic condition.  Many of the topics  are very pertinent for all families navigating the healthcare journey. </p>
  </div>
<div class="stayinformed" style="text-align:center"><img src="/health/images/iphone-chat-bubbles-240w.png" width="240" height="64" alt=""/>
<h3>Text Message Updates</h3>
                          <p>Get Health updates and reminders for important dates via Text Message!                          </p>
                          <p><a href="http://www.pacer.org/health/updates-via-text-message.asp">More Information &gt;&gt;&gt;</a></p>

</div>


<div class="stayinformed">
	<h2 class="enhanced">PACER Center&rsquo;s Dental &amp; Medical Advisory Board Members</h2>
<p class="centered"><a href="advisory-board.asp">View the Board Members</a></p>

</div><div class="stayinformed">
	<p><strong><a href="http://www.ahrq.gov/preguntas/" target="_blank">Conozca las preguntas (Know the questions)</a></strong>, a  new Spanish-language website of the  Agency for Healthcare Research and Quality (AHRQ), offers Spanish-speaking  patients tips to improve their communication with their medical providers. </p>
	<p>You can text: Preguntas to 80676 for their mobile information.</p>
</div>
<div class="stayinformed">
	<h2>Translated Overview Information with Audio files</h2>

    <div lang="hmn"><h3>Hmong</h3>
    <p>Nov yog qhov piav ua lus Hmoob me ntsis hais txog qhov chaw qhia cov xov hais txog kev noj qab haus huv rau tsev neeg.
    <a href="audio/F2FHIC-overview-hmong.mp3" target="_blank" onclick="return popUpMedia('audio/F2FHIC-overview-hmong.mp3')">
Koj muaj cuab kav nyem ntawm no thiab mloog cov lus.</a></p></div>

    <div lang="so"><h3>Somali</h3>
    <p>Xaruntan Akhbaarada iyo amuuraha la xiriira Caafimaadka  oo ay Qoysku wadaagaan, ee gobolka Minnesota, (Familily-to-Family Health  Information Center). Waa barnaamij ka mid ah barnaamijyada Hey&rsquo;adda PACER, oo  ka caawinaya qoyska habka loola shaqeeya amuuraha la xiriira caafimaadka,  ceymiska iyo dhaqaatiirta. Waana waxqabad lacag la&rsquo;aan ah.<a href="audio/F2FHIC-overview-somali.mp3" target="_blank" onclick="return popUpMedia('audio/F2FHIC-overview-somali.mp3')"
	>Fadlan halkan  riix si aad fahfaahin siyaado ah u dhageysato</a></p></div>

   <div lang="es"> <h3>Spanish</h3>
    <p>El Centro de Información de Salud de Familia a Familia (Family-to-Family   Health Information Center) es un Programa dentro de PACER Center que   ayuda a las familias a navegar a través de sistemas de salud, seguros y   trabajando con los doctores. Es un servicio gratuito para todas las   familias. <a href="http://www.pacer.org/health/audio/F2FHIC-overview-spanish.mp3" target="_blank" onclick="return popUpMedia('audio/F2FHIC-overview-spanish.mp3')"> Por favor haga un click para obtener información en audio.</a></p>
   </div>


</div>

</div>

<!--END CONTENT-->
<!--#include virtual="/templates/footer.asp"-->
