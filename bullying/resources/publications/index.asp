<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
'Get Bullying Publications recordset
Dim rs, rs_cmd
Set rs_cmd = Server.CreateObject ("ADODB.Command")
rs_cmd.ActiveConnection = MM_PACER_WEB_STRING
rs_cmd.CommandText = "SELECT * FROM Publications WHERE pub_type='handout' AND pub_bp='yes' AND pub_somali <> 'yes' AND pub_spanish <> 'yes' AND pub_hmong <> 'yes' ORDER BY pub_name;" 
rs_cmd.Prepared = true
Set rs = rs_cmd.Execute
rs_numRows = 0
Function IsDisabilityPub(pubCode)
Dim result, pubList
result = false
pubList = "BP-4, PHP-c101, BP-16, PHP-c149, BP-18,"
If InStr(pubList, pubCode & ",") > 0 Then
  result = true
End If
IsDisabilityPub = result
End Function
Sub DisplayCurrentRecord()
%>
<li>
    <div class="pub-description"><strong class="topline"><a id="<%=rs.Fields.Item("pub_code").Value%>" href="<%=(rs.Fields.Item("pub_link").Value)%>" target="_blank"><%=(rs.Fields.Item("pub_name").Value)%></a>
    <%If IsDate(rs.Fields.Item("pub_date").Value) Then
      If DateAdd("m", 3, rs.Fields.Item("pub_date").Value) > Now Then%>
      <span class="updateInfo">Updated: <%=MonthName(DatePart("m", rs.Fields.Item("pub_date").Value))%>&nbsp;<%=DatePart("yyyy", rs.Fields.Item("pub_date").Value)%></span>
      <%End If 
      End if%>
    </strong>
     <p><%=rs.Fields.Item("pub_description").Value%></p>
    </div>
</li>
<%
End Sub
%>

<!--#include virtual="/bullying/templates/header.asp"-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="" />
<title>National Bullying Prevention Center - Publications</title>

<meta property="og:title" content="" />
<meta property="og:url" content="" />
<meta property="og:image" content="http://www.pacer.org/bullying/nbpm/images/unityDay-fb.jpg" />
<meta property="og:description" content="National Bullying Prevention Center - Publications" />

<link href="/css/flexbox-responsive-min.css" rel="stylesheet" type="text/css" />
</head>
<body class="twocol">
<div class="container">
<a id="skiptocontent" href="#maincontent">Skip to main content</a>

<!--#include virtual="/bullying/templates/page-header-nav.asp"-->

<div class="breadcrumb"> <a href="/bullying/">Home</a> / <a href="/bullying/resources/">Resources</a> /</div>

<!-- ########################## LEFT NAV ########################################### -->
<div class="sidebar1">
    <!--#include virtual="/bullying/resources/nav.html"-->
</div>
<script type="text/javascript">
	var currId="publications-main";
	var showTree = "publications-sub";
	var showTree2 = "none";
</script>

<script type="text/javascript">
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

<!-- ########################## MAIN CONTENT ########################################### -->


<div class="content">


  <h1 id="maincontent">PACER NBPC Publications</h1>
  <%If rs.EOF Then%>
  <h1 style="color:red">Error: No Database Connection Found</h1>
  <%End If%>
  <ul id="pubs-list">




   <li id="NBPC-Flyer">
     <div class="flex" id="Row1">
        <aside class="flexItemThumb">
         <img src="/bullying/images/NBPC-Flyer-sml.jpg" alt="" />
        </aside>
        <article class="flexItemDescription">
            <a href="/bullying/pdf/NBPC-flyer.pdf" target="_blank">PACER&rsquo;s National Bullying Prevention Center – Informational Flyer for Events, Activities and Promotions</a>
       		 <p>Download  this free, colorful, and informative 8 ½ x 11 (2-sided) flyer that outlines the  creative resources, outreach activities, and opportunities available from  PACER&rsquo;s National Bullying Prevention Center.  Print the flyer and use it for  your local event, activity, or fundraiser. Limited quantities of pre-printed  flyers are also available by emailing <a href="mailto:bullying411@pacer.org">bullying411@pacer.org</a> and providing your name, organization, address, information on the  event/activity/fundraiser where you&rsquo;ll be using them, and the quantity being  requested.
           </p>
         </article>
      </div>
    </li>


     <li id="sticksAndStones">
    	 <h2>Order the Book</h2>
        <div class="pub-description">

          <div class="flex" id="Row1">
             <article class="flexItemDescription">
               <strong class="topline">Beyond Sticks &amp; Stones: How to Help Your Child Address Bullying</strong>
            		<p>An important book that offers real-world bullying prevention  strategies for children at home, in school, and online. It contains the latest  information and practical tools that can help parents and others take action  against bullying. Written and designed by staff of PACER&rsquo;s National Bullying  Prevention Center, the book was developed to help parents protect their child  or someone they know from being bullied, and to help parents be proactive in  their community in addressing bullying.</p>
              </article>
              <aside class="flexItemThumb">
               <img  src="/bullying/resources/publications/images/sticks-and-stones-2013-cover.jpg" alt="National Bullying Prevention Center Informational Flyer" />
              </aside>
           </div>


      		<p>The book features information that is also in many of PACER&rsquo;s  handouts:</p>
      		<ul style="list-style:disc">
      			<li>Discussion on the dynamics of bullying</li>
      			<li>Strategies on how parents can work with their child</li>
      			<li>Tips to help parents work with their child&rsquo;s school</li>
      			<li>Information about legal rights</li>
      			<li>A special section for parents of children with disabilities</li>
      			<li>Specific ways for schools, communities, teens and children to become  &ldquo;Champions Against Bullying&rdquo;</li>
      			<li>Comprehensive list of bullying prevention resources</li>
      		</ul>
      		<p>Throughout the book, there are valuable comments from children and  teens that illustrate the face of bullying today. <a href="/bullying/resources/publications/IntroBeyondSticksStones.pdf" target="_blank">Read the introduction to Beyond Sticks &amp; Stones</a>.</p>
          <p><strong>$5 each</strong> | Publication Code:  BP-7 | Created/Updated: 2013 </p>

      		<p>
      			Call to Order: 952-838-9000<br />
      			To order by mail, use this <a href="/publications/OrderForm.pdf" target="_blank">Publication  Order Form</a></p>
      	 </div>
       </li>

      <li>
      <h2>Kids Against Bullying Classroom Activity Book</h2>

      <div class="flex" id="Row1">
        <aside class="flexItemThumb">
            <img style="display:block; margin:0 auto" src="/bullying/classroom/elementary/activities/images/activity-book-thumb.jpg" />
         </aside>
         <article class="flexItemDescription">
           <p>Eight-page classroom activity book designed with educational activities that incorporate the KidsAgainstBullying.org website. It engages young learners in creative ways, incorporating the Club Crew cast from the Kids Against Bullying website. The content provides activities to help students think about their feelings, explore responses to bullying situations, and take the pledge to be a Kid Against Bullying. Free to download,
             <a href="http://www.pacer.org/bullying/classroom/elementary/activities/pdf/Activity-Workbook.pdf" target="_blank">full color</a> or <a href="http://www.pacer.org/bullying/classroom/elementary/activities/pdf/Activity-Workbook-bw.pdf" target="_blank">black/white</a>. Full color print booklets  available $25 for 25 copies | BP-32<br clear="all" />
           </p>
          </article>
       </div>
      </li>



   <li id="notifytheschool">
<h2>Downloadable Handouts and Information</h2>

<div class="alertBox" style="float:left; width: 100%;">Check Out our <a href="/bullying/resources/publications/spanish-materials.asp">Spanish</a> and <a href="/bullying/resources/publications/somali-materials.asp">Somali</a> translated materials.</div>

<div class="pub-description" style="clear:right;">
     <p class="topline"><a href="http://www.pacer.org/publications/bullypdf/BP-18.pdf" target="_blank">Bullying and Harassment of Students with Disabilities - Top 10 Facts for Parents, Educators and Students</a></p>
     <p>This handout provides an overview of important facts for parents, educators and students to know about students with disabilities and bullying.<br />
       Available in <a href="/publications/bullypdf/BP-18s.pdf" target="_blank">Spanish</a> and <a href="/publications/bullypdf/BP-18h.pdf" target="_blank">Hmong</a></p>
     </div>

     <div class="pub-description" style="clear:right;">
     <p class="topline">Notifying the School About Bullying &ndash; Using a Template Letter (<a href="http://www.pacer.org/publications/bullypdf/BP-19.pdf" target="_blank">View as a handout</a>) | (<a href="/publications/bullypdf/BP-19s.pdf" target="_blank">Also translated into Spanish</a>)</p>
     <p>Parents should contact school staff each time their child informs them that he or she has been bullied.  PACER Center has created template letters that parents may use as a guide for writing a letter to their child’s school.  These letters contain standard language and “fill in the blank” spaces so the letter can be customized for your child, including letters customized for children with disabilities. </p>
     <ul>
      <li>Notifying the School About A Bullying Situation (<a href="/bullying/pdf/Notifying-School-About-Bullying.doc" target="_blank">Word Doc</a> | <a href="/bullying/pdf/Notifying-School-About-Bullying.pdf" target="_blank">Pdf</a>)</li>
      <li><em>When the bullying is based on the child's disability, federal laws can also apply under Section 504, Individuals with Disabilities Act (IDEA) and Americans with Disabilities Act Amendments Act of 2008(ADAAA).</em></li>
      <li>Version for a Student with a 504 Plan (<a href="/bullying/pdf/Student-w-504-Plan-Notifying-School-About-Bullying.doc" target="_blank">Word Doc</a> |<a href="/bullying/pdf/Student-w-504-Plan-Notifying-School-About-Bullying.pdf" target="_blank"> Pdf</a>)</li>
      <li>Version for a Student with an IEP Plan (<a href="/bullying/pdf/Student-w-IEP-Notifying-School-About-Bullying.doc" target="_blank">Word Doc</a> | <a href="/bullying/pdf/Student-w-IEP-Notifying-School-About-Bullying.pdf" target="_blank">Pdf</a>)</li>
     </ul>
     <p>PACER Center&rsquo;s sample letter(s) can serve two purposes.</p>
     <ul>
      <li><strong>First</strong>, the letter will alert school administration of the bullying and your desire for interventions against the bullying.</li>
      <li><strong>Second</strong>, the letter can serve as your written record when referring to events. The record (letter) should be factual and absent of opinions or emotional statements.</li>
     </ul>
     <p>For a complete listing of state  laws, visit the interactive map at <a href="http://www.stopbullying.gov/laws/index.html" target="_blank">StopBullying.Gov.</a></p>
     <p> Data is important.&nbsp; Remember, <strong>if it is not in writing, it does not exist</strong>. Please be sure to keep a copy of the letter(s) for your records.&nbsp; These records can help parents keep a concise, accurate timeline of events. These sample letters are general in nature in order to serve all potential users.
     <p> Please contact PACER&rsquo;s National Bullying Prevention Center for more specific guidance regarding your particular circumstances.</p>
    </div>

   </li>
   <li>

     <div class="flex" id="Row1">
       <aside class="flexItemThumb">
           <img src="/bullying/resources/publications/images/student-action-plan.jpg" />
        </aside>
        <article class="flexItemDescription">
          <p>Are you an educator working with a student being bullied, a parent looking for ways to help your child change their behavior, or a student who wants to take action against bullying, but isn’t sure what to do? As a student, bullying is something that impacts you, your peers, and your school – whether you’re the target of bullying, a witness, or the person who bullies. Bullying can end, but that won’t happen unless students, parents, and educators work together and take action.</p>
         </article>
      </div>


   </li>
<%'################################### Database ITEMS ###################################
 Do Until rs.EOF
	If Not IsDisabilityPub(rs.Fields.Item("pub_code").Value) Then
		DisplayCurrentRecord
	End If
 	rs.MoveNext
 Loop
 '################################# END Database ITEMS ################################# %>
 </ul>
<h2 class="SectionBreak" id="disability-info">Students With Disabilities</h2>
  <ul>

<li id="notifytheschool2">
    <div class="pub-description">
     <p class="topline">Notifying the School About Bullying &ndash; Using a Template Letter (<a href="http://www.pacer.org/publications/bullypdf/BP-19.pdf" target="_blank">View as a handout</a>)</p>
     <p> Parents should contact school staff each time their child informs them that he or she has been bullied.&nbsp; PACER Center has created template letters that parents may use as a guide for writing a letter to their child&rsquo;s school. &nbsp;These letters contain standard language and &ldquo;fill in the blank&rdquo; spaces so the letter can be customized for your child&rsquo;s situation. </p>
     <ul>
      <li><em>When the bullying is based on the child's disability, federal laws can also apply under Section 504, Individuals with Disabilities Act (IDEA) and Americans with Disabilities Act Amendments Act of 2008(ADAAA).</em></li>
      <li>Version for a Student with a 504 Plan (<a href="/bullying/pdf/Student-w-504-Plan-Notifying-School-About-Bullying.doc" target="_blank">Word Doc</a> |<a href="/bullying/pdf/Student-w-504-Plan-Notifying-School-About-Bullying.pdf" target="_blank"> Pdf</a>)</li>
      <li>Version for a Student with an IEP Plan (<a href="/bullying/pdf/Student-w-IEP-Notifying-School-About-Bullying.doc" target="_blank">Word Doc</a> | <a href="/bullying/pdf/Student-w-IEP-Notifying-School-About-Bullying.pdf" target="_blank">Pdf</a>)</li>
 </ul>
 <p>Data is important.&nbsp; Remember, <strong>if it is not in writing, it does not exist</strong>.&nbsp; Please be sure to keep a copy of the letter(s) for your records.&nbsp; These records can help parents keep a concise, accurate timeline of events. These sample letters are general in nature in order to serve all potential users.</p>
<p>Please contact PACER&rsquo;s National Bullying Prevention Center for more specific guidance regarding your particular circumstances.</p>
    </div>
   </li>



<%'################################### Disability Database ITEMS ###################################
 rs.MoveFirst
 Do Until rs.EOF
	If IsDisabilityPub(rs.Fields.Item("pub_code").Value) Then
		DisplayCurrentRecord
	End If
 	rs.MoveNext
 Loop
 '################################# END Disability Database ITEMS ################################# %>
   <li>
    <div class="pub-description"><strong class="topline"><a href="http://www.ncwd-youth.info/information-brief-29" target="_blank">Bullying and Disability Harassment in the Workplace: What Youth Should Know</a></strong>
     <p> This InfoBrief was developed by PACER Center in partnership with the <a href="http://www.ncwd-youth.info/" target="_blank">National Collaborative on Workforce and Disability for Youth</a>. The InfoBrief is designed to help youth, including youth with disabilities, recognize signs of bullying in the workplace. It offers examples of bullying situations at work and strategies to help address the issue. Much is understood about the negative consequences of bullying at school, but youth should also be made aware that bullying does not always end at school and is often encountered at work. </p>
    </div>
   </li>
  </ul>
  <h2>Articles by PACER&rsquo;s NBPC Staff</h2>
  <p><a href="https://www.stopbullying.gov/blog/2016/10/17/unity-day" target="_blank">Preventing bullying of students with disabilities: Four things parents and educators should know</a><br />
    Did you know that a student with a disability is two to three times <a href="http://www.pacer.org/bullying/resources/stats.asp" target="_blank">more likely to be bullied</a>? Bullying can affect a student’s physical and emotional health, and it can interfere with a student’s right to receive an education. Posted to StopBullying.gov blog on October 17, 2016.</p>

    <div class="flex" id="Row1">
       <article class="flexItemDescription">
         <a href="http://ptaourchildren.org/2017/04/14/understand-cyberbullying/" target="_blank">Helping Your Child Understand Cyberbullying</a><br>
         It was just a generation ago that kids and teens were asking their parents for a phone line in their room so they could easily and privately connect with more friends. Today, a student’s desire to connect with friends has not changed, but the options for doing so have grown tremendously. While young people’s access to technology has evolved over the years, so has the way we communicate with children about online safety and cyberbullying. Posted to Spring 2017 edition of <a href="http://ptaourchildren.org/2017/04/14/understand-cyberbullying/" target="_blank">Our Children</a>, the National PTA Magazine.
       </article>
        <aside class="flexItemThumb">
          <img src="/bullying/resources/publications/images/pta-magazine-cover.jpg" width="250" height="325" class="fltrt" alt=""/>
        </aside>
     </div>

  <p><a href="https://www.babble.com/parenting/bullying-affects-all-of-our-kids-even-if-they-arent-the-target/" target="_blank">Bullying Affects All of Our Kids, Even If They Aren't the Target</a><br />
    Bullying affects everyone involved. Whether the child is the target, a witness, or the person who bullies, the end result is that everyone feels less safe. Children aren’t responsible for resolving a bullying situation, but their opinions about how to proceed should be encouraged and respected. Posted on Babble.com.</p>
  <p><a href="https://www.babble.com/parenting/speaking-up-about-being-bullied-isnt-tattling-and-our-kids-need-to-know-the-difference/" target="_blank">Speaking Up About Being Bullied Isn't &quot;Tattling&quot;</a><br />
    Many children who are bullied don’t report it. Younger children often don’t recognize bullying behaviors, and may be afraid they’ll be called a tattletale, or worse, if they tell an adult. It’s especially important to talk openly with your young child about bullying behavior, and to explain the difference between tattling and telling. Posted on Babble.com.</p>
  <p><a href="https://www.babble.com/parenting/tips-for-raising-an-empathetic-child-starting-in-preschool/" target="_blank">5 Tips for Raising an Empathetic Child - Starting in Preschool</a><br />
  Anyone who’s raised a child knows that babies and toddlers aren’t yet capable of understanding empathy, but children who are just a little bit older can surprise you with their capacity for learning caring behavior. This blog post shares simple ways to teach empathy to preschool-aged children. Posted on Babble.com.</p>
	  <p><a href="https://www.babble.com/parenting/what-if-your-child-is-the-one-doing-the-bullying/" target="_blank">What If Your Child Is the One Doing the Bullying?</a><br />
    The news that your child is bullying can come as a surprise to parents and reactions vary greatly. Denial is a common initial response – “Not my kid!” – followed by confusion – “How could this happen?” But eventually, the reality sinks in, and that’s when the question becomes, “What should I do?”</p>
<br class="clearfloat" />



<!--#include virtual="/bullying/templates/footer.asp"-->
