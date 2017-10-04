<!--#include virtual="/templates/header.asp"-->
<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim rs_links__MMColParam, cat_name
rs_links__MMColParam = 0
If (Request.QueryString("category") <> "") Then 
  rs_links__MMColParam = cInt(Request.QueryString("category"))
End If


%>

<%
'------------------------------------------------------------------------------------------------
' Get the Categories List for the Categories Table of Contents
'------------------------------------------------------------------------------------------------
Dim rs_cat
Dim rs_cat_cmd
Dim rs_cat_numRows
Dim rs_gen_count
Dim rs_spec_count
rs_gen_count = 0
rs_spec_count = 0

Set rs_cat_cmd = Server.CreateObject ("ADODB.Command")
rs_cat_cmd.ActiveConnection = MM_PACER_WEB_STRING
rs_cat_cmd.CommandText = "SELECT Parent_Categories.ID AS cat_ID, Parent_Categories.specific_disability, Parent_Categories.category_type, Parent_Categories.category_name, Count(Parent_Links.category) AS CountOfcategory" & _
" FROM Parent_Links INNER JOIN Parent_Categories ON Parent_Links.category = Parent_Categories.ID" & _
" GROUP BY Parent_Categories.ID, specific_disability, category_name, category_type" & _
" HAVING (Count(Parent_Links.category))>0 AND category_type = 'Org-Link'" & _
" ORDER BY specific_disability, category_name;" 
rs_cat_cmd.Prepared = true
Set rs_cat = rs_cat_cmd.Execute

Do Until rs_cat.EOF
	If rs_cat("specific_disability") = "no" Then
		rs_gen_count = rs_gen_count + 1
	End If
	If rs_cat("specific_disability") = "yes" Then
		rs_spec_count = rs_spec_count + 1
	End If
	If cInt(rs_cat("cat_ID")) = rs_links__MMColParam Then
		cat_name = rs_cat("category_name")
	End If
	rs_cat.MoveNext
Loop
rs_gen_count = Round(rs_gen_count / 2)
rs_spec_count = Round(rs_spec_count / 2)
rs_cat.MoveFirst
%>

<%
'------------------------------------------------------------------------------------------------
'Get the list of Links For the Current Category as requested in the Url Parameter ?Category=##
'-------------------------------------------------------------------------------------------------
Dim rs_links
Dim rs_links_cmd
Dim rs_links_numRows

Set rs_links_cmd = Server.CreateObject ("ADODB.Command")
rs_links_cmd.ActiveConnection = MM_PACER_WEB_STRING
rs_links_cmd.CommandText = "SELECT *, Parent_Site_Type.ID AS Type_ID" & _
" FROM Parent_Links LEFT JOIN Parent_Site_Type ON Parent_Links.parent_site_type = Parent_Site_Type.parent_site_type" & _
" WHERE (Parent_Links.category = " & rs_links__MMColParam & ") OR (Parent_Links.category_two = " & rs_links__MMColParam & ") OR (Parent_Links.category_three = " & rs_links__MMColParam & ") OR (Parent_Links.category_four = " & rs_links__MMColParam & ")" & _
" ORDER BY Parent_Site_Type.order_by, Parent_Links.title;" 

rs_links_cmd.Prepared = true
'Response.Write(rs_links_cmd.CommandText)
Set rs_links = rs_links_cmd.Execute
'
%>
<link rel="stylesheet" type="text/css" href="/parent/css/links.css" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="Parents Helping Parents: Links" />
<title>Parents Helping Parents: Links<</title>
<meta property="og:title" content="Parents Helping Parents: Links<" />
<meta property="og:url" content="http://www.pacer.org/parent/links.asp" />
<meta property="og:image" content="http://www.pacer.org/images/PACER_fb.jpg" />
<meta property="og:description" content="Parents Helping Parents: Links" />
</head>

<script type="text/javascript" src="/css/menu.js"></script>

<body>
<!--#include virtual="/templates/page-header-nav.asp"-->
<div id="topbar">
    <div id="breadcrumb">
        <a href="/">Home</a> / <a href="/pandr/">Programs &amp; Resources</a> /
        <h1>Parents Helping Parents - Links</h1>
        <p style="font-size:90%;padding:0;margin:0;">PACER is the Minnesota Parent Training and Information Center, funded by the U.S. Department of Education's Office of Special Education Programs.</p>
    </div>
</div>

<script type="text/javascript">
	// ID and SubId to be Orange
	var currId="parent_links";
	var currSubId="none";
	// any Subtree that I want to Display
	var showTree = "none";
</script>

<div id="leftbar">
    <h2 style="display: none;">Parents Helping Parents Navigation Menu</h2>
    <!--#include virtual="/templates/leftNav.html" -->
</div>


<script type="text/javascript">
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
        <table id="categorytable" cellpadding="0" cellspacing="0">
            <tr>
                <th colspan="2"><h3>General Categories</h3></th>
                <th colspan="2"><h3>Specific Disability Categories</h3></th>
            </tr>
            <tr>
                <td><ul>
        <%
            Dim gen_count
            gen_count = 0
            Do Until rs_cat.EOF
                If rs_cat("specific_disability") = "no" Then
                    gen_count = gen_count + 1
        %>
                    <li><a href="/parent/links.asp?category=<%=rs_cat("cat_ID")%>"><%=rs_cat("category_name")%></a></li>
        <%
                    If gen_count = rs_gen_count Then
                    'Start the Second Column for This List
                        Response.Write(VbCrLf & "</ul></td>" & VbCrLf & "<td><ul>" & VbCrLf)
                    End If
                End If
                rs_cat.MoveNext
            Loop
        %>
                </ul></td>
                <td><ul>
        <%
            rs_cat.MoveFirst
            Do Until rs_cat.EOF
                If rs_cat("specific_disability") = "yes" Then
                    spec_count = spec_count + 1

        %>
                    <li><a href="/parent/links.asp?category=<%=rs_cat("cat_ID")%>"><%=rs_cat("category_name")%></a></li>
        <%
                    If spec_count = rs_spec_count Then
                    'Start the Second Column for This List
                        Response.Write(VbCrLf & "</ul></td>" & VbCrLf & "<td><ul>" & VbCrLf)
                    End If
                End If
                rs_cat.MoveNext
            Loop
        %>
                </ul></td>
            </tr>
        </table>

        <%If rs_links.EOF Then
            If rs_links__MMColParam > 0 Then
                Response.Write("<h1 style=""color:red"">Error: No DATA Found</h1>")
            Else
                Response.Write("<h2 id=""cat-heading""><span class=""fa fa-arrow-up""></span> Please select a Category from above <span class=""fa fa-arrow-up""></span></h2>")
            End If
          Else
        %>
            <h2 id="cat-heading">Category: <%=cat_name%></h2>
        <%
          End If
        %>
        <%
        Dim currentType, currentFloat
        currentType = 0
        currentFloat = "fltl"
        Do Until rs_links.EOF
                'Set the Current Type we are displaying
                currentType = cInt(rs_links("Type_ID"))
                'Build the Beginning of this section
        %>
                <div class="sitelist <%=currentFloat%>"><h3><%=rs_links.Fields.Item("parent_site_description").Value%></h3>
                <ul>
        <%
            Do Until currentType <> rs_links("Type_ID")
                'Loop Until we hit the next category
        %>
                <li><a href="<%=rs_links("url")%>" target="_blank"><%=rs_links.Fields.Item("title").Value%></a></li>

        <%
                rs_links.MoveNext
                If rs_links.EOF Then Exit Do
            Loop
        %>
            </ul></div>
        <%
            'Flip the Floating of the Div from the previous one
            If currentFloat = "fltr" Then
                currentFloat = "fltl"
            Else
                currentFloat = "fltr"
            End If

        Loop
        %>

        <div style="margin-top:50px; height:50px; border-bottom:1px solid #ccc; margin-bottom:50px; clear:both;">&nbsp;</div>
        <h3>Primary Special Education Resources</h3>
        <ul>
            <li>
                <h3><a href="http://www.hhs.gov/ocr/office/" target="_blank">Office of Civil Rights (OCR) <span class="fa fa-external-link"></span></a> <em> - hhs.gov</em></h3>
                <p>The Office of Civil Rights&rsquo; (OCR) core mission as a law enforcement   agency is to ensure that recipients of federal funds do not engage in   discriminatory conduct.</p>
            </li>

            <li>
                <h3><a href="http://education.state.mn.us/MDE/dse/sped/due/" target="_blank">Special Education Forms <span class="fa fa-external-link"></span></a><em> - Minnesota Department of Education</em></h3>
                <p> The recommended special education due process forms include   information  on parents' and students' rights and due process options as   well as  documents a district may choose to use to communicate with the   parent,  track a student&rsquo;s progress and create and maintain   Individualized  Education Programs (IEP).</p>
            </li>

            <li>
                <h3><a href="https://www.revisor.mn.gov/pubs/" target="_blank">Minnesota Special Education Laws <span class="fa fa-external-link"></span></a><em> - MN.gov</em></h3>
                <p>Special education statutes are under section 125A and the rules are under section 3525.</p>
            </li>

            <li>
                <h3><a href="http://idea.ed.gov/explore/home.html" target="_blank">Federal Special Education Laws <span class="fa fa-external-link"></span></a><em> - ED.gov</em></h3>
                <p>The Individuals with Disabilities Education Act (IDEA) and IDEA regulations.</p>
            </li>

            <li>
                <h3><a href="http://education.state.mn.us/MDE/fam/sped/conf/compl/index.htm" target="_blank">Minnesota's Complaint Procedure <span class="fa fa-external-link"></span></a> <em> - Minnesota Department of Education</em></h3>
                <p>The special education complaint system is designed to ensure that   all students with disabilities are provided a free appropriate public   education. A complaint can be filed about any entity that provides   publicly funded educational services directly to students, that has   violated a state or federal special education law or rule. Before filing   a complaint, Minnesota Department of Education (MDE) encourages parents   or other persons to first contact the school district&rsquo;s Director of   Special Education, who may be able to help resolve the issue. </p>
                <div class="resources">
                    <h4>More information is available from:</h4>
                    <ul>
                      <li> <a href="http://www.pacer.org/disputeresolution/"> PACER&rsquo;s Dispute Resolution section</a></li>
                      <li> <a href="http://education.state.mn.us/MDE/SchSup/ComplAssist/Comp/index.html" target="_blank">Minnesota Department of Education Special Education Complaints section <span class="fa fa-external-link"></span></a></li>
                    </ul>
                </div>
            </li>
        </ul>


    <!--END CONTENT-->
    <!--#include virtual="/templates/footer.asp"-->

<%
rs_links.Close()
Set rs_links = Nothing

rs_cat.Close()
Set rs_cat = Nothing

%>
