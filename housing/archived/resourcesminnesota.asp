<%
Response.Status="301 Moved Permanently" 
Response.AddHeader "Location", "/housing/gettingstarted/"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Housing Project: Minnesota Resources</title>
<meta name="robots" content="noindex,nofollow" />

<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/leftnavigation.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />

<script type="text/javascript" src="../css/menu.js"></script>
<style type="text/css">
ul.nospace li {padding: 0;}
</style>

</head>

<body>
<div id="skiptocontent">
<a href="#maincontentlink">Skip to main content</a>
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
<img border="0" src="images/DandM.jpg" width="250" height="217" alt="Two women, smiling and playing cards" />
</p>
<p class="rightsidebarpic">
<img border="0" src="images/smilymotherdaughter.jpg" width="250" height="164" alt="mother and daughter, leaning on each other, smiling" />
</p>
<div class="stayinformed">
<a href="../puppets/links.asp">Specific Disability Organizations - National &amp; State</a>
</div>
</div>

<div id="topbar">
<div id="breadcrumb">
<div class="printemail">
<p>
<img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>

</p>
</div>
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / <a href="index.asp">Housing Project</a> / <a href="resources.asp">Resources</a> 	/ Minnesota Resources
	
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
	var currId="mnresources";
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

<a name="top"></a>

<h2 class="nounderline"><a name="maincontentlink">Minnesota Housing Resources</a></h2>


<!--BEGIN CONTENT-->
<ul class="nobullet" style="margin-left:0;">
	<li><a href="#rights">MN Housing Rights and Legal Issues</a></li>
    <li><a href="#foreclosure">Home Foreclosure and Eviction</a></li>
	<li><a href="#civil">Civil Rights in Human Services</a></li>
	<li><a href="#dhs">MN DHS Consumer Service Standards, Rights &amp; Protection</a></li>
	<li><a href="#guardianship">Guardianship</a></li>
	<li><a href="#eligibility">Eligibility and Funding</a>
		<ul>
			<li><a href="#dhs">MN Department of Human Services (DHS) Web Links</a></li>
			<li><a href="#socserv">Apply for social service case management in your county</a></li>
			<li><a href="#insurance">Insurance</a></li>
			<li><a href="#socsec">Social Security Online</a></li>
			<li><a href="#homefi">Home Financing</a></li>
			<li><a href="#sec8">Subsidized Housing and the Section 8 Program</a></li>
		</ul>
	</li>
	<li><a href="#housingmh">MN Housing and Mental Health</a>
		<ul>
			<li><a href="#textchange">PACER Housing Guidebook "Where Will Our Children Live When They Grow Up?" text change, <em>Funding For Mental Health Needs</em></a></li>
		</ul>
	</li>
	<li><a href="#homeless">MN Homeless Shelter Programs</a></li>
	<li><a href="#housingta">MN Housing Technical Assistance, Training and Publications</a></li>
	<li><a href="#access">Accessibility</a></li>
	<li><a href="#mndisorg">MN Disability Organizations</a></li>
	<li><a href="#mngovage">MN Government Agencies</a></li>
</ul>

<h2 class="nounderline"><a name="rights">MN Housing Rights and Legal Issues</a></h2>
<ul class="housingresources">
	<li>
		<strong><a href="http://www.mndisability.gov">Disability Minnesota: Housing</a></strong><br />
		Disability Minnesota provides a single entry point to over 100 Minnesota state agency programs, products, and services that are devoted to the range of disability issues. We also provide access to laws, statutes, and regulations in pertinent disability-related areas brought to you by a collaborative group of state agencies. 
	</li>
	<li>
		<strong><a href="http://www.humanrights.state.mn.us">Minnesota Department of Human Rights</a></strong><br />
		190 E 5th Street, Suite 700, St. Paul, MN 55101<br />
		Phone: 651-296-5663; 800-657-3704; TTY: 651-296-1283<br />
		The MN Department of Human Rights&#8217; mission is to make Minnesota discrimination free including discrimination based on disability, family status, public assistance status, sex, national origin and race. The department is a neutral state agency that investigates charges of illegal discrimination including reasonable accommodations made for people with disabilities and housing discrimination. 
	</li>
	<li>
		<strong><a href="http://www.midmnlegal.org">Mid-MN Legal Assistance (MMA)</a></strong><br />
		The oldest corporate component of MMLA &#8212;the Legal Aid Society of Minneapolis&#8212; was founded in 1913.  LASM is also the state-designated Protection and Advocacy agency for persons in Minnesota with developmental disabilities, mental illness and other disabilities.  And it is the state Client Assistance Program that protects the rights of those seeking services from the vocational rehabilitation system.
	</li>
	<li>
		<strong><a href="http://www.lawhelpmn.org/MN/index.cfm">MN Legal Services Coalition (LawHelpMN.org)</a></strong><br />
		LawHelpMN.org provides information for low-income Minnesotan's to solve civil legal problems. The Housing Link provides information on a variety of topics including 
		housing fact sheets, housing discrimination, public and subsidized housing, eviction. The Disability Link provides information on Home and Community Based Services, MA, SSI, Guardianship and Conservatorship as well as other topics.
	</li>
	<li>
		<strong><a href="http://www.lawhelp.org/documents/clusters/MN/285/English/tenantsrights.shtml">Tenants Rights in Minnesota written by MN Legal Services Coalition State Support Center</a></strong>
	</li>
	<li><strong><a href="http://www.homelinemn.org/" target="_blank">HOMELINE</a><br />
	</strong>HOME Line provides free legal,  organizing, education and advocacy services so that tenants throughout  Minnesota can solve their own rental housing problems. We work to improve  public and private policies relating to rental housing by involving affected  tenants in the process. If you are a tenant in Minnesota (Minneapolis renters  call 612-673-3003) and you are interested in your renter rights, you can reach  our Tenant Advocates for legal advice at: (612) 728-5767.&nbsp; Toll Free  Greater MN: 866-866-3546.</li>
	<li><strong><a href="http://homelinemn.org/blog/2010/03/25/house-to-vote-on-tenant-bill-of-rights-today/" target="_blank">Minnesota Tenants' Bill of Rights</a></strong><br />
	  HOME Line and Legal Services Advocacy Project advanced a Minnesota  Tenants&rsquo; Bill of Rights during the 2010 Minnesota Legislative Session. <br />
	  </li>
		<li>
		<strong><a href="http://www.mncourts.gov/district/4/?page=128">Housing Court, Hennepin County</a></strong><br />
		Phone: 612-348-5186<br />
		Housing Court was created as a specialty court to provide an accessible and efficient forum for litigants with landlord and tenant disputes.
	</li>
<li>
		<strong><a href="http://www.lawhelp.org/MN/showdocument.cfm/County/%20/City/%20/demoMode/=%201/Language/1/State/MN/TextOnly/N/ZipCode/%20/LoggedIn/0/rpc/1840100/doctype/dynamicdoc/ichannelprofileid/31476/idynamicdocid/3454/iorganizationid/4297/itopicID/262/iProblemCodeID/1840100/iChannelID/3/isubtopicid/0/iproblemcodeid/0">Housing Reasonable Accommodations</a></strong><br />
		Under federal fair housing and anti-discrimination laws, a "reasonable accommodation" is a change in rules, policies or practices that allows a person with a disability an equal opportunity to use and enjoy their housing.
	</li>
</ul>

<p class="top">
<a href="#top">^ Back to Top ^</a>
</p>
<h2 class="nounderline"><a name="foreclosure">Home Foreclosure and Eviction</a></h2>
 Fact Sheets, Booklets and other helpful resources on Foreclosure/Foreclosure Prevention Assistance and Eviction
<ul class="housingresources">
  <li><strong><a href="http://www.lawhelp.org/MN/StateChannelResults.cfm/County/%20/City/%20/demoMode/%3D%201/Language/1/State/MN/TextOnly/N/ZipCode/%20/LoggedIn/0/iSubTopicID/1/iProblemCodeID/1621200/sTopicImage/g-housing.gif/iTopicID/267/ichannelid/3/bAllState/0" target="_blank">LawHelpMN.org</a><br />
  </strong>Helping Low-income Minnesotans Solve Civil Legal Problems</li>
  <li><strong><a href="http://www.mnhousing.gov/consumers/home-owners/foreclosure/index.aspx" target="_blank">Minnesota Housing Finance Agency</a></strong><br />
-Foreclosure  Prevention</li>
  <li><strong><a href="http://www.hocmn.org/en/index.cfm" target="_blank">The Minnesota Home Ownership Center</a></strong><br />
    The Minnesota Home Ownership Center is a non-profit organization who works to  promote and advance successful homeownership in Minnesota.&nbsp;Their website  at <a href="http://www.hocmn.org/" jquery1270053268094="145">www.hocmn.org</a> provides information on the  foreclosure process in Minnesota, things of which to be aware, and access to a  network of certified Foreclosure Prevention Specialists.&nbsp;Links to  information on their website is listed below or you can call them at  651-659-9336 or 1-866-462-6466.  </li>
</ul>

<p class="top">
<a href="#top">^ Back to Top ^</a>
</p>

<h2 class="nounderline"><a name="civil">Civil Rights in Human Services</a></h2>
<ul class="housingresources">
	<li>The MN Department of Human Services works with county agencies and other providers. Together, we help eligible individuals and families meet basic human needs. To make services possible, DHS 
	<i>receives funding from federal agencies</i>.<br /><br />
	County agencies and other providers also receive federal funds.<i> They must follow federal civil rights requirements</i>. Some of these requirements include an equal opportunity policy and a procedure for handling complaints. As recipients of federal funds, they must treat all applicants and clients fairly.<br /><br />
	<strong><a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&dDocName=id_010441">What you should know about fair treatment in service delivery</a></strong>
		<ul>
			<li style="padding:0;">
			<a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&dDocName=id_010441#P11_382">Your right to fair treatment</a></li>
			<li style="padding:0;">
			<a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&dDocName=id_010441#P13_896">Your role in preventing discrimination</a></li>
			<li style="padding:0;">
			<a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&dDocName=id_010441#P17_1543">The role of county human services agencies and other providers</a></li>
			<li style="padding:0;">
			<a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&dDocName=id_010441#P19_1907">Who to contact</a></li>
			<li style="padding:0;">
			<a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&dDocName=id_010441#P29_2572">How to file a complaint</a></li>
			<li style="padding:0;">
			<a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&dDocName=id_010441#P38_3860">Important agencies</a></li>
			<li style="padding:0;">
			<a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&dDocName=id_010441#P39_5377">Civil rights laws</a></li>
		</ul>
	</li>
	<li>
	<strong><a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&dDocName=id_010441">Minnesota Department of Human Services Civil Rights </a></strong><br />
	To prevent discrimination, DHS has a <a href="pdf/MDHScivilrightsplan.pdf">civil rights plan</a>.
	<img border="0" src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /> The plan includes an equal opportunity policy and a procedure for handling complaints. The plan also identifies a contact person who you can call to speak to about civil rights matters.
	</li>
</ul>

<p class="top">
<a href="#top">^ Back to Top ^</a>
</p>

<h2 class="nounderline"><a name="dhs">DHS Consumer Service Standards, Rights &amp; Protection</a></h2>
<ul class="housingresources">
	<li>
		<strong><a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&dDocName=id_054350">DHS Licensed Programs and Services</a></strong>
		<ul style="list-style-type:none;">
			<li>
				<a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&Redirected=true&dDocName=id_003514">Laws, Rules</a><br />
				The Department of Human Services Disability Services Division is governed by many different laws and rules. This link includes a helpful pull down menu to navigate the topics of most interest to you.
			</li>
		</ul>
	</li>
	<li>
		<a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&dDocName=id_059310">Licensing Information for Developmental Disabilities/Related Conditions, MN Statutes, Chapter 245B</a><br />
		The Consolidated Standards, <strong>Minnesota Statutes, Chapter 245B</strong> govern services to persons with mental retardation or related conditions receiving services from license holders providing residential-based habilitation; day training and habilitation services for adults; supported employment; semi-independent living services; residential programs that serve more than four consumers, including intermediate care facilities for persons with mental retardation; and respite care provided outside the consumer's home for more than four consumers at the same time at a single site. 
	</li>
	<li>
		<strong><a href="https://www.revisor.leg.state.mn.us/data/revisor/statutes/2005/256B">Licensing information for Children and Adult Mental Health, MN Statutes, Chapter 256B</a></strong><br /><br />
		<a href="#housingmh">Additional information</a> provided on Housing and Mental Health Services for Children and Adults
	</li>
	<li>
		<strong><a href="http://licensinglookup.dhs.state.mn.us">DHS Licensing Information Look up</a></strong><br />
		Search for information about licensed providers by name, city, county, ZIP code, program type or license number.
	</li>
	<li>
		<strong><a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&dDocName=id_008486">What is Informed Choice?</a></strong><br />
		<strong>A consumer must be given Informed Choice.</strong> Informed choice is a voluntary decision made by a person or their legal representative after becoming familiarized with alternatives (housing and services) to:
		<ul class="nospace">
			<li>Select from a number of feasible alternatives</li>
			<li>Select an alternative that may be developed in the future</li>
			<li>Refuse any or all alternatives</li>
		</ul>
	</li>
	<li>
		<strong><a href="http://www.ombudmhmr.state.mn.us/cctrc/ptbilofr.htm">What is the Patient's Bill of Rights (MN Statute 144.651)</a></strong><br />
		A summary of the Patients and Residents of Health Care Facilities Bill of Rights covers all patients or residents in Minnesota health care facilities.
	</li>
	<li>
		<strong><a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&dDocName=id_059415">Consumer Rights 245B.04</a></strong><br />
		<strong>Service-related rights<br />
		A consumer's service-related rights include the right to: </strong>
		<ul class="nospace">
			<li>Refuse or terminate services and be informed of the consequences of refusing or terminating services;  </li>
			<li>Know, in advance, limits to the services available from the license holder;  </li>
			<li>Know conditions and terms governing the provision of services, including those related to initiation and termination;  </li>
			<li>Know what the charges are for services, regardless of who will be paying for the services, and be notified upon request of changes in those charges;  </li>
			<li>Know, in advance, whether services are covered by insurance, government funding, or other sources, and be told of any charges the consumer or other private party may have to pay; and  </li>
			<li>Receive licensed services from individuals who are competent and trained, who have professional certification or licensure, as required, and who meet additional qualifications identified in the individual service plan. </li>
		</ul>
		<strong>Protection-related rights<br />
		The consumer's protection-related rights include the right to:</strong>
		<ul class="nospace">
			<li>Have personal, financial, services, and medical information kept private, and be advised of the license holder's policies and procedures regarding disclosure of such information;  </li>
			<li>Access records and recorded information;  </li>
			<li>Be free from maltreatment;  </li>
			<li>Be treated with courtesy and respect for the consumer's individuality, mode of communication, and culture, and receive respectful treatment of the consumer's property;  </li>
			<li>Voice grievances, know the contact persons responsible for addressing problems and how to contact those persons;  </li>
			<li>Any procedures for grievance or complaint resolution and the right to appeal under section 256.045 (Administrative and Judicial Review of Human Service Matters);  </li>
			<li>Know the name and address of the state, county, or advocacy agency to contact for additional information or assistance;  </li>
			<li>Assert these rights personally, or have them asserted by the consumer's family or legal representative, without retaliation;  </li>
			<li>Give or withhold written informed consent to participate in any research or experimental treatment;  </li>
			<li>Have daily, private access to and use of a non coin-operated telephone for local calls and long-distance calls made collect or paid for by the resident;  </li>
			<li>Receive and send uncensored, unopened mail;  </li>
			<li>Martial privacy for visits with the consumer's spouse and, if both are residents of the site, the right to share a bedroom and bed;  </li>
			<li>Associate with other persons of the consumer's choice;  </li>
			<li>Personal privacy; and  </li>
			<li>Engage in chosen activities.</li>
		</ul>
	</li>
	<li>
		<strong><a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&dDocName=id_059416">Consumer Protection 245B.05</a></strong><br />
		<strong>Environment:<br />
		Sub. 1 The license holder must:</strong>
		<ul>
			<li>Ensure that services are provided in a safe and hazard-free environment when the license holder is the owner, lessor, or tenant of the service site. All other license holders shall inform the consumer or the consumer's legal representative and case manager about any environmental safety concerns in writing;  </li>
			<li>Lock doors only to protect the safety of consumers and not as a substitute for staff supervision or interactions with consumers;  </li>
			<li>Follow procedures that minimize the consumer's health risk from communicable diseases; and  </li>
			<li>Maintain equipment, vehicles, supplies, and materials owned or leased by the license holder in good condition</li>
		</ul>
		<strong><a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&dDocName=id_059418#P14_385">Consumer Health 245B.06</a><br />
		Subd. 5  The license holder is responsible for meeting the health service needs assigned to the license holder in the individual service plan</strong> and for bringing health needs as discovered by the license holder promptly to the attention of the consumer, the consumer's legal representative, and the case manager.<br /><br />
		<strong>Subd. 7. Reporting incidents.</strong>(a) The license holder must maintain information about and report incidents under section 245B.02, subdivision 10, clauses (1) to (7), to the consumer's legal representative, other licensed caregiver, if any, and case manager within 24 hours of the occurrence, or within 24 hours of receipt of the information unless the incident has been reported by another license holder. An Incident under section 245B.02, subdivision 10, clause (8), must be reported as required under paragraph (c) unless the incident has been reported by another license holder. <br /><br />
		<strong>What are the reporting requirements for "incidents?"</strong><br />
		The following list includes the various situations that meet the definition of &#8220;incident&#8221; according to Minnesota Statutes, section 245B.02, subdivision 10, and identifies the parties who must be notified, as required by the consolidated standards. For other reporting requirements refer to DHS website table under this link: <em>&#8220;Who must be notified within 24 hours&#8221;:</em>
		<ul class="nospace">
			<li>Serious injury as determined by section 245.91, subdivision 6</li>
			<li>A consumer's death</li>
			<li>Any medical emergencies, unexpected serious illnesses, or accidents that require physician treatment or hospitalization</li>
			<li>A consumer's unauthorized absence</li>
			<li>Fires</li>
			<li>Circumstances involving a law enforcement agency</li>
			<li>Physical aggression by a consumer against another consumer that causes physical pain, injury, or persistent emotional distress</li>
			<li>Any sexual activity between consumers involving force; or Coercion as defined under section 609.341, subdivisions 3 and 14</li>
			<li>A report of child or vulnerable adult maltreatment</li>
		</ul>
		(b) When the incident involves more than one consumer, the license holder must not disclose personally identifiable information about any other consumer when making the report to each consumer&#8217;s legal representative, other licensed caregiver, if any, and case manager unless the license holder has the consent of a consumer or a consumer&#8217;s legal representative. <br /><br />
		(c) Within 24 hours of reporting maltreatment as required under section 626.556 or 626.557, the license holder must inform the consumer&#8217;s legal representative and case manager of the report unless there is reason to believe that the legal representative or case manager is involved in the suspected maltreatment. The information the license holder must disclose is the nature of the activity or occurrence reported, the agency that receives the report, and the telephone number of the department of human services licensing division. <br /><br />
		(d) Death or serious injury of the consumer must also be reported to the department of human services licensing division and the ombudsman, as required under sections 245.91 and 245.94, subdivision 2a Ombudsman for Mental Health and Mental Retardation.  
	</li>
	<li>
		<strong><a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&dDocName=id_059418#P14_385">Service Standards for Providers: Outcome-based Services 245B.06</a></strong>
		<ul class="nospace">
			<li>The license holder must provide outcome-based services in response to the consumer's identified needs as specified in the individual service plan. </li>
			<li>Services must be based on the needs and preferences of the consumer and the consumer's personal goals and be consistent with the principles of least restrictive environment, self-determination, and consistent with: 
				<ul style="list-style-type: none;">
					<li>(1) The recognition of each consumer's history, dignity, and cultural background; </li>
					<li>(2) The affirmation and protection of each consumer's civil and legal rights; </li>
					<li>(3) The provision of services and supports for each consumer which: 
						<ul class="nospace">
							<li>Promote community inclusion and self-sufficiency; </li>
							<li>Provide services in the least restrictive environment; </li>
							<li>Promote social relationships, natural supports, and participation in community life; </li>
							<li>Allow for a balance between safety and opportunities; and </li>
							<li>Provide opportunities for the development and exercise of age-appropriate skills, decision making and choice, personal advocacy, and communication; and </li>
							<li>The provision of services and supports for families which address the needs of the consumer in the context of the family and support family self-sufficiency. </li>
						</ul>
					</li>
				</ul>
			</li>
		</ul>
	</li>
	<li>
		<strong><a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&dDocName=id_059418#P1401_50252">What is a Risk Management Plan and why is it required?</a></strong><br />
		The risk management plan is a written document that identifies area of vulnerability for a consumer and the plans staff must follow to protect the consumer in these areas. There are two processes that must be completed when developing a Risk Management Plan. First, an assessment of the consumer&#8217;s vulnerability must be conducted and then plans to minimize any identified areas of risk must be written.<br /><br />
		The requirement for the Risk Management Plan is found in Minnesota Statutes, section 245B.06, subdivision 2 in the Consolidated Standards.<br />
		<strong>An adult individual&#8217;s susceptibility to:</strong>
		<ul class="nospace">
			<li>Physical Abuse</li>
			<li>Emotional Abuse</li>
			<li>Sexual Abuse</li>
			<li>Financial Exploitation</li>
			<li>Self-abuse</li>
		</ul>
		<strong>A Minor individual&#8217;s susceptibility to:</strong>
		<ul class="nospace">
			<li>Sexual Abuse</li>
			<li>Physical Abuse</li>
			<li>Self Abuse</li>
		</ul>
		<strong>An individual&#8217;s health needs:</strong>
		<ul class="nospace">
			<li>Considering a person&#8217;s physical disabilities</li>
			<li>Allergies</li>
			<li>Sensory impairments</li>
			<li>Seizures</li>
			<li>Diet</li>
			<li>Need for medications</li>
			<li>Ability to obtain medical treatment</li>
		</ul>
		<strong>An individual&#8217;s safety needs:</strong>
		<ul class="nospace">
			<li>The person&#8217;s ability to take reasonable safety precautions</li>
			<li>Community survival skills</li>
			<li>Water survival skills</li>
			<li>Ability to seek assistance or provide medical care</li>
			<li>Access to toxic substances or dangerous items</li>
			<li>Environmental Issues</li>
			<li>Consider the program&#8217;s location in a particular neighborhood or community</li>
			<li>Type of grounds and terrain surrounding the building</li>
			<li>Individual&#8217;s ability to respond to weather-related conditions</li>
			<li>Open locked doors</li>
			<li>Remain alone in any environment</li>
		</ul>
		<strong>An Individual&#8217;s behavior:</strong>
		<ul class="nospace">
			<li>Behaviors that may increase the likelihood of physical aggression between individuals</li>
			<li>Behaviors that may increase the likelihood of sexual activity between individuals involving force or coercion (as defined in 245B.02, Subd 10, clauses (6) and (7) When assessing vulnerability, only consider the individual&#8217;s skills and abilities, independent of staffing patterns, supervision plans, the environment or other situational elements.</li>
		</ul>
		<br /><em>Plans must include specific actions a staff person will take to protect the consumer and minimize risks for the identified vulnerability areas. The specific actions must include proactive measures being taken, training being provided, or a detailed description of actions a staff person will take when intervention is necessary.</em>
	</li>
	<li>
		<strong><a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&amp;RevisionSelectionMethod=LatestReleased&amp;dDocName=id_005710">Adult Protective Services Vulnerable Adults Act</a></strong><br />
		Contact: Jennifer Kirchen or Deb Siebenaler<br />
		Phone: 651-431-2609 or 1-800-882-6262<br />
		The Adult Protective Services unit is a consultant for Minnesota's Vulnerable Adult Act [Minnesota Statute Section 626.557 (1995)]. In addition to educating the public about maltreatment of vulnerable adults, Adult Protective Services consults with local agencies, including counties and law enforcement agencies.
	</li>
	<li>
		<strong><a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&amp;RevisionSelectionMethod=LatestReleased&amp;dDocName=id_000269">Ombudsman</a></strong><br />
		Phone: 651-431-2555 or 1-800-657-3591 TDDTTY-711<br />
		An ombudsman is an independent consumer advocate who handles complaints concerning the health, safety, welfare and rights of long-term care consumers. The Ombudsman for Older Minnesotans works with consumers, citizens, nursing homes, hospitals, home care and social service agencies and public agencies to enhance the quality of life and services for individuals receiving health care and supportive services at home, in hospitals, nursing homes and other community settings such as housing with services (assisted living), adult foster care and adult day centers. The office also works to enhance the quality of life and services for consumers by advocating for reform in the health care and social services delivery systems through changes in state and federal law and administrative policy.
	</li>
	<li>
		<strong><a href="http://www.ombudmhmr.state.mn.us/regional/images/regionalmapwithregionalombudsman.pdf">Ombudsman Regional Map</a></strong> <img border="0" src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" />
	</li>
	<li>
		<strong><a href="http://www.dhs.state.mn.us/main/groups/county_access/documents/pub/dhs_id_017409.pdf">Regional Resource Specialists</a>
		<img border="0" src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /></strong><br />
		Call: 1-800-747-5484 or 651-431-2400<br />
		Technical assistance and questions about home care, the CAC, CADI, MR/RC and TBI waivers and SILS (Semi-independent living services) to counties and the public. Call: 1.800.657.3739 (747-5484) or 651.431.2670 (2400)
	</li>
</ul>

<p class="top">
<a href="#top">^ Back to Top ^</a>
</p>

<h2 class="nounderline"><a name="guardianship">Guardianship</a></h2>
<ul class="housingresources">
	<li>
		<strong><a href="http://www.lawhelpmn.org/MN/StateChannelResults.cfm/County/%20/City/%20/demoMode/=%201/Language/1/State/MN/TextOnly/N/ZipCode/%20/LoggedIn/0/iSubTopicID/2/iProblemCodeID/1330000/sTopicImage/g-disability.gif/iTopicID/262/ichannelid/3/bAllState/0">Guardianship</a></strong><br />
		Guardianships are court-ordered protective arrangements whereby a court -appointed guardian agent manages the personal life affairs, as needed, for a ward, who has been proven to be an incapacitated person unable to manage their own certain life affairs.
	</li>
	<li>
		<strong><a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&amp;RevisionSelectionMethod=LatestReleased&amp;dDocName=id_008482">DHS Guardianship definitions and laws</a></strong>
	</li>
</ul>

<p class="top">
<a href="#top">^ Back to Top ^</a>
</p>

<h2 class="nounderline"><a name="eligibility">Eligibility and Funding</a></h2>
<ul class="housingresources">
	<li>
		<h3><a name="dhs"></a>MN Department of Human Services (DHS) Web Links</h3>
		<ul class="nobullet">
			<li>
				<strong><a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&Redirected=true&dDocName=id_000083">DHS Disability Services Page</a></strong><br />
				The Minnesota Department of Human Services Disability Services Division manages publicly funded programs that support people with a variety of disabilities, including developmental disabilities, chronic medical conditions, acquired or traumatic brain injuries and physical disabilities.
			</li>
			<li>
				<strong><a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&amp;RevisionSelectionMethod=LatestReleased&amp;dDocName=id_000810">Disability Services Program Manual</a></strong> 
			</li>
			<li>
				<strong>
				<a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&amp;RevisionSelectionMethod=LatestReleased&amp;dDocName=id_003726">MN Home and Community Based Waivers</a></strong>                 
			</li>
			<li>
				<a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&dDocName=id_008995">MHCP Provider Manual &#8212; HCBS Waivered Services (Chapter 26)</a><br />
				HCBS waiver programs are Minnesota Health Care Program (MHCP) services offered through the Minnesota Department of Human Services (DHS). The purpose of the HCBS Waiver Programs is to promote community living and independence, based on the individual needs and choices of the recipient, through providing various services or additional services beyond what is otherwise available through MA. DHS uses both Medical Assistance (MA) and state funds to provide services and supports for people to live in their homes, or a community setting, as an alternative to a hospital, intermediate care facility for recipients with mental retardation or related conditions (ICF/MR), or nursing facility (NF) care.
			</li>
		</ul>
	</li>
	<li>
		<h3><a name="socserv"></a>Apply for social service case management in your county</h3>
		<ul class="nobullet">
			<li>
				<a href="http://www.state.mn.us/portal/mn/jsp/content.do?az_type=description&amp;subchannel=-536879913&amp;programid=536879800&amp;sc3=null&amp;sc2=null&amp;id=-8494&amp;agency=NorthStar">Find General Information on Your County</a></li>
			<li>
				<a href="http://edocs.dhs.state.mn.us/lfserver/Legacy/DM-0005-ENG">Find Your County Social Services Department</a> <img border="0" src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" />
			</li>
			<li>
				<strong>Counties in the metro area are: Hennepin, Dakota, Ramsey, Carver/Scott</strong><br />
				Application for case management for a social worker in Hennepin County 
				call:<br />
				Development and Physical Disabilities: 612-348-4500<br />
				Mental Health: 612-348-4111<br />
				<a href="mailto:CFAS.Frontdoor.Screener@co.hennepin.mn.us">CFAS.Frontdoor.Screener@co.hennepin.mn.us</a>  
			</li>
		</ul>
	</li>
	<li>
		<h3><a name="insurance"></a>Insurance</h3>
		<ul class="nobullet">
			<li>
				<strong><a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&amp;RevisionSelectionMethod=LatestReleased&amp;Redirected=true&amp;dDocName=id_006254">MN HealthCare Programs: Eligibility for Medical Assistance</a></strong><br />
			</li>
		</ul>
	</li>
	<li>
		<h3><a name="socsec"></a>Social Security Online</h3>
		<ul class="nobullet">
			<li>
				<strong><a href="http://www.ssa.gov/disability/index.htm">Benefits for People with Disabilities - SSI and SSDI</a></strong>
			</li>
		</ul>
	</li>
	<li>
		<h3><a name="homefi"></a>Home Financing</h3>
		<ul class="nobullet">
			<li>
				<strong><a href="http://www.mnhousing.gov/consumers/index.aspx">MHFA Home Mortgage Loan Programs</a></strong> 
			</li>
			<li>
				<a href="http://www.mnhousing.gov/consumers/home-owners/HomeImprovementLoans/index.aspx">Home Improvement Loans</a>
			</li>
			<li>
				<strong><a href="http://www.mhfa.state.mn.us">Minnesota Housing Finance Agency</a></strong><br />
				Contact Person: Charles Callendar<br />
				Phone: 651-296-8843<br />
				Email: <a href="mailto:charles.callendar@state.mn.us">charles.callendar@state.mn.us</a><br />
				Minnesota Housing Finance Agency provides assistance to first home or existing homeowners. It helps build and fix up affordable apartments, single family homes, shelters and supportive housing and preserves the stock of federally assisted rental housing. 
			</li>
		</ul>
	</li>
	<li>
		<h3><a name="sec8"></a>Subsidized Housing and the Section 8 Program</h3>
		<ul class="nobullet">
			<li>
				<a href="http://www.housinglink.org/Basic_Housing_Info.htm">The "Big 3" Programs</a>: Public Housing, Project-Based Section 8 Housing, Section 8 Housing Choice Vouchers
			</li>
			<li>
				<strong><em><a href="http://www.tacinc.org/Docs/HH/Sect8_2ndEd.pdf">Section 8 Made Simple: A Guide To The Housing Choice Voucher Program</a>
				<img border="0" src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /></em></strong> offers comprehensive information on the Section 8  HCVP, including updated information on the Homeownership Program. 
			</li>
			<li>
				<a href="http://www.tacinc.org/HH/Program_Policy/Section8HCVP.htm">The Section 8 Housing Choice Voucher program (Section 8 HCVP)</a> is one of the most successful federal housing programs funded by the U.S. Department of Housing and Urban Development (HUD). The program assists low-income families, the elderly, and people with disabilities so that they may live in decent, safe, and sanitary housing in the community. Eligible participants receive a subsidy, which they can use in the private rental market, provided the unit meets the standards set by HUD. 
			</li>
			<li>
				<a href="http://www.hud.gov/offices/pih/publications/studentruleqa.pdf">HUD Section 8 Student Restrictions</a> <img border="0" src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" />
			</li>
			<li>
				<a href="http://www.hud.gov/utilities/intercept.cfm?/offices/pih/publications/notices/08/pih2008-13.pdf">HUD issues PIH Notice 2008-13 on March 10, 2008 
				</a>
				<img border="0" src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /><a href="http://www.hud.gov/utilities/intercept.cfm?/offices/pih/publications/notices/08/pih2008-13.pdf">
				</a>that provided instructions for Public Housing Agencies (PHAs) on how to process requests for exceptions payment standards for people with disabilities as a reasonable accommodation in the Section 8 Housing Choice Voucher program. This Notice is the most detailed information provided by HUD to date on how to deal with these requests and is a valuable tool for the disability community in ensuring that people with disabilities are able to access units which meet their needs.
			</li>
			<li>
				<strong><a href="http://www.housinglink.org">Housing Link</a></strong><br />
				Phone: 612-522-2500<br />
				Email:<a href="mailto:info@housinglink.org">info@housinglink.org</a><br />
				HousingLink is a nonprofit organization serving as a primary affordable housing information resource for people and organizations looking to understand, find, and market affordable and accessible housing in Minnesota. Resources to assist housing seekers include tools to understand affordable housing, searchable listings of affordable rental housing (hList), and waiting list information. HousingLink also provides information about:
				<ul>
					<li style="padding: 0; margin: 0;">Units with accessibility features in hList</li>
					<li style="padding: 0; margin: 0;">Accessibility in the Housing How-to Library </li>
					<li style="padding: 0; margin: 0;">Housing authority waiting lists for people with accessibility needs when they are open.</li>
				</ul>
			</li>
			<li>
				<strong>Housing Redevelopment Authorities that oversee Public Housing and the Section 8 Voucher program</strong><br />
				In order to get a Section 8 Housing ChoiceVoucher, you need to apply at a housing authority serving the area where you live or where you would like to live.
				<ul class="nobullet">
					<li>
						<strong><a href="http://www.metrocouncil.org/housing/housing.htm">Bloomington Housing and Redevelopment Authority (Bloomington HRA)</a></strong> 
					</li>
					<li>
						<strong><a href="http://www.hra.carver.mn.us/">Carver County Community Development Authority</a></strong>     
					</li>
					<li>
						<strong><a href="http://www.dakotacda.org">Dakota County Community Development Agency (Dakota CDA)</a></strong>       
					</li>
					<li>
						<strong><a href="http://www.metrocouncil.org/housing/housing.htm">Metro Housing and Redevelopment Authority (Metro HRA)</a></strong>   
					</li>
					<li>
						<strong><a href="http://www.mphaonline.org">Minneapolis Public Housing Authority (MPHA)</a></strong>       
					</li>
					<li>
						<strong><a href="http://www2.ci.plymouth.mn.us/servlet/page?_pageid=131&_dad=cop&_schema=PORTAL30&_type=site&_fsiteid=85&_fid=10305&_fnavbarid=10695&_fnavbarsiteid=85&_fedit=0&_fmode=2&_fdisplaymode=1&_fcalledfrom=1&_fdisplayurl">Plymouth Housing and Redevelopment Authority</a></strong> 
					</li>
					<li>
						<strong><a href="http://www.stpaulpha.org">Public Housing Agency of Saint Paul (Saint Paul PHA)</a></strong>   
					</li>
					<li>
						<strong><a href="http://www.cityofrichfield.org/officials/Commissions/Housingredevelopment.htm">Richfield Housing and Redevelopment Authority</a></strong>
					</li>
					<li>
						<strong><a href="http://www.housinglink.org/section8/104.html">Scott County Community Development Agency</a></strong>   
					</li>
					<li>
						<strong><a href="http://www.ssphra.org">South Saint Paul Housing and Redevelopment Authority (South Saint Paul HRA)</a></strong>     
					</li>
					<li>
						<strong><a href="http://www.stlouispark.org/housing_authority.htm">St. Louis Park Housing Authority</a></strong> 
					</li>
					<li>
						<strong><a href="http://www.wchra.com">Washington County Housing and Redevelopment Authority (Washington County HRA)</a></strong>
					</li>
				</ul>
			</li>
		</ul>
	</li>
</ul>

<p class="top">
<a href="#top">^ Back to Top ^</a>
</p>

<h2 class="nounderline"><a name="housingmh">MN Housing and Mental Health</a></h2>
<ul class="housingresources">
	<li>
		<a name="textchange"></a><strong>Funding for mental health needs</strong><br />
		<em>Text change:</em> Page 19, 20 for PACER Housing Guidebook "Where Will Our Children Live When They Grow Up?"<br /><br />
		The DHS Mental Health Division works to ensure that programs and services are available throughout Minnesota. The state does not provide direct services to people with mental health needs. However, DHS Mental Health does provide state and federal funding for mental health treatment.<br /><br />
		In Minnesota, the county is responsible for providing publicly funded mental health services with federal, state, and county funding. In many parts of the state, counties contract with providers to deliver mental health services. A person who qualifies under the Severe and Persistent Mental Illness (SPMI) label (Rule 79) qualifies for supports and services similar to the supports and services an individual would receive if he or she were qualified under the developmental disabilities category. State-operated services include community-based programs serving people with mental illness, developmental disabilities (dual diagnosis), chemical dependency, and traumatic brain injury.<br /><br />
		State-operated services include community-based programs serving people with mental illness, developmental disabilities (dual diagnosis), chemical dependency, and traumatic brain injury. Intensive residential treatment services (IRTS) are time-limited mental health services provided in a residential setting to recipients in need of more restrictive settings (versus community settings) and at risk of significant functional deterioration if they do not receive these services. IRTS are designed to develop and enhance psychiatric stability, personal and emotional adjustment, self-sufficiency, and skills to live in a more independent setting.<br /><br />
		A summary of the public mental health system in Minnesota is provided in the report: 
		<em>The Publicly-funded Adult Mental Health System</em>. Go to 
		<a href="http://www.dhs.state.mn.us">DHS web site</a>. Click on Disabilities>Adult Mental Health> The Publicly-funded Adult Mental Health System. 
	</li>
	<li>
		<strong><a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&amp;RevisionSelectionMethod=LatestReleased&amp;dDocName=id_009687">Housing and Children's Mental Health Services</a></strong><br />
		Children's Mental Health staff help children and adolescents with severe emotional disturbance. They work with counties and Children's Mental Health Collaboratives to establish a comprehensive, integrated, and accountable mental health delivery system that meets the mental health needs of children and youth and helps people become as self-sufficient as possible.
	</li>
	<li>
		<strong><a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&Redirected=true&dDocName=id_003494">Housing and Adult Mental Health Services</a></strong><br />
		Information on predictors and symptoms of mental disorders, where mental health services are available in the county and how to access the services. In Minnesota, the county is responsible for providing public mental health services. <a href="http://edocs.dhs.state.mn.us/lfserver/Legacy/DM-0005-ENG">Contact your county</a> for more information about education and prevention services. Crisis phone numbers are listed for each county.
	</li>
	<li>
		<strong><a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&amp;RevisionSelectionMethod=LatestReleased&amp;dDocName=id_058037">MHCP Provider Manual - Mental Health Services Overview (Chapter 16)</a></strong>      
	</li>
	<li>
		<strong>
		<a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&amp;RevisionSelectionMethod=LatestReleased&amp;Redirected=true&amp;dDocName=id_004956">ARHMS - Adult Rehabilitative Mental Health Services</a></strong><br />
		Adult Rehabilitative Mental Health Services (ARMHS) are mental health services which are rehabilitative and enable the recipient to develop and enhance psychiatric stability, social competencies, personal and emotional adjustment, and independent living and community skills, when these abilities are impaired by the symptoms of mental illness.
	</li>
</ul>

<p class="top">
<a href="#top">^ Back to Top ^</a>
</p>

<h2 class="nounderline"><a name="homeless">MN Homeless Shelter Programs</a></h2>
<ul class="housingresources">
	<li>
		<strong>
		<a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&amp;RevisionSelectionMethod=LatestReleased&amp;Redirected=true&amp;dDocName=id_002552">Homeless Shelter Programs</a></strong><br />
		Homeless Programs receive funding from the U.S. Department of Housing and Urban Development and the State of Minnesota. Funds are awarded to local service providers through a biennial request for proposal process. Eligible service providers include transitional housing programs, Community Action Agencies, Indian Tribal Governments, local governments, shelters, non-profit service providers, and statewide migrant farm-workers&#8217; organizations.
	</li>
</ul>

<p class="top">
<a href="#top">^ Back to Top ^</a>
</p>

<h2 class="nounderline"><a name="housingta">MN Housing Technical Assistance, Training, and Publications</a></h2>
<ul class="housingresources">
	
	<li>
		<strong><a href="http://www.arcgreatertwincities.org/" target="_blank">Arc Greater Twin Cities</a></strong><br />
		Phone: 952-920-0855<br />
		Email: <a href="mailto:info@arcgreatertwincities.org" title="mailto:info@arcgreatertwincities.org blocked::mailto:info@arcgreatertwincities.org"><strong>info@arcgreatertwincities.org</strong></a><br />
		Arc Greater Twin Cities is an advocacy  organization supporting persons with intellectual and related developmental  disabilities across the lifespan. The core services of Arc include information  and assistance, individual advocacy, educational workshops, networking groups,  sibling programs, self-advocacy training and public policy networks for change.
	</li>

	<li>
		<strong><a href="http://www.mnarc.nonprofitoffice.com/index.asp?Type=B_BASIC&amp;SEC={2E568468-5FD9-4CD9-A383-D874015A7B3E}" target="_blank">The Arc of MN Housing Access Services Program</a></strong><br />
		Contact Persons: Scott Schifsky, Housing Director<br />
		Phone: 651-523-0823, ext. 102<br />
		Email: <a href="mailto:scotts@arcmn.org">scotts@arcmn.org</a><br />
		The Arc of Minnesota in partnership with the Minnesota Department of Human Services is providing a Housing Access Services Program for adult Minnesotans with disabilities who have been assessed and determined eligible for Minnesota Medicaid home care or waiver services and who want to move to homes of their own. Services include: looking for housing, assisting with rental and lease agreements, meetings with landlords/property staff, assisting with applications for publicly financed housing, household budget development and assisting with related household matters.
	</li>
	
	<li>
		<strong><a href="http://www.mnarc.nonprofitoffice.com/index.asp?Type=B_BASIC&amp;SEC={03B4127C-DBB7-46FC-AD7B-21AD6A38EC2A}" target="_blank">The ARC of MN Master Pooled Trust Program</a></strong><br />
		Contact Persons: Dennis Collins, Master Pooled Trust Director<br />
		Phone: 651-523-0879, ext. 111<br />
		Email: <a href="mailto:dennisc@arcmn.org">dennisc@arcmn.org</a><br />
		The  Arc Master Pooled Trusts offer the ability for parents (family or others) of a  person with a disability to set aside money (now or in the future) to  supplement that person&rsquo;s quality of life generally to be used after parents  have passed away or are unable to care for their loved ones any longer.&nbsp; These funds do not count as assets of the  person with the disability, and therefore do not jeopardize their governmental  benefits (SSI, MA, etc). The  Arc trust offers the security and confidence parents (and others) want for  their loved one&rsquo;s future.&nbsp; Arc manages  the trust and oversees the financial management of the pooled funds.&nbsp; The program is family friendly, affordable  and reliable.
	</li>

	
	<li>
		<strong><a href="http://www.arrm.org" target="_blank">The Association of Residential Resources in Minnesota</a></strong><br />
		Contact Person: Bruce Nelson, Executive Director<br />
		Phone: 651-291-1086<br />
		Email: <a href="mailto:bnelson@arrm.org">bnelson@arrm.org</a><br />
		The Association of Residential Resources in Minnesota (ARRM) is a trade association representing 140 Minnesota providers who support people with disabilities. ARRM's mission is to lead the advancement of community-based services that support people with disabilities in their pursuit of meaningful lives. 
	</li>
	<li>
		<strong><a href="http://www.courage.org" target="_blank">Courage Center</a></strong><br />
		Contact Person: Vicki McEvoy, Administrator<br />
		Phone: 763-520-0262<br />
		Email: <a href="mailto:vicki.mcevoy@couragecenter.org" title="mailto:vicki.mcevoy@couragecenter.org">vicki.mcevoy@couragecenter.org</a><br />
		Courage Center provides a supportive, challenging place to live, temporarily. Licensed as a skilled nursing facility, most participants move on to a variety of community living situations. The state-of-the-art facility combines a welcoming, healing environment with the latest technology and assisted technology. Courage Transitional Rehabilitation Program serves participants with spinal cord injuries, traumatic brain injuries, congenital conditions and chronic pain. The average participant age is 35. Courage Center is a non-profit rehabilitation and resource center for people with physical disabilities, brain injuries, speech or vision impairments, or hearing loss. Headquartered in Minneapolis, Courage Center offers services to people of all ages and abilities. 
	</li>
	<li>
		<strong><a href="http://www.semcil.org/dll.html">Disability Linkage Line</a></strong><br />
		Phone: 866-333-2466<br />
		Disability Linkage Line is a service for Minnesotans with disabilities, chronic illness, family members and service providers. Support provided for individual issues. 
		All services are free.  
	</li>
	<li>
		<strong><a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&dDocName=id_005667">DHS Minnesota's Housing Resource Toolbox</a></strong><br />
		DHS Minnesota's Housing Resource Toolbox is a comprehensive resource for housing and service options, affordable housing programs, searchable databases for locating housing, and information to help people stay in their own home. Information is categorized by three user groups: individuals and families, counties, and providers.
	</li>
	<li>
		<strong><a href="http://www.mndisability.gov">Disability Minnesota: Housing</a></strong><br />
		Disability MN provides a single entry point to over 100 Minnesota state agency programs, products, and services that are devoted to the range of disability issues. Provided are access to laws, statutes, and regulations in pertinent disability-related areas. Click on link to Housing.
	</li>
	<li>
		<strong><a href="../tatra/resources/housing.asp">Finding Housing Takes Perseverance, Creativity</a></strong><br />
		PACER Center and Exceptional Parent Magazine article July 2007
	</li>
	<li>
		<strong><a href="http://www.rtc.umn.edu/guide/index.html">A Guidebook on Consumer Controlled Housing for Persons with Developmental Disabilities</a></strong><br />
		A Guidebook on Consumer Controlled Housing for Persons with Developmental Disabilities outlines some of the options available to people interested in creating consumer controlled housing arrangements. Consumer controlled housing - housing arranged with the needs and preferences of the consumer in the forefront, rather than the needs and preferences of the service provider or service funder, describes major planning considerations, housing options, supportive services and their funding, and available resources. Included are a number of stories shared by people with developmental disabilities and their families that illustrate how they created housing arrangements and supports that allow them to control their own housing.
	</li>
	<li>
		<strong>
		<a href="http://www.co.hennepin.mn.us/portal/site/HCInternet/menuitem.77d27cbcd42457649bfa04a6c8c06498/?vgnextoid=afcabe2f09b7c010VgnVCM1000000f094689RCRD&vgnextfmt=+">Hennepin County Human Services Public Health Department</a></strong><br />
		Contact Person: Markus Klimenko, Program Manager, Housing & Homeless Initiatives<br />
		Phone: 612-596-7036<br />
		Email: <a href="mailto:markus.klimenko@co.hennepin.mn.us">markus.klimenko@co.hennepin.mn.us</a><br />
		Hennepin County contracts with a variety of housing and disability support service organizations on behalf of persons with disabilities and others. To obtain services one must apply and be determined eligible. For some services a waiting period is common. 
	</li>
	<li>
		<strong>
		<a href="http://hennepin.us/portal/site/HennepinUS/menuitem.b1ab75471750e40fa01dfb47ccf06498/?vgnextoid=68d9772f55183210VgnVCM10000049114689RCRD" target="_blank">Hennepin County "Front Door"</a></strong><br />
		Application for case management for a social worker in Hennepin County call:<br />
		Development and Physical Disabilities: 612-348-4500<br />
		Mental Health: 612-348-4111<br />
		<a href="mailto:HSPH.Frontdoor.Screener@co.hennepin.mn.us">HSPH.Frontdoor.Screener@co.hennepin.mn.us</a>
	</li>
	<li>
		<strong><a href="http://www.co.hennepin.mn.us/portal/site/HCInternet/menuitem.3f94db53874f9b6f68ce1e10b1466498/?vgnextoid=ade622b7a70fd010VgnVCM1000000f094689RCRD&vgnextfmt=default">Hennepin County Human Services and Public Health Department Frequently Called Numbers</a></strong>
	</li>
	<li>
		<strong><a href="http://www.mn-ddsupportservices.com">The Metro Crisis Coordination Program: Residential Housing Openings</a></strong><br />
		Phone: 651-291-1086<br />
		The Metro Crisis Coordination Program (MCCP) and the Association for Residential Resources in MN (ARRM) have collaborated to create a Web site that DD waiver residential providers can list and describe openings they have at their facilities. Consumers and their representatives can go to this site to search by county, type of facility, age cohort served, etc.
	</li>
	<li>
		<strong><a href="http://www.mcil-mn.org/">Metropolitan Center for Independent Living, Inc.</a></strong><br />
		Contact Person: David Hancox, Executive Director<br />
		Chris Montville, Director Nursing Home Relocation<br />
		Ed Goldsmith, Housing Specialist - 651-646-8342 or 1-866-2466<br />
		Nick Wilkie, Transition Specialist<br />
		Phone: 651.603.2018 (voice) or (651) 603 2001 (TTY)<br />
		Email: <a href="mailto:davidh@mcil-mn.org">davidh@mcil-mn.org</a> | <a href="mailto:edg@mcil-mn.org">edg@mcil-mn.org</a> | <a href="mailto:scotts@arcmn.org">nickw@mcil-mn.org</a><br />
		MCIL provides a variety of services for people with disabilities, their families and friends, service providers, and interested community members. Services include information and referral, independent living skills, peer 
		mentor programs, individual and systems advocacy and support services, and personal assistance service. Disability Linkage Line is a 
		link for disability services and supports for Minnesotans with disabilities, chronic illness, family members and service providers. Support provided for individual issues. 
	</li>
	<li>
		<strong><a href="http://www.mul.org">Minneapolis Urban League</a></strong><br />
		Contact Person: Theresa L. Doss<br />
		Phone: 612-827-9268<br />
		E-mail:<a href="mailto:tdoss@mul.org"> tdoss@mul.org</a><br />
		The Minneapolis Urban League offers housing advocacy, obtaining housing and client discrimination services in its Client Services Program Division. Other Programs include: Economic Development Division, Health Education, Academic Education, Policy Advocacy. It offers these services to all who ask for assistance.
	</li>
	<li>
		<strong><a href="http://www.macil.org">Minnesota Association of Centers for Independent Living</a></strong><br />
		Phone: 320-529-9000<br />
		Minnesota Association of Centers for Independent Living (MACIL) is a nonprofit organization whose purpose is to advocate for the independent living needs of persons with disabilities who are citizens of the State of Minnesota. MACIL develops new resources and identifies and provides access to existing resources to enable persons with disabilities to live independently. No proof of documentation or disability is required and most services are free. There are eight center locations in Minnesota and 500 nationwide. Among the services provided are: independent living skills training, information and referral, advocacy and peer counseling.
	</li>
	<li>
		<strong><a href="http://rtc.umn.edu/docs/flsupcom.pdf">The Minnesota Frontline Supervisor Competencies and Performance Indicators</a>
		<img border="0" src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /></strong><br />
		This document identifies competencies required of frontline supervisors providing community support services to people with developmental disabilities in order to foster the development and implementation of excellence in service provision.
	</li>
	<li>
		<strong><a href="http://www.minnesotahelp.info/public/">Minnesota Help Information Directory</a></strong><br />
		Minnesota Help Information Directory helps to locate community resources in six steps.
	</li>
	<li>
		<strong><a href="http://www.mhponline.org">The Minnesota Housing Partnership</a></strong><br />
		Phone: 651-649-1710; 800-728-8916<br />
		The Minnesota Housing Partnership offers a comprehensive package of financial and technical resources to increase the supply of affordable housing and to strengthen nonprofit housing developers. These resources include loans, grants, training, VISTA volunteers, organizational support, and housing development coaching. MHP facilitates and funds housing-related planning efforts to ensure that new affordable housing development correlates with workforce needs, minimizes infrastructure costs, and provides links to community services. MHP also supports regional and statewide coordination of planning, resource delivery, educational activities, and homelessness prevention efforts. It also provides training, policy updates, and public education tools to help its partners effectively promote affordable housing. Several programs of the housing partnership are geographically restricted to agencies in Greater Minnesota.
	</li>
	<li>
		<strong><a href="http://www.realtor.com">MLS listings of homes for sale</a></strong><br />
		Browse the MLS listings of homes for sale.
	</li>
	<li>
 		<strong><a href="www.nhhiaccessiblehousing.com">National Handicap Institute</a></strong><br /> 
		Contact Persons: Michael J. Bjerkesett, President; Alee Thao<br />
		Phone: 651-639-9799<br />
		NHHI is a not for profit developer/owner/manager of affordable housing for low income persons with mobility impairments and for seniors.  NHHI has buildings in 11 Minneapolis/St Paul metropolitan locations and one in Mankato.  Some locations also have 24 hour attendant care services available.
	</li>
	<li>
		<strong><a href="index.asp">PACER's Housing Project</a></strong><br />
		Phone: 952-838-9000, Toll-free for MN parents 800-537-2237<br />
		The goal of PACER's Housing Project is to develop information and resources to help parents of children and young adults with disabilities understand their options for independent living and housing. Parents are encouraged to begin thinking about these issues when their children are as young as 12 years old. This project helps parents understand why it is important to consider housing during the transition years, what housing options are available for their child, what supports and services exist, and what information and referral resources are available to meet their needs. PACER's Housing Project provides individual assistance by phone or in person, workshops on housing options, services and supports, and a housing guidebook including national and state housing resources to individuals with disabilities and their parents.
	</li>
	<li>
		<strong><a href="http://rtc.umn.edu/questions/index.html">Questions to ask Providers when Making Decisions About Residential Supports for Family Members With Disabilities</a> </strong><br />
		In the Self Advocacy/Self Determination section users are provided with a comprehensive list of questions to ask providers when making decisions about residential supports for family members with disabilities.
	</li>
	<li>
		<strong><a href="http://www.rtc.umn.edu/main/index.html">University of MN: Institute for Community Integration</a></strong><br />
		Contact Person: Charlie Lakin, Ph.D., Director, The Research and Training Center on Community Living<br />
		Phone: 612-624-5005<br />
		Email: <a href="mailto:lakin001@umn.edu">lakin001@umn.edu</a><br />
		The Institute&#8217;s mission is to improve the community services and social supports available to individuals with developmental and other disabilities. It conducts research, develops publications and provides information on housing issues to persons with disabilities and their families.
	</li>
	<li>
		<h3>Person Centered Planning</h3>
		<ul class="nobullet">
			<li>
				<strong><a href="http://rtc.umn.edu/person/">Person Centered Planning</a></strong><br />
				Human services agencies throughout the country are shifting from a focus on agency practices and system rules to being more centered on the people with disabilities, what each individual wants for their life, and how people with disabilities can have fully inclusive community lives. One of the most powerful methods for achieving those goals is person-centered planning
			</li>
			<li>
				<strong><a href="http://www.thedesk.info/myplan">TheDesk.info The Medicaid Reference Desk</a></strong><br />
				This is an interactive planning tool that will help you to think about what you want your life to be, Share your ideas with other people to develop a person-centered plan, look for services on this web site and other places. Areas addressed are: Home, Health, Community and Work.
			</li>
			<li>
				<strong><a href="http://rtc.umn.edu/docs/pcpmanual1.pdf">Increasing Person Centered Thinking: Improving the Quality of Person Centered Planning</a>
				<img border="0" src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /></strong><br />
				This manual was prepared as part of a two-year training project conducted throughout Minnesota. It is intended as a resource in training programs about Person-Centered Planning. For people who have already had some or much training and experience in these processes, it is also intended to be useful in improving the quality of facilitation.
			</li>
			<li>
				<strong><a href="http://www.mnddc.org/extra/publications/choice/Its_My_Choice.pdf">It's My Choice</a>
				<img border="0" src="../images/pdficon_small.gif" width="15" height="15" alt="pdf icon" /></strong><br />
				A self-guided workbook on person-centered planning by William T. Allen published by the MN Governor&#8217;s Council on Developmental Disabilities. Included is a Housing Checklist.
			</li>
			<li>
				<strong>
				<a href="../publications/parentbriefs/ParentBrief_Feb04.pdf">Person Centered Planning: A Tool for Transition</a></strong><br />
				NCSET &amp; PACER Center Article Feb.2004
			</li>
		</ul>
	</li>
</ul>

<p class="top">
<a href="#top">^ Back to Top ^</a>
</p>

<h2 class="nounderline"><a name="access">Accessibility</a></h2>
<ul class="housingresources">
	<li>
		<strong><a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&Redirected=true&dDocName=id_006203">Home Modifications and Universal Design </a></strong>
		Housing Resources ToolBox from DHS <br />
		A checklist of questions to ask when a home may need to be modified for accessibility features and explains Universal Design. Also includes a number of links to other resources. 
	</li>
	<li>
		<strong><a href="http://www.housinglink.org/howtolibrary/Category.aspx?ID=6">HousingLink How to Library: Housing with Accessibility</a></strong><br />
		Features links to: Designing accessible housing, find an accessible unit, how to stay in our home, reasonable accommodations, modifications
	</li>
	<li>
		<strong><a href="http://www.lawhelp.org/MN/showdocument.cfm/County/%20/City/%20/demoMode/=%201/Language/1/State/MN/TextOnly/N/ZipCode/%20/LoggedIn/0/rpc/1840100/doctype/dynamicdoc/ichannelprofileid/31476/idynamicdocid/3454/iorganizationid/4297/itopicID/262/iProblemCodeID/1840100/iChannelID/3/isubtopicid/0/iproblemcodeid/0">Housing: Reasonable Accommodations: Law.Help.org</a></strong><br />
		Under federal fair housing and anti-discrimination laws, a "reasonable accommodation" is a change in rules, policies or practices that allows a person with a disability an equal opportunity to use and enjoy their housing.
	</li>
	<li><a href="http://www.lifetimehome.us/index.html" target="_blank">Lifetime Assistance  Project</a><br />
	  <p>The  Project&rsquo;s overall mission is to promote comfortable, safe, long-term living at  home.&nbsp; It works toward this goal by advancing the understanding and use  of:</p>
      <ul type="disc">
        <li>Accessible       and universal design techniques for home construction and remodeling </li>
        <li>Innovative       home telehealth products and practices </li>
        <li>Flexible       living options and local practices that promote them </li>
      </ul>
      <p>A major Project activity involves  providing education and training, so this website has a range of useful  resources for individuals and families, industry professionals, students and  educators <br />
        E-mail: <a href="mailto:info@lifetimehome.us">info@lifetimehome.us</a><br />
        Mail: Lifetime Home Project<br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  PO Box 17097<br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Minneapolis, MN&nbsp; 55417-2118<br />
        Phone/fax: 612.722.3048</p>
	</li>
	<li>
		<a href="http://www.mnhousing.gov/consumers/home-owners/HomeImprovementLoans/index.aspx">MHFA Home Improvement Loans</a>
	</li>
	<li>
		<strong><a href="http://www.accessibilitydesign.com">Accessibility Design, Inc.</a></strong><br />
		Contact Person: Jane Hampton (owner)<br />
		Phone: 952-925-0301<br />
		Email: <a href="mailto:info@accessibilitydesign.com">info@accessibilitydesign.com</a><br />
		Accessibility Design is a design and project management company 
		specializing in home access for those with disabilities and seniors. Our services include but are not limited to: plan review, home access site visit, design and consultation, funding research, construction and drafting documents, and project recommendations. 
	</li>
	<li>
		<strong>
		<a href="http://books.google.com/books?hl=en&id=2LlO-7jxqBQC&dq=Susan+Lasoff&printsec=frontcover&source=web&ots=5zcNNDMlKo&sig=XpAx8HGyRj0dGiNjAXgsaEsnnYM&sa=X&oi=book_result&resnum=2&ct=result#PPP5,M1">The Accessible Home Easy Ways to Improve the Safety, Function, and Value of Your Home</a></strong><br />
		The Accessible Home Easy Ways to Improve the Safety, Function, and Value of Your Home, Fairview Press $4.95 by Susan Lasoff, MS, OTR/L and Linda Lorentzen, OTR/L Whether someone is thinking of building or buying a new home, buying an existing home, or remodeling a current home, this guide can help make a home safe, comfortable, and functional. The booklet's home checklist can be used in consultation with an architect, builder, designer, or occupational therapist to determine which features would best fit specific needs.
	</li>
	<li>
		<h3>"Smart Home" Technology</h3>
		<ul class="nobullet">
			<li>
				<strong><a href="http://en.wikipedia.org/wiki/Home_automation_for_the_elderly_and_disabled">"Home 
				Automation for the Elderly and Disabled"</a></strong> 
			</li>
			<li>
				<strong><a href="http://www.cnn.com/2005/TECH/05/27/vision.home/index.html">CNN: "Smart Homes Are Not Far Away" May 31, 2005</a></strong>                
			</li>
			<li>
				<strong><a href="http://architecture.mit.edu/house_n/placelab.html">MIT (Massachusetts Institute of Technology) The PlaceLab</a></strong><br />
				The mission of House_n is to conduct research by designing and building real living environments - "living labs" - that are used to study technology and design strategies in context.
			</li>
		</ul>
	</li>
</ul>

<p class="top">
<a href="#top">^ Back to Top ^</a>
</p>

<h2 class="nounderline"><a name="mndisorg">Minnesota Disability Organizations</a></h2>
<ul class="housingresources">
	<li>
		<strong><a href="http://www.arcgreatertwincities.org/">Arc Greater Twin Cities</a></strong><br />
		Phone: 952-920-0855<br />
		Email: <a href="mailto:info@arcgreatertwincities.org" title="mailto:info@arcgreatertwincities.org blocked::mailto:info@arcgreatertwincities.org"><strong>info@arcgreatertwincities.org</strong></a><br />
		Arc Greater Twin Cities is an advocacy  organization supporting persons with intellectual and related developmental  disabilities across the lifespan. The core services of Arc include information  and assistance, individual advocacy, educational workshops, networking groups,  sibling programs, self-advocacy training and public policy networks for change.
	</li>
	<li>
		<strong><a href="http://www.mnarc.nonprofitoffice.com/index.asp?Type=B_BASIC&amp;SEC={2E568468-5FD9-4CD9-A383-D874015A7B3E}" target="_blank">The Arc of MN Housing Access Services Program</a></strong><br />
		Contact Persons: Scott Schifsky, Housing Director<br />
		Phone: 651-523-0823, ext. 102<br />
		Email: <a href="mailto:scotts@arcmn.org">scotts@arcmn.org</a><br />
		The Arc of Minnesota in partnership with the Minnesota Department of Human Services is providing a Housing Access Services Program for adult Minnesotans with disabilities who have been assessed and determined eligible for Minnesota Medicaid home care or waiver services and who want to move to homes of their own. Services include: looking for housing, assisting with rental and lease agreements, meetings with landlords/property staff, assisting with applications for publicly financed housing, household budget development and assisting with related household matters.
	</li>
	
	<li>
		<strong><a href="http://www.mnarc.nonprofitoffice.com/index.asp?Type=B_BASIC&amp;SEC={03B4127C-DBB7-46FC-AD7B-21AD6A38EC2A}">The ARC of MN Master Pooled Trust Program</a></strong><br />
		Contact Persons: Dennis Collins, Master Pooled Trust Director<br />
		Phone: 651-523-0879, ext. 111<br />
		Email: <a href="mailto:dennisc@arcmn.org">dennisc@arcmn.org</a><br />
		The  Arc Master Pooled Trusts offer the ability for parents (family or others) of a  person with a disability to set aside money (now or in the future) to  supplement that person&rsquo;s quality of life generally to be used after parents  have passed away or are unable to care for their loved ones any longer.&nbsp; These funds do not count as assets of the  person with the disability, and therefore do not jeopardize their governmental  benefits (SSI, MA, etc). The  Arc trust offers the security and confidence parents (and others) want for  their loved one&rsquo;s future.&nbsp; Arc manages  the trust and oversees the financial management of the pooled funds.&nbsp; The program is family friendly, affordable  and reliable.
	</li>
	
	<li>
		<strong><a href="http://www.selfadvocacy.com/">Advocating for Change Together (ACT)</a></strong><br />
		Phone: 651-641-0297; 800-641-0059<br />
		Advocating Change Together (ACT) is a grassroots disability rights organization run by and for people with developmental and other disabilities. ACT's mission is to help people across disabilities to see themselves as part of a larger disability rights movement and make connections to other civil and human rights struggles.
	</li>
	<li>
		<strong><a href="http://www.braininjurymn.org">Brain Injury Association of Minnesota</a></strong><br />
		Contact Person: Pete Klinkhammer<br />
		Phone: 612-378-2742<br />
		E-mail: <a href="mailto:info@braininjurymn.org">info@braininjurymn.org</a><br />
		The Brain Injury Association of Minnesota works to bring help, hope, and a voice to the 100,000 Minnesotans who live with a disability caused by a brain injury. There are a variety of programs available including resource facilitation. Resource facilitation is information, resources, and access to services and support for children and adults with brain injury and their families throughout the state of Minnesota.
	</li>
	<li>
		<strong><a href="http://www.mentalhealthmn.org">Mental Health Association of Minnesota</a></strong><br />
		Contact Person: Tom Johnson<br />
		Phone: 612-331-6840<br />
		E-mail: tomj@mentalhealthmn.org<br />
		The mission of the Mental Health Association of Minnesota is to improve the quality of life of people with mental illnesses and promote mental health. The association provides individual advocacy services and information and referral assistance on a wide range of housing issues. 
	</li>
	<!--<li>
		<strong><a href="http://www.mcil-mn.org/">Metropolitan Center for Independent Living, Inc.</a></strong><br />
		Contact Person: David Hancox, Executive Director<br />
		Eva Hansen, Director Nursing Home Relocation<br />
		Ed Goldsmith, Housing Specialist<br />
		Phone: 651-646-8342<br />
		Email: <a href="mailto:davidh@mcil-mn.org">davidh@mcil-mn.org</a>; 
		<a href="mailto:evaha@mcil-mn.org">evaha@mcil-mn.org</a>; 
		<a href="mailto:edg@mcil-mn.org">edg@mcil-mn.org</a><br />
		MCIL provides services for people with disabilities, their families and friends, service providers, and interested community members. Services include information and referral, independent living skills, peer 
		mentor programs, individual and systems advocacy and support services, and personal assistance service. Disability Linkage Line is a 
		link for disability services and supports for Minnesotans with disabilities, chronic illness, family members and service providers. Support provided for individual issues. 
	</li>-->
	<li>
		<strong><a href="http://www.macil.org">Minnesota Association of Centers for Independent Living</a></strong><br />
		Phone: 320-529-9000<br />
		Minnesota Association of Centers for Independent Living (MACIL) is a nonprofit organization whose purpose is to advocate for the independent living needs of persons with disabilities who are citizens of the State of Minnesota. MACIL develops new resources and identifies and provides access to existing resources to enable persons with disabilities to live independently. No proof of documentation or disability is required and most services are free. There are eight center locations in Minnesota and 500 nationwide. Among the services provided are: independent living skills training, information and referral, advocacy and peer counseling.
	</li>
	<li>
		<strong><a href="http://www.namimn.org">NAMI (National Alliance on Mental Illness) MN</a></strong><br />
		Contact Person: Sue Abderholden, Executive Director<br />
		Shelley White, Associate Director<br />
		Phone: 651-645-2948 or 1-888-NAMI HELPS<br />
		The National Alliance on Mental Illness of Minnesota (NAMI-MN) is a non-profit organization dedicated to improving the lives of adults and children with mental illness and their families.  NAMI-MN offers programs of education, support and advocacy, and supports research efforts. NAMI-MN vigorously promotes the development of community mental health programs and services, improved access to services, increased opportunities for recovery, reduced stigma and discrimination, and increased public understanding of mental illness.&#8221; 
	</li>
	<li>
 		<strong><a href="www.nhhiaccessiblehousing.com">National Handicap Institute</a></strong><br /> 
		Contact Persons: Michael J. Bjerkesett, President; Alee Thao<br />
		Phone: 651-639-9799<br />
		NHHI is a not for profit developer/owner/manager of affordable housing for low income persons with mobility impairments and for seniors.  NHHI has buildings in 11 Minneapolis/St Paul metropolitan locations and one in Mankato.  Some locations also have 24 hour attendant care services available.
	</li>
	<li>
		<strong><a href="index.asp">PACER's Housing Project</a></strong><br />
		Phone: 952-838-9000, Toll-free for MN parents 800-537-2237<br />
		The goal of PACER's Housing Project is to develop information and resources to help parents of children and young adults with disabilities understand their options for independent living and housing. Parents are encouraged to begin thinking about these issues when their children are as young as 12 years old. This project helps parents understand why it is important to consider housing during the transition years, what housing options are available for their child, what supports and services exist, and what information and referral resources are available to meet their needs. PACER's Housing Project provides individual assistance by phone or in person, workshops on housing options, services and supports, and a housing guidebook including national and state housing resources to individuals with disabilities and their parents.
	</li>
	<li>
		<strong><a href="http://www.rise.org">Rise</a></strong><br />
		Contact Person: Sandy Jorgensen<br />
		Phone: 763-783-2818<br />
		Email: <a href="mailto:sljorgensen@rise.org">sljorgensen@rise.org</a><br />
		Incorporated in 1971, Rise is a private, nonprofit agency that offers vocational training, career planning, job placement and follow-up services to people with a wide range of disabilities and other barriers to employment. We offer housing support services to people who have mental health disabilities including transitional housing, independent living skills training, and outreach to people that are homeless. 
	</li>
	<li>
		<strong><a href="http://www.rtc.umn.edu/main/index.html">University of Minnesota: Institute for Community Integration</a></strong><br />
		Contact Person: Charlie Lakin, Ph.D., Director, The Research and Training Center on Community Living<br />
		Phone: 612-624-5005<br />
		Email: <a href="mailto:lakin001@umn.edu">lakin001@umn.edu</a><br />
		The Institute&#8217;s mission is to improve the community services and social supporters available to individuals with developmental and other disabilities. It conducts research, develops publications and provides information on housing issues to persons with disabilities and their families. 
	</li>
</ul>

<p class="top">
<a href="#top">^ Back to Top ^</a>
</p>

<h2 class="nounderline"><a name="mngovage">Minnesota Government Agencies</a></h2>
<ul class="housingresources">
	<li>
		<strong><a href="http://www.humanrights.state.mn.us">Minnesota Department of Human Rights</a></strong><br />
		190 E 5th Street, Suite 700, St. Paul, MN 55101<br />
		Phone: 651-296-5663; 800-657-3704; TTY: 651-296-1283<br />
		The MN Department of Human Rights&#8217; mission is to make Minnesota discrimination free including discrimination based on disability, family status, public assistance status, sex, national origin and race. The department is a neutral state agency that investigates charges of illegal discrimination including reasonable accommodations made for people with disabilities and housing discrimination. 
	</li>
	<li>
		<strong><a href="http://www.dhs.state.mn.us">Minnesota Department of Human Services</a></strong><br />
		Contact Persons: Joseph Alakija, Disability Waivers and Support Services<br />
		Duane Elg, Consultant, Housing Supports<br />
		Phone: 651-431-2437; 651-431-3863<br />
		Email: <a href="mailto:Joseph.A.Alakija@state.mn.us">Joseph.A.Alakija@state.mn.us</a>; 
		<a href="mailto:duane.elg@state.mn.us">duane.elg@state.mn.us</a><br />
		Minnesota Department of Human Services provides health care, economic assistance, and other services for people who do not have the resources to meet their basic needs. It works with counties and other partners on welfare reform and critical aging and children&#8217;s issues, oversees the state&#8217;s four publicly funded health care programs, licenses child care and day care facilities, manages budgets and distributes grants, provides state operated services through residential treatment centers and community-based facilities, measures performance and outcomes of programs, and conducts projects to respond to special needs or issues. Go to the DHS web site. Click on Disabilities 
		&gt; Disability Services for more information on a wide array of topics. For Housing Information, click on Economic Supports 
		&gt; Housing. 
	</li>
	<li>
		<strong>
		<a href="http://www.state.mn.us/portal/mn/jsp/home.do?agency=MSCOD">Minnesota State Council on Disability</a></strong><br />
		Contact Person: Margot Imdieke Cross, Building Accessibility, Disability parking,  Emergency Management<br />
		Phone: 651-361-7802<br />
		Email: <a href="mailto:margot.imdieke@state.mn.us">margot.imdieke@state.mn.us</a><br />
		The Minnesota State Council on Disability (MSCOD) is an agency that collaborates, advocates, advises and provides information to expand opportunities, increase the quality of life and empower all persons with disabilities. Services are provided to individuals with disabilities and their families, the Governor and Legislature, government and private agencies, employers and the general public. 
	</li>
	<li>
		<strong>
		<a href="http://www.state.mn.us/cgi-bin/portal/mn/jsp/home.do?agency=NorthStar">The State of Minnesota's Web site</a></strong><br />
		The State of Minnesota's Web site includes information on diverse topics such as housing, living and working, transportation, labor and employment, human services, and diverse populations. Go to the Living and Working link.
	</li>
</ul>

<p class="top">
<a href="#top">^ Back to Top ^</a>
</p>

</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>