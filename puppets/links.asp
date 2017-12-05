<%
Response.Redirect("/parent/links.asp")
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>PACER Puppets: Links</title>
<link rel="shortcut icon" href="http://www.pacer.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../css/leftnavnoright.css" media="screen, projection" />
<link rel="stylesheet" type="text/css" href="../css/print.css" media="print" />

<style type="text/css">
h3 {
	padding: 0 0 .5em 0;
	margin: 0;
}
h4 {
	padding: 0;
	margin: .2em 0 .2em 0;
	border-bottom: solid 1px #ccc;
	border-top: solid 1px #ccc;
}
p {
	padding: 0;
	margin: 0;
}
</style>

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

<div id="maincontent">

<div id="pagetoporange">
	<div class="printemail">
		<p>
		<img src="../css/printicon.gif" width="15" height="14" alt="" /><a href="javascript:window.print()">Print page</a>
		
		</p>
	</div>
	<div id="breadcrumb">
	<a href="../index.asp">Home</a> / <a href="../pandr/index.asp">Programs &amp; Resources</a> / 
	<a href="index.asp">PACER Puppets</a> / Links
	
	<h1>PACER Puppets</h1>
	
	</div>
</div>

<div id="leftbar">
<h2 style="display: none;">PACER Puppets Navigation Menu</h2>
<!--#include virtual="/puppets/nav.html" -->
</div>

<!-- Set the nav links that you want to show orange and hide any sub trees that you do not want to show -->
<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="none";
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

<div id="pagecontentright">

<h2 class="nounderline"><a name="maincontent">Links to Specific Disability Resources</a></h2>

<!--BEGIN CONTENT-->

<table align="center">
	<tr>
		<td style="width: 49%; vertical-align: top; padding: .2em; border-right: 1px solid black;">
			<h3>Minnesota</h3>
			<h4>Attention Deficit Disorders</h4>
			<p>
			CHADD Minnesota Chapters<br />
			<a href="http://www.chaddonline.org/chapters/chadd452.html">
			Rochester</a><br />
			<a href="http://www.chaddonline.org/chapters/chadd172.html">Twin 
			Cities</a>
			</p>
			<p>
			<a href="http://www.ldaminnesota.org">Learning Disabilities Association of Minnesota</a>
			</p>
			
			<h4>Autism Spectrum Disorders</h4>
			<p>
			<a href="http://www.afpwa.org">Alternatives for People with Autism</a>
			</p>
			<p>
			<a href="http://www.autismshop.com">Autism Resource Network</a>
			</p>
			<p>
			<a href="http://www.ausm.org">Autism Society of Minnesota</a>
			</p>
			
			<h4>Cognitive and Developmental Disabilities</h4>
			<p>
			<a href="http://www.thearcofminnesota.org/">The ARC of Minnesota</a>
			</p>
			<p>
			<a href="http://www.dsamn.org">Down Syndrome Association of Minnesota</a>
			</p>
			
			<h4>Deaf Blind</h4>
			<p>
			<a href="http://www.dbproject.mn.org">Minnesota DeafBlind Technical Assistance Project</a>
			</p>
			
			<h4>Deaf and Hard of Hearing</h4>
			<p>
			<a href="http://www.c-s-d.org/Default.aspx?ID=0&Display=Content&Color=0">
			Communication Services for the Deaf</a>
			</p>
			<p>
			<a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&dDocName=id_000081">
			Deaf and Hard of Hearing Services Department of Human Services</a>
			</p>
			<p>
			<a href="http://www.familysupportconnection.org">Family Support Connection Lifetrack Resources</a>
			</p>
			<p>
			<a href="http://www.agbell.org/MN/">Minnesota Alexander Graham Bell Association</a>
			</p>
			<p>
			<a href="http://www.mnassocdeaf.org">Minnesota Association of Deaf Citizens</a>
			</p>
			<p>
			<a href="http://www.state.mn.us/cgi-bin/portal/mn/jsp/content.do?id=-536881376&agency=Commerce">
			Minnesota Relay Service</a>
			</p>
			
			<h4>Emotional and Behavioral Disabilities</h4>
			<p>
			<a href="http://www.mentalhealthmn.org">Mental Health Association of Minnesota</a>
			</p>
			<p>
			<a href="http://www.macmh.org">Minnesota Association for Children's Mental Health</a>
			</p>
			<p>
			<a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&dDocName=id_000162">
			Minnesota's Family Services and Children's Mental Health 
			Collaboratives</a><br />
			</p>
			<p>
			<a href="http://www.dhs.state.mn.us/main/idcplg?IdcService=GET_DYNAMIC_CONVERSION&RevisionSelectionMethod=LatestReleased&dDocName=id_000085">
			Minnesota State Advisory Council on Mental Health, Subcommittee on 
			Children's Mental Health</a>
			</p>
			<p>
			<a href="http://www.cmhn.org">Minnesota Statewide Family Network</a>
			</p>
			<p>
			<a href="http://mn.nami.org">National Alliance for the Mentally Ill (NAMI)</a>
			</p>
			<p>
			<a href="../ebd/index.asp">PACER's EBD Project</a>
			</p>
			<p>
			<a href="http://www.save.org">SAVE Suicide Awareness Voices of Education</a>
			</p>
			
			<h4>Genetic Disorders</h4>
			<p>
			<a href="http://www.marchofdimes.com/minnesota/viewAllOffices.asp">March of Dimes National Foundation for Birth Defects</a>
			</p>
			
			<h4>Health Impairments</h4>
			<p>
			<a href="http://www.cancer.org/docroot/home/index.asp">American Cancer Society</a>
			</p>
			<p>
			<a href="http://www.diabetes.org/home.jsp">American Diabetes Association</a>
			</p>
			<p>
			<a href="http://www.americanheart.org/presenter.jhtml?identifier=10000018&state=MN">
			American Heart Association</a>
			</p>
			<p>
			<a href="http://www.alamn.org/">American Lung Association of Minnesota</a>
			</p>
			<p>
			<a href="http://www.arthritis.org/Communities/Chapters/Chapter.asp?chapid=30">
			Arthritis Foundation, North Central Chapter</a>
			</p>
			<p>
			<a href="http://www.ccfa.org/chapters/minnesota/">Crohn's and Colitis Foundation of America Minnesota Dakotas Chapter</a>
			</p>
			<p>
			<a href="http://www.cff.org/Chapters/minnesota/">Cystic Fibrosis Foundation</a>
			</p>
			<p>
			<a href="http://www.hfmd.org">Hemophilia Foundation of Minnesota and the Dakotas</a>
			</p>
			<p>
			<a href="http://www.parknicollet.com/diabetes/">International Diabetes Center</a>
			</p>
			<p>
			<a href="http://www.lupusmn.org">Lupus Foundation of Minnesota</a>
			</p>
			<p>
			<a href="http://www.mnaidsproject.org">Minnesota Aids Project (MAP)</a>
			</p>
			<p>
			<a href="http://www.kidney.org/site/index.cfm?ch=313">National Kidney Foundation - Dakotas & Minnesota Chapter</a>
			</p>
			<p>
			<a href="http://www.nationalmssociety.org/MNM/home/">National Multiple Sclerosis Society, MN Chapter</a>
			</p>
			
			<h4>Learning Disabilities</h4>
			<p>
			<a href="http://www.chsfs.org">Children's Home Society and Family Services</a>
			</p>
			<p>
			<a href="http://www.ldaminnesota.org">Learning Disabilities Association of Minnesota</a>
			</p>
			<p>
			<a href="http://www.optimisticoutcomes.com">Optimistic Outcomes</a>
			</p>
			<p>
			<a href="http://www.umbida.org/">Upper Midwest Branch International Dyslexia Association (UMBIDA)</a>
			</p>
			
			<h4>Neurological Disorders</h4>
			<p>
			<a href="http://www.efmn.org">Epilepsy Foundation of Minnesota</a>
			</p>
			<p>
			<a href="http://www.ataxia.org">National Ataxia Foundation</a>
			</p>
			<p>
			<a href="http://www.nfincmn.org">Neurofibromatosis, Inc. Minnesota</a>
			</p>
			<p>
			<a href="http://www.tsa-mn.org">Tourette Syndrome Association of Minnesota</a>
			</p>
			
			<h4>Physical Disabilities</h4>
			<p>
			<a href="http://www.courage.org">Courage Center</a>
			</p>
			<p>
			<a href="http://www.lpadistrict9.org/content/">Little People of America District 9 includes Minnesota</a>
			</p>
			<p>
			<a href="http://www.mdausa.org">Muscular Dystrophy Association</a>
			</p>
			<p>
			<a href="http://www.ucp.org/ucp_local.cfm/90">United Cerebral Palsy of Minnesota, Inc.</a>
			</p>
			
			<h4>Speech or Language Impairments</h4>
			<p>
			<a href="http://www.apraxia-kids.org/talk/support.html#minnesota">Minnesota Apraxia Support Group</a>
			</p>
			
			<h4>Traumatic Brain Injury</h4>
			<p>
			<a href="http://www.braininjurymn.org">Brain Injury Association of Minnesota</a>
			</p>
			
			<h4>Visually Impaired</h4>
			<p>
			<a href="http://www.blindinc.org">BLIND, Inc.</a>
			</p>
			<p>
			<a href="http://www.mnssb.org/allages/commcenter/">Minnesota Radio Talking Book Network</a>
			</p>
			<p>
			<a href="http://www.mnssb.org/">Minnesota State Services for the Blind</a>
			</p>
			<p>
			<a href="http://www.visionlossresources.org">Vision Loss Resources</a>
			</p>
			
		</td>
		<td style="width: 48%; vertical-align: top; padding: .2em">
			<h3>National</h3>
			<h4>Attention Deficit Disorders</h4>
			<p>
			<a href="http://www.add.org">Attention Deficit Disorder Association</a>
			</p>
			<p>
			<a href="http://www.addresources.org">Attention Deficit Disorder Resources</a></p>
			<p>
			<a href="http://www.addinfonetwork.com">The Attention Deficit Information Network, Inc.</a></p>
			<p>
			<a href="http://www.chadd.org">Children and Adults with Attention-Deficit/Hyperactivity Disorder 
			(CHADD)</a>
			</p>
			<p>
			<a href="http://www.help4adhd.org/index.cfm">National Resource Center on ADHD</a></p>
			
			<h4>Autism Spectrum Disorders</h4>
			<p>
			<a href="http://maapservices.org">Asperger Coalition of the U.S. ASC-US</a>
			</p>
			<p>
			<a href="http://www.autcom.org">Autism National Committee</a>
			</p>
			<p>
			<a href="http://www.autism-pdd.net">Autism-PDD Resources Network</a>
			</p>
			<p>
			<a href="http://www.autism.com/ari/">Autism Research Institute</a></p>
			<p>
			<a href="http://www.autism-society.org/site/PageServer/">Autism Society of America, Inc.</a>
			</p>
			<p>
			<a href="http://www.autismtoday.com">Autism Today</a>&nbsp;
			</p>
			<p>
			<a href="http://www.firstsigns.org">First Signs, Inc.</a>
			</p>
			<p>
			<a href="http://www.nea.org/specialed/images/autismpuzzle.pdf">National Education Association</a>
			<img border="0" src="../images/pdficon_small.gif" width="15" height="15"></p>
			<p>
			<a href="http://www.udel.edu/bkirby/asperger/">OASIS Online Asperger Syndrome Information and Support</a></p>
			<p>
			<a href="http://www.sinetwork.org">Sensory Processing Disorder Foundation</a>
			</p>
			
			<h4>Cognitive and Developmental Disabilities</h4>
			<p>
			<a href="http://www.aaidd.org">American Association on Intellectual and Developmental Disabilities</a>
			</p>
			<p>
			<a href="http://www.thearc.org">The ARC of the U.S.</a>
			</p>
			<p>
			<a href="http://www.thearclink.org">The ArcLink</a></p>
			<p>
			<a href="http://www.aucd.org">Association of University Centers on Disability</a>
			</p>
			<p>
			<a href="http://www.tash.org">Association for Persons with Severe Handicaps (TASH)</a>
			</p>
			<p>
			<a href="http://www.cdlsusa.org">Cornelia deLange Syndrome Foundation</a></p>
			<p>
			<a href="http://www.rettsyndrome.org">International Rett Syndrome Association</a></p>
			<p>
			<a href="http://www.jpkf.org">Joseph P Kennedy, Jr. Foundation </a>
			</p>
			<p>
			<a href="http://www.nasddds.org/index.shtml">National Association of State Directors of Developmental Disabilities Services (NASDDDS)</a></p>
			<p>
			<a href="http://www.thenadd.org">The National Association for the Dually Diagnosed
			</a>
			</p>
			<p>
			<a href="http://www.ndsccenter.org">National Down Syndrome Congress</a>
			</p>
			<p>
			<a href="http://www.ndss.org">National Down Syndrome Society</a></p>
			<p>
			<a href="http://www.fragilex.org">National Fragile X Foundation</a>
			</p>
			<p>
			<a href="http://www.nofas.org">NOFAS National Association on Fetal Alcohol Syndrome</a></p>
			<p>
			<a href="http://www.trisomy.org">SOFT Support Organization for Trisomy 18, 13, and Related Disorders</a>
			</p>
			<p>
			<a href="http://www.williams-syndrome.org">Williams Syndrome Association</a>
			</p>
			
			<h4>Deaf-Blind</h4>
			<p>
			<a href="http://www.aadb.org">American Association of the Deaf Blind</a>
			</p>
			<p>
			<a href="http://www.helenkeller.org/national/">Helen Keller National Center for Deaf-Blind Youths &amp; Adults, 
			Technical Assistance Center</a></p>
			<p>
			<a href="http://www.nclid.unco.edu">National Center on Low Incidence Disabilities</a></p>
			<p>
			<a href="http://www.NFADB.org">National Family Association for Deaf-Blind</a>
			</p>
			<p>
			<a href="http://www.tr.wou.edu/dblink/index.htm">The National Information Clearinghouse on Children Who Are 
			Deaf-Blind DB Link</a>
			</p>
			
			<h4>Deaf and Hard of Hearing</h4>
			<p>
			<a href="http://www.agbell.org">Alexander Graham Bell Association for the Deaf and Hard of Hearing</a>
			</p>
			<p>
			<a href="http://www.deafchildren.org">American Society for Deaf Children</a>
			</p>
			<p>
			<a href="http://www.betterhearing.org">Better Hearing Institute, Hearing Helpline</a>
			</p>
			<p>
			<a href="http://www.beginningssvcs.com">BEGINNINGS For Parents of Children Who Are Deaf or Hard of Hearing, 
			Inc.</a>
			</p>
			<p>
			<a href="http://www.boystownhospital.org">Boys Town National Research Hospital</a></p>
			<p>
			<a href="http://www.handsandvoices.org">Hands and Voices</a>
			</p>
			<p>
			<a href="http://www.ihsinfo.org">International Hearing Society</a></p>
			<p>
			<a href="http://clerccenter.gallaudet.edu/infotogo/">Laurent Clerc National Deaf Education Center Gallaudet University</a></p>
			<p>
			<a href="http://www.nad.org">National Association of the Deaf</a>
			</p>
			<p>
			<a href="http://www.shhh.org">Hearing Loss Association of America</a>
			</p>
			
			<h4>Emotional or Behavioral Disabilities</h4>
			<p>
			<a href="http://www.aboutourkids.org">About our Kids</a>
			</p>
			<p>
			<a href="http://www.aacap.org">American Academy of Child &amp; Adolescent Psychiatry</a></p>
			<p>
			<a href="http://archpsyc.ama-assn.org">Archives of General Psychiatry</a></p>
<p>
			<a href="http://www.thebalancedmind.org">The Balanced Mind Foundation</a>
			</p>			<p>
			<a href="http://www.mentalhealth.org/child/">Caring for Every Child's Mental Health Campaign, The Center for 
			Mental Health Services</a></p>
			
			<p>
			<a href="http://www.samhsa.gov">Child, Adolescent &amp; Family Branch Center for Mental Health Services 
			(SAMHSA)</a></p>
			<p>
			<a href="http://www.childhoodanxietynetwork.org">Childhood Anxiety Network</a>
			</p>
			<p>
			<a href="http://www.conductdisorders.com">Conduct Disorders.com</a>
			</p>
			<p>
			<a href="http://www.drada.org">Depression and Related Affective Disorders Association (DRADA)</a></p>
			<p>
			<a href="http://www.ffcmh.org">Federation of Families for Children's Mental Health</a>
			</p>
			<p>
			<a href="http://www.mhsource.com">National Alliance for Research on Schizophrenia and Depression 
			(NARSAD)</a></p>
			<p>
			<a href="http://www.nationaleatingdisorders.org/p.asp?WebPage_ID=337">National Eating Disorders Association</a></p>
			<p>
			<a href="http://www.nami.org">National Alliance on Mental Illness</a></p>
			<p>
			<a href="http://www.nimh.nih.gov">National Institute of Mental Health (NIMH)</a>
			</p>
			<p>
			<a href="http://www.nmha.org">National Mental Health Association</a></p>
			<p>
			<a href="http://www.ocfoundation.org">Obsessive-Compulsive Foundation, Inc.</a></p>
			<p>
			<a href="../ebd/index.asp">PACER Center EBD Project</a></p>
			<p>
			<a href="http://mentalhealth.samhsa.gov/cmhs/P&A/">Protection &amp; Advocacy for Individuals with Mental Illness Program (PAIMI)</a></p>
			<p>
			<a href="http://www.bu.edu/cpr/reasaccom/">Reasonable Accommodations for People with Psychiatric Disabilities</a></p>
			<p>
			<a href="http://www.rtc.pdx.edu">Research and Training Center on Family Support and Children's Mental 
			Health</a></p>
			
			<h4>Genetic Disorders</h4>
			<p>
			<a href="http://www.kumc.edu/gec/support/">Genetic and Rare Conditions Site, Medical Genetics, University of 
			Kansas Medical Center</a>
			</p>
			<p>
			<a href="http://www.geneticalliance.org">Genetic Alliance</a>
			</p>
			<p>
			<a href="http://www.geneclinics.org">Gene-Tests-Gene Clinics</a>
			</p>
			<p>
			<a href="http://www.modimes.org">March of Dimes Birth Defects Foundation</a>
			</p>
			<p>
			<a href="http://www.cdc.gov/ncbddd">National Center on Birth Defects and Developmental Disabilities</a>
			</p>
			<p>
			<a href="http://www.rarediseases.org">National Organization for Rare Disorders (NORD)</a>
			</p>
			
			<h4>Health Impairments</h4>
			<p>
			<a href="http://www.aids-alliance.org/">AIDS Alliance for Children, Youth, and Families</a>
			</p>
			<p>
			<a href="http://www.aanma.org">Allergy and Asthma Network Mothers of Asthmatics</a></p>
			<p>
			<a href="http://www.theacpa.org">American Chronic Pain Association</a>
			</p>
			<p>
			<a href="http://www.diabetes.org/home.jsp">American Diabetes Association</a>
			</p>
			<p>
			<a href="http://www.painfoundation.org">American Pain Foundation</a>
			</p>
			<p>
			<a href="http://www.arthritis.org">Arthritis Foundation</a>
			</p>
			<p>
			<a href="http://cis.nci.nih.gov">Cancer Information Service</a>
			</p>
			<p>
			<a href="http://www.candlelighters.org">Candlelighters' Childhood Cancer Foundation</a>
			</p>
			<p>
			<a href="http://www.cfids.org">The CFIDS Association of American Chronic Fatigue and Immune 
			Dysfunction Syndrome</a>
			</p>
			<p>
			<a href="http://www.childrenwithdiabetes.com/index_cwd.htm">Children with Diabetes</a>
			</p>
			<p>
			<a href="http://www.ccfa.org">Crohn's and Colitis Foundation of America</a>
			</p>
			<p>
			<a href="http://www.cff.org/home/">Cystic Fibrosis Foundation</a>
			</p>
			<p>
			<a href="http://www.faces-cranio.org">FACES the National Craniofacial Association</a>
			</p>
			<p>
			<a href="http://www.familyvoices.org">Family Voices</a>
			</p>
			<p>
			<a href="http://www.foodallergy.org">The Food Allergy and Anaphylaxis Network</a></p>
			<p>
			<a href="http://www.primaryimmune.org">Immune Deficiency Foundation</a></p>
			<p>
			<a href="http://www.jdf.org">Juvenile Diabetes Research Foundation International (JDF)</a>
			</p>
			<p>
			<a href="http://www.lupus.org">Lupus Foundation of America, Inc.</a>
			</p>
			<p>
			<a href="http://www.ncemch.org">National Center for Education in Maternal Child Health</a>
			</p>
			<p>
			<a href="http://diabetes.niddk.nih.gov/">National Diabetes Information Clearinghouse (NDIC)</a>
			</p>
			<p>
			<a href="http://www.hemophilia.org">National Hemophilia Foundation</a>
			</p>
			<p>
			<a href="http://www.mpssociety.org">The National MPS Society, Inc. (Mucopolysaccharidoses)</a>
			</p>
			<p>
			<a href="http://www.albinism.org">National Organization for Albinism &amp; Hypopigmentation (NOAH)</a>
			</p>
			<p>
			<a href="http://www.OAANews.org">Organic Acidemia Association</a>
			</p>
			<p>
			<a href="../health/index.asp">PACER's Parent to Parent Health Information and Advocacy Center</a>
			</p>
			<p>
			<a href="http://www.pkids.org">Parents of Kids with Infectious Diseases</a>
			</p>
			<p>
			<a href="http://www.pwsausa.org">Prader-Willi Syndrome Association</a>
			</p>
			<p>
			<a href="http://www.cockayne-syndrome.org">Share and Care Cockayne Syndrome Network</a>
			</p>
			<p>
			<a href="http://www.sicklecelldisease.org">Sickle Cell Disease Association of America</a>
			</p>
			<p>
			<a href="http://www.umdf.org">United Mitochondrial Disease Foundation</a>
			</p>
			
			<h4>Learning Disabilities</h4>
			<p>
			<a href="http://pages.cthome.net/cbristol/capd.html">CAPD Parents' Page</a>
			</p>
			<p>
			<a href="http://www.interdys.org">The International Dyslexia Association</a>
			</p>
			<p>
			<a href="http://www.ldonline.org">LD Online</a>
			</p>
			<p>
			<a href="http://www.ldaamerica.org">Learning Disabilities Association of America</a>
			</p>
			<p>
			<a href="http://www.nldontheweb.org">NLD on the Web</a>
			</p>
			<p>
			<a href="http://www.ncld.org">National Center for Learning Disabilities</a></p>
			<p>
			<a href="http://www.ncapd.org">National Coalition on Auditory Processing Disorders, Inc. (NCAPD)</a>
			</p>
			<p>
			<a href="http://www.nlda.org">Nonverbal Learning Disorders Association</a>
			</p>
			<p>
			<a href="http://www.optimisticoutcomes.com">Optimistic Outcomes</a>
			</p>
			
			<h4>Neurological Disorders</h4>
			<p>
			<a href="http://www.achenet.org">American Council for Headache Education</a></p>
			<p>
			<a href="http://www.epilepsyfoundation.org">Epilepsy Foundation</a>
			</p>
			<p>
			<a href="http://www.hydroassoc.org">Hydrocephalus Foundation</a></p>
			<p>
			<a href="http://www.wemove.org/">Kids Move, (movement disorders)</a>
			</p>
			<p>
			<a href="http://www.lissencephaly.org">The Lissencephaly Network, Inc.</a>
			</p>
			<p>
			<a href="http://www.headaches.org">National Headache Foundation</a>
			</p>
			<p>
			<a href="http://www.nhfonline.org/aboutus.php">National Hydrocephalus Foundation</a>
			</p>
			<p>
			<a href="http://www.nf.org">National NF Foundation (Neurofibromatosis)</a></p>
			<p>
			<a href="http://www.nfinc.org">Neurofibromatosis, Inc.</a>
			</p>
			<p>
			<a href="http://www.tsa-usa.org">Tourette's Syndrome Association, Inc.</a></p>
			<p>
			<a href="http://www.tourettesyndrome.net">Tourette Syndrome "Plus"</a></p>
			<p>
			<a href="http://www.tsalliance.org">Tuberous Sclerosis Alliance</a>
			</p>
			
			<h4>Physical Disabilities</h4>
			<p>
			<a href="http://www.chasa.org">Children's Hemiplegia and Stroke Association (CHASA)</a></p>
			<p>
			<a href="http://www.easterseals.com/site/PageServer">Easter Seals</a>
			</p>
			<p>
			<a href="http://www.ednf.org">Ehlers Danlos National Foundation</a>
			</p>
			<p>
			<a href="http://www.fsma.org">Families of Spinal Muscular Atrophy</a>
			</p>
			<p>
			<a href="http://www.hgfound.org">Human Growth Foundation</a>
			</p>
			<p>
			<a href="http://www.helpinghandsgroup.org">Helping Hands (for families of children with upper limb differences)</a>
			</p>
			<p>
			<a href="http://www.faceit.org">Let's Face It USA</a>
			</p>
			<p>
			<a href="http://www.lpaonline.org">Little People of America</a>
			</p>
			<p>
			<a href="http://www.magicfoundation.org">The Magic Foundation</a></p>
			<p>
			<a href="http://www.mdausa.org">Muscular Dystrophy Association</a></p>
			<p>
			<a href="http://www.marfan.org/nmf/index.jsp">National Marfan Foundation</a>
			</p>
			<p>
			<a href="http://www.nationalmssociety.org">National Multiple Sclerosis Society</a></p>
			<p>
			<a href="http://www.spinalcord.org">National Spinal Cord Injury Association</a>
			</p>
			<p>
			<a href="http://www.oif.org/site/PageServer">Osteogenesis Imperfecta Foundation</a></p>
			<p>
			<a href="http://www.pediatricstrokenetwork.com">Pediatric Stroke Network</a>
			</p>
			<p>
			<a href="http://www.sbaa.org">Spina Bifida Association of America</a>
			</p>
			<p>
			<a href="http://www.ucp.org">United Cerebral Palsy Association</a>
			</p>
			
			<h4>Speech or Language Impairments</h4>
			<p>
			<a href="http://www.asha.org/default.htm">American Speech-Language-Hearing Association</a>
			</p>
			<p>
			<a href="http://www.apraxia-kids.org">Apraxia Kids</a>
			</p>
			<p>
			<a href="http://www.aphasia.org">National Aphasia Association</a>
			</p>
			<p>
			<a href="http://www.stuttering.com">National Center for Stuttering</a>
			</p>
			<p>
			<a href="http://www.nsastutter.org">National Stuttering Association</a>
			</p>
			
			<h4>Traumatic Brain Injury</h4>
			<p>
			<a href="http://www.biausa.org">Brain Injury Association</a>
			</p>
			<p>
			<a href="http://www.BISociety.org">Brain Injury Society</a>
			</p>
			<p>
			<a href="http://www.headinjury.com">Head Injury Hotline</a>
			</p>
			<p>
			<a href="http://www.internationalbrain.org">International Brain Injury Association</a>
			</p>
			
			<h4>Visually Impaired</h4>
			<p>
			<a href="http://www.acb.org">American Council of the Blind</a>
			</p>
			<p>
			<a href="http://www.afb.org">American Foundation for the Blind</a>
			</p>
			<p>
			<a href="http://www.blindness.org">Foundation Fighting Blindness</a>
			</p>
			<p>
			<a href="http://www.instituteforfamilies.org">Institute for Families of Children with Visual Impairments</a>
			</p>
			<p>
			<a href="http://www.spedex.com/napvi/">National Association for Parents of Children with Visual Impairments</a>
			</p>
			<p>
			<a href="http://www.nfb.org">National Federation of the Blind</a>
			</p>
			<p>
			<a href="http://www.nfb.org/nfb/Parents_and_Teachers.asp">National Organization of Parents of Blind Children</a>
			</p>
			
		</td>
	</tr>
</table>

</div>

<!--END CONTENT-->

</div>
</div>

<!--#include virtual="/footer.htm"-->

</div>

</body>
</html>