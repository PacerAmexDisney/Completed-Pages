<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/housing/organizations.asp?page=National-Housing"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="robots" content="noindex,nofollow" />

<title>Housing Project: National Resources</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/leftnavigation.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />

<script type="text/javascript" src="../css/menu.js"></script>
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

<p class="pacerinfo">
<strong>PACER Center<br />
952-838-9000</strong>
</p>
<p class="pacerinfo2">
Champions for Children with Disabilities
</p>
<p class="pacerinfo3">
<a href="http://www.pacer.org/about/howPACERhelps.asp">Learn more &gt;&gt;&gt;</a>
</p>
<p class="rightsidebarpic">
<img border="0" src="images/Horizontal-up.jpg" width="250" height="222" alt="two boys with developmental disabilities and their dog, sitting in front of their house." />
</p>
<p class="rightsidebarpic">
<img border="0" src="images/smilingwoman.jpg" width="250" height="167" alt="Woman smiling at camera" />
</p>
</div>

<div id="topbar">
<div id="breadcrumb">
<div class="printemail">
<p>
<img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>

</p>
</div>
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp">Housing Project</a> / <a href="resources.asp">Resources</a> 	/ National Resources

	<h1>Housing Project</h1>

</div>
</div>

<div id="leftbar">
<h2 style="display: none;">Housing Navigation Menu</h2>
<!--#include virtual="/housing/leftNav.html" -->
</div>
<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="nationalresources";
	var currSubId="none";
	// any Subtree that I want to Display
	var showTree = "none";
	
	if (document.getElementById(currId)){
		document.getElementById(currId).className = "page";
	}
	if (document.getElementById(currSubId)){
		document.getElementById(currSubId).className = "page";
	}
	var subTrees = document.getElementsByTagName("ul");
	for (var i = 0; i < subTrees.length; i++) {
		if (subTrees[i].className == "treemenu") {
			//Any additional subTrees that you want to skip should be added here. like this (subTrees[i] != subTree1 || subTrees[i] != subTree2)
			if (subTrees[i].id != showTree) {
				subTrees[i].className = "treemenuhidden";
			}
		}
	}
</script>

<div id="maincontent">

<div id="pagecontent">

<h2 class="nounderline" id="top">National Housing Resources</h2>


<!--BEGIN CONTENT-->

<ul class="nobullet">
	<li><a href="#national">National Rights and Legal Issues</a></li>
	<li><a href="#housingta">Housing Technical Assistance, Trainings, and Publications</a></li>
	<li><a href="#financing">Home Financing</a></li>
	<li><a href="#access">Accessibility</a></li>
	<li><a href="#nationalorgs">National Housing Organizations and Agencies</a></li>
</ul>

<h2 class="nounderline"><a name="national">National Rights and Legal Issues</a></h2>
<ul class="housingresources">
	<li>
		<strong><a href="http://www.hud.gov/groups/tenants.cfm">The U.S. Department of Housing and Urban Development (HUD) Information for Tenants</a></strong>
	</li>
	<li>
		<strong>Olmstead Resources</strong><br />
		<a href="../tatra/legislation/olmstead.asp">The Olmstead Decision</a><br />
		<a href="../tatra/legislation/olmstead_plan.asp">Olmstead Plan</a> <br />
		<a href="http://www.ilru.org/html/projects/olmstead/index.html">ILRU's Olmstead Resources</a><br />
		<a href="http://www.nlihc.org/doc/spring2002.pdf">The Olmstead Factor: Integrating Housing for People with Disabilities</a>
		<img border="0" src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /><br />
		The 1999 Supreme Court ruling in L.C. &amp; E.W. vs. Olmstead interpreted the Americans with Disabilities Act (ADA) to mean that states must provide services in the most integrated setting appropriate to the needs of qualified individuals with disabilities. The federal government has encouraged states to plan for reforms not only in the health arena but also in the areas of transportation, housing, education and other social supports to fully integrate people with disabilities into the least restrictive settings. 
	</li>
	<li>
		<strong>Housing and Civil Rights</strong><br />
		<a href="http://www.civilrights.org/resources/civilrights101/housing.html">http://www.civilrights.org/resources/civilrights101/housing.html</a><br />
		The effort to end housing discrimination -- sometimes called "the forgotten step-child of civil rights" - has been among most difficult legal battles in the civil rights movement. 
	</li>
	<li>
		<strong><a href="http://www.hud.gov/groups/tenants.cfm">Fair Housing Laws and Presidential Executive Orders</a></strong><br />
		Title VIII of the Civil Rights Act of 1968 (Fair Housing Act), as amended, prohibits discrimination in the sale, rental, and financing of dwellings, and in other housing-related transactions, based on race, color, national origin, religion, sex, familial status (including children under the age of 18 living with parents of legal custodians, pregnant women, and people securing custody of children under the age of 18), and handicap (disability).
	</li>
</ul>

<p class="backtotop"><a href="#top">^ Back to Top ^</a></p>

<h2 class="nounderline"><a name="housingta">Housing Technical Assistance, Trainings, and Publications</a></h2>
<ul class="housingresources">
	<li>
		<strong><a href="http://www.apartments.com">Apartments.com</a></strong><br />
		National, regional, and local listings of market rate apartments. Accessibility is one of the amenities by which the list can be sorted.
	</li>
	<li>
		<strong>ILRU Webcasts</strong><br />
		&quot;Affordable, Accessible, Integrated Housing: Putting the Puzzle Together When the Pieces Don't Fit: Part 1 &amp; 2&quot;, presented by Steve Gold, disability rights attorney.<br />
		<a href="http://www.ilru.org/html/training/webcasts/archive/2004/08-09-SG.html">Part 1</a> 
		|
		<a href="http://www.ilru.org/html/training/webcasts/archive/2004/08-11-SG.html">
		Part 2</a> 
	</li>
	<li>
		<strong><a href="http://www.tacinc.org/Pubs/ODpubs.htm">Opening Doors</a></strong><br />
		Opening Doors is a joint housing initiative among The Technical Assistance Collaborative (TAC), the Consortium for Citizens with Disabilities (CCD), and the Melville Charitable Trust. It is designed to provide information and technical assistance on affordable housing issues to people with disabilities, their families, advocates, and service providers across the United States.
	</li>
	<li>
		<strong><a href="http://www.stevegoldada.com">Steven Gold's Treasured Nuggets of Information</a></strong><br />
		Steven Gold's Treasured Nuggets of Information is a Web site by the foremost disability rights attorney. Topics include Housing, Medical Assistance, Nursing Homes, Education and American's with Disabilities Act.
	</li>
	<li>
		<strong><a href="http://www.tacinc.org">The Technical Assistance Collaborative</a></strong><br />
		The Technical Assistance Collaborative has a multidisciplinary professional staff that has worked extensively in the fields of affordable and supported housing and human services. Their expertise spans the full range of federal and mainstream housing programs and policies that can expand affordable housing for people with disabilities and people who are homeless.
	</li>
	<li>
		<strong><a href="http://alliance.unh.edu/aatowardahome.html">Toward a Home of One's Own: A Workshop for Families on the Journey</a></strong><br />
		This 1995 training manual was developed by people with disabilities, parents, and members of the National Home of Your Own Alliance. It was designed to assist individuals with disabilities who have been viewed as vulnerable, and their family members, with the process of planning to move out into the world and to develop an interdependent support network.
	</li>
	<li>
		<strong><a href="http://www.ncil.org">National Centers for Independent Living (NCIL)</a></strong><br />
		National Centers for Independent Living (NCIL) is the oldest cross disability, grassroots organization run by and for people with disabilities. Founded in 1982, NCIL represents over 700 organizations and individuals including: Centers for Independent Living (CILs), Statewide Independent Living Councils (SILCs), individuals with disabilities, and other organizations that advocate for the human and civil rights of people with disabilities throughout the United States.
	</li>
	<li>
 		<strong><a href="www.nhhiaccessiblehousing.com">National Handicap Institute</a></strong><br /> 
		Contact Persons: Michael J. Bjerkesett, President; Alee Thao<br />
		Phone: 651-639-9799<br />
		NHHI is a not for profit developer/owner/manager of affordable housing for low income persons with mobility impairments and for seniors.  NHHI has buildings in 11 Minneapolis/St Paul metropolitan locations and one in Mankato.  Some locations also have 24 hour attendant care services available.
	</li>
	
	<li>
		<strong><a href="http://www.qualitymall.org/main/">Qualitymall.org</a></strong><br />
		An endless source of information that focuses on person-centered supports for people with developmental disabilities. Each of the Mall stores has departments users can look through to learn about positive practices that help people with developmental disabilities live, work, and participate in their communities as well as improving the quality of their supports. <br />
		<a href="http://www.Qualitymall.org/directory/dept1.asp?deptid=22">Home 
		Ownership Section</a> 
	</li>
</ul>

<p class="backtotop"><a href="#top">^ Back to Top ^</a></p>

<h2 class="nounderline"><a name="financing">Home Financing</a></h2>
<ul class="housingresources">
	<li>
		<strong><a href="http://www.fanniemae.com">Fannie Mae</a></strong><br />
		Fannie Mae provides financial products and services that make it possible for low, moderate, and middle-income families to buy homes of their own.
	</li>
	<li>
		<strong>
		<a href="http://www.freddiemac.com/corporate/buyown/english/preparing/right_for_you/index.html">Freddie Mac</a></strong><br />
		Freddie Mac's award-winning online tutorial, Your Route to Homeownership provides easy to understand and in-depth information on all aspects of buying a home, from understanding the pros and cons of homeownership to demystifying the mortgage process. Calculators and worksheets are provided to help along the way.
	</li>
	<li>
		<strong><a href="http://www.hud.gov/offices/hsg/sfh/hcc/hccprof14.cfm">HUD's counseling list of statewide agencies</a></strong><br />
		HUD's counseling list of statewide agencies throughout the country can give you advice on buying a home, renting, defaults, foreclosures, credit issues, and reverse mortgages. Contact the agency nearest to you or call (800) 569-4287 or the local HUD office (651) 296-3353.
	</li>
	<li>
		<strong><a href="http://www.ginniemae.gov/rent_vs_buy/Rent_vs_buy.asp?subTitle=YPTH">Ginnie Mae: Your path to Home Ownership</a></strong>: Home Ownership Calculators, Buy vs. Rent, Affordability, Loan Estimator<br />
		There are many advantages to buying a home versus renting one. View these advantages in the Buy vs. Rent Comparison Chart, or view a financial comparison of buying versus renting in the Buy vs. Rent Calculator.
	</li>
	<li>
		<strong><a href="http://www.housinglink.org/howtolibrary/Category.aspx?ID=5">Housing Link</a><br />
		(Housing and Rent Subsidies: Public Housing, Housing Vouchers)</strong> 
	</li>
	<li><a href="http://www.hud.gov/offices/pih/about/index.cfm">HUD Public Housing</a></li>
</ul>

<p class="backtotop"><a href="#top">^ Back to Top ^</a></p>

<h2 class="nounderline"><a name="access">Accessibility</a></h2>
<ul class="housingresources">
	<li>
		<strong><a href="http://www.fairhousingfirst.org/">Fair Housing Accessibility FIRST</a></strong><br />
		Fair Housing Accessibility FIRST is an initiative sponsored by the U.S. Department of Housing and Urban Development designed to promote compliance with the Fair Housing Act design and construction requirements. The program offers comprehensive and detailed instruction programs, useful online web resources, and a toll-free information line for technical guidance and support. Toll-free Design and Construction Resource Center at (888) 341-7781 (V/TTY)
	</li>
	<li>
		<strong><a href="http://www.access-board.gov">United States Access Board</a></strong><br />
		A federal agency committed to accessible design whose mission is to develop and maintaining accessibility guidelines and standards under several different laws, including the Americans with Disabilities Act (ADA). This includes design requirements for facilities in the private and public sectors, transportation vehicles, telecommunications equipment, and Federal electronic and information technology.
	</li>
</ul>

<p class="backtotop"><a href="#top">^ Back to Top ^</a></p>

<h2 class="nounderline"><a name="nationalorgs">National Housing Organizations and Agencies</a></h2>
<ul class="housingresources">
	<li>
		<strong><a href="http://chance.unh.edu">Center for Housing and New Community Economics</a></strong><br />
		The Center for Housing and New Community Economics (CHANCE) provides information on ways to improve and increase access to integrated, affordable, and accessible housing. It provides information on national projects designed to assist people with disabilities to move from nursing homes into the community, and research on the personal services, financial resources, and support networks associated with achieving and maintaining successful home ownership.
	</li>
	<li>
		<strong><a href="http://www.cohousing.org">The Cohousing Association of the United States (Coho/US)</a></strong><br />
		The Cohousing Association of the United States (Coho/US) is an organization whose purpose is to promote and encourage the co-housing concept, support both individuals and groups in creating communities, provide assistance to completed groups for improving their systems for living together in community, and provide networking opportunities for those involved or interested in co-housing. They serve: seekers of co-housing communities, groups in the development stages, completed communities, co-housing professionals.
	</li>
	<li>
		<strong><a href="http://www.csh.org">Corporation for Supportive Housing</a></strong><br />
		CSH helps communities create permanent housing with services to prevent and end homelessness. 
	</li>
	<li>
		<strong><a href="http://www.naeh.org">National Alliance to End Homelessness</a></strong><br />
		The web site of the National Alliance to End Homelessness includes background, policy and practical information on ending homeless through the creation of permanent supportive housing and access to a range of interventions and support services.
	</li>
	<li>
		<strong><a href="http://www.nlihc.org/">National Low Income Housing Coalition</a></strong><br />
		The National Low Income Housing Coalition (NLIHC) web site provides information on current housing policy issues for those with the most serious housing problems, the lowest income households.
	</li>
	<li>
		<strong><a href="http://www.nationalsharedhousing.org">National Shared Housing Resource Center</a></strong>
	</li>
	<li>
		<strong><a href="http://portal.hud.gov/hudportal/HUD" target="_blank">The U.S. Department of Housing Development (HUD)</a></strong><br />
		The U.S. Department of Housing Development (HUD)'s mission is to provide a 
		decent, safe, and sanitary home and suitable living environment for 
		every American. HUD's services: providing housing assistance for 
		low-income persons; working to create, rehabilitate and maintain the 
		nation's affordable housing; enforcing the nation's fair housing laws; 
		helping the homeless; spurring economic growth in distressed 
		neighborhoods and helping local communities meet their development 
		needs. Topics include: Tips to Avoid Foreclosure, Talk to a Housing Counselor, Finding Rental Assistance, File a Fair Housing Discrimination Complaint. <a href="http://www.hud.gov/offices/fheo/disabilities">Specific information for people with disabilities</a> 
		is also available.
	</li>
</ul>

<p class="backtotop"><a href="#top">^ Back to Top ^</a></p>

</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>