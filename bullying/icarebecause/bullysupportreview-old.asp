<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>

<%
If Session("user") <> "bully" Then
      Response.Redirect "bullysupportaccess.asp"
End if
%>

<!-- 
	 ###############################################################################################################
	 ################################### Start Master Page Code ###################################################
	 ###############################################################################################################

-->

<!--#include virtual="/Connections/PACER_WEB.asp" -->
<%
Dim ICareRecordSet__MMColParam
ICareRecordSet__MMColParam = "no"
If (Request("MM_EmptyValue") <> "") Then 
  ICareRecordSet__MMColParam = Request("MM_EmptyValue")
End If
%>
<%
Dim ICareRecordSet
Dim ICareRecordSet_cmd
Dim ICareRecordSet_numRows

Set ICareRecordSet_cmd = Server.CreateObject ("ADODB.Command")
ICareRecordSet_cmd.ActiveConnection = MM_PACER_WEB_STRING
ICareRecordSet_cmd.CommandText = "SELECT * FROM dbo.icarebecause WHERE bullysupport_online = ? ORDER BY bullysupport_date DESC" 
ICareRecordSet_cmd.Prepared = true
ICareRecordSet_cmd.Parameters.Append ICareRecordSet_cmd.CreateParameter("param1", 200, 1, 24, ICareRecordSet__MMColParam) ' adVarChar

Set ICareRecordSet = ICareRecordSet_cmd.Execute
ICareRecordSet_numRows = 0
%>
<%
Dim Repeat1__numRows
Dim Repeat1__index

Repeat1__numRows = 30
Repeat1__index = 0
ICareRecordSet_numRows = ICareRecordSet_numRows + Repeat1__numRows
%>
<%
'  *** ICareRecordSet Stats, Move To Record, and Go To Record: declare stats variables

Dim ICareRecordSet_total
Dim ICareRecordSet_first
Dim ICareRecordSet_last

' set the record count
ICareRecordSet_total = ICareRecordSet.RecordCount

' set the number of rows displayed on this page
If (ICareRecordSet_numRows < 0) Then
  ICareRecordSet_numRows = ICareRecordSet_total
Elseif (ICareRecordSet_numRows = 0) Then
  ICareRecordSet_numRows = 1
End If

' set the first and last displayed record
ICareRecordSet_first = 1
ICareRecordSet_last  = ICareRecordSet_first + ICareRecordSet_numRows - 1

' if we have the correct record count, check the other stats
If (ICareRecordSet_total <> -1) Then
  If (ICareRecordSet_first > ICareRecordSet_total) Then
    ICareRecordSet_first = ICareRecordSet_total
  End If
  If (ICareRecordSet_last > ICareRecordSet_total) Then
    ICareRecordSet_last = ICareRecordSet_total
  End If
  If (ICareRecordSet_numRows > ICareRecordSet_total) Then
    ICareRecordSet_numRows = ICareRecordSet_total
  End If
End If
%>
<%
' *** ICareRecordSet Stats: if we don't know the record count, manually count them

If (ICareRecordSet_total = -1) Then

  ' count the total records by iterating through the ICareRecordSet
  ICareRecordSet_total=0
  While (Not ICareRecordSet.EOF)
    ICareRecordSet_total = ICareRecordSet_total + 1
    ICareRecordSet.MoveNext
  Wend

  ' reset the cursor to the beginning
  If (ICareRecordSet.CursorType > 0) Then
    ICareRecordSet.MoveFirst
  Else
    ICareRecordSet.Requery
  End If

  ' set the number of rows displayed on this page
  If (ICareRecordSet_numRows < 0 Or ICareRecordSet_numRows > ICareRecordSet_total) Then
    ICareRecordSet_numRows = ICareRecordSet_total
  End If

  ' set the first and last displayed record
  ICareRecordSet_first = 1
  ICareRecordSet_last = ICareRecordSet_first + ICareRecordSet_numRows - 1
  
  If (ICareRecordSet_first > ICareRecordSet_total) Then
    ICareRecordSet_first = ICareRecordSet_total
  End If
  If (ICareRecordSet_last > ICareRecordSet_total) Then
    ICareRecordSet_last = ICareRecordSet_total
  End If

End If
%>
<%
Dim MM_paramName 
%>
<%
' *** Move To Record and Go To Record: declare variables

Dim MM_rs
Dim MM_rsCount
Dim MM_size
Dim MM_uniqueCol
Dim MM_offset
Dim MM_atTotal
Dim MM_paramIsDefined

Dim MM_param
Dim MM_index

Set MM_rs    = ICareRecordSet
MM_rsCount   = ICareRecordSet_total
MM_size      = ICareRecordSet_numRows
MM_uniqueCol = ""
MM_paramName = ""
MM_offset = 0
MM_atTotal = false
MM_paramIsDefined = false
If (MM_paramName <> "") Then
  MM_paramIsDefined = (Request.QueryString(MM_paramName) <> "")
End If
%>
<%
' *** Move To Record: handle 'index' or 'offset' parameter

if (Not MM_paramIsDefined And MM_rsCount <> 0) then

  ' use index parameter if defined, otherwise use offset parameter
  MM_param = Request.QueryString("index")
  If (MM_param = "") Then
    MM_param = Request.QueryString("offset")
  End If
  If (MM_param <> "") Then
    MM_offset = Int(MM_param)
  End If

  ' if we have a record count, check if we are past the end of the ICareRecordSet
  If (MM_rsCount <> -1) Then
    If (MM_offset >= MM_rsCount Or MM_offset = -1) Then  ' past end or move last
      If ((MM_rsCount Mod MM_size) > 0) Then         ' last page not a full repeat region
        MM_offset = MM_rsCount - (MM_rsCount Mod MM_size)
      Else
        MM_offset = MM_rsCount - MM_size
      End If
    End If
  End If

  ' move the cursor to the selected record
  MM_index = 0
  While ((Not MM_rs.EOF) And (MM_index < MM_offset Or MM_offset = -1))
    MM_rs.MoveNext
    MM_index = MM_index + 1
  Wend
  If (MM_rs.EOF) Then 
    MM_offset = MM_index  ' set MM_offset to the last possible record
  End If

End If
%>
<%
' *** Move To Record: if we dont know the record count, check the display range

If (MM_rsCount = -1) Then

  ' walk to the end of the display range for this page
  MM_index = MM_offset
  While (Not MM_rs.EOF And (MM_size < 0 Or MM_index < MM_offset + MM_size))
    MM_rs.MoveNext
    MM_index = MM_index + 1
  Wend

  ' if we walked off the end of the ICareRecordSet, set MM_rsCount and MM_size
  If (MM_rs.EOF) Then
    MM_rsCount = MM_index
    If (MM_size < 0 Or MM_size > MM_rsCount) Then
      MM_size = MM_rsCount
    End If
  End If

  ' if we walked off the end, set the offset based on page size
  If (MM_rs.EOF And Not MM_paramIsDefined) Then
    If (MM_offset > MM_rsCount - MM_size Or MM_offset = -1) Then
      If ((MM_rsCount Mod MM_size) > 0) Then
        MM_offset = MM_rsCount - (MM_rsCount Mod MM_size)
      Else
        MM_offset = MM_rsCount - MM_size
      End If
    End If
  End If

  ' reset the cursor to the beginning
  If (MM_rs.CursorType > 0) Then
    MM_rs.MoveFirst
  Else
    MM_rs.Requery
  End If

  ' move the cursor to the selected record
  MM_index = 0
  While (Not MM_rs.EOF And MM_index < MM_offset)
    MM_rs.MoveNext
    MM_index = MM_index + 1
  Wend
End If
%>
<%
' *** Move To Record: update ICareRecordSet stats

' set the first and last displayed record
ICareRecordSet_first = MM_offset + 1
ICareRecordSet_last  = MM_offset + MM_size

If (MM_rsCount <> -1) Then
  If (ICareRecordSet_first > MM_rsCount) Then
    ICareRecordSet_first = MM_rsCount
  End If
  If (ICareRecordSet_last > MM_rsCount) Then
    ICareRecordSet_last = MM_rsCount
  End If
End If

' set the boolean used by hide region to check if we are on the last record
MM_atTotal = (MM_rsCount <> -1 And MM_offset + MM_size >= MM_rsCount)
%>
<%
' *** Go To Record and Move To Record: create strings for maintaining URL and Form parameters

Dim MM_keepNone
Dim MM_keepURL
Dim MM_keepForm
Dim MM_keepBoth

Dim MM_removeList
Dim MM_item
Dim MM_nextItem

' create the list of parameters which should not be maintained
MM_removeList = "&index="
If (MM_paramName <> "") Then
  MM_removeList = MM_removeList & "&" & MM_paramName & "="
End If

MM_keepURL=""
MM_keepForm=""
MM_keepBoth=""
MM_keepNone=""

' add the URL parameters to the MM_keepURL string
For Each MM_item In Request.QueryString
  MM_nextItem = "&" & MM_item & "="
  If (InStr(1,MM_removeList,MM_nextItem,1) = 0) Then
    MM_keepURL = MM_keepURL & MM_nextItem & Server.URLencode(Request.QueryString(MM_item))
  End If
Next

' add the Form variables to the MM_keepForm string
For Each MM_item In Request.Form
  MM_nextItem = "&" & MM_item & "="
  If (InStr(1,MM_removeList,MM_nextItem,1) = 0) Then
    MM_keepForm = MM_keepForm & MM_nextItem & Server.URLencode(Request.Form(MM_item))
  End If
Next

' create the Form + URL string and remove the intial '&' from each of the strings
MM_keepBoth = MM_keepURL & MM_keepForm
If (MM_keepBoth <> "") Then 
  MM_keepBoth = Right(MM_keepBoth, Len(MM_keepBoth) - 1)
End If
If (MM_keepURL <> "")  Then
  MM_keepURL  = Right(MM_keepURL, Len(MM_keepURL) - 1)
End If
If (MM_keepForm <> "") Then
  MM_keepForm = Right(MM_keepForm, Len(MM_keepForm) - 1)
End If

' a utility function used for adding additional parameters to these strings
Function MM_joinChar(firstItem)
  If (firstItem <> "") Then
    MM_joinChar = "&"
  Else
    MM_joinChar = ""
  End If
End Function
%>
<%
' *** Move To Record: set the strings for the first, last, next, and previous links

Dim MM_keepMove
Dim MM_moveParam
Dim MM_moveFirst
Dim MM_moveLast
Dim MM_moveNext
Dim MM_movePrev

Dim MM_urlStr
Dim MM_paramList
Dim MM_paramIndex
Dim MM_nextParam

MM_keepMove = MM_keepBoth
MM_moveParam = "index"

' if the page has a repeated region, remove 'offset' from the maintained parameters
If (MM_size > 1) Then
  MM_moveParam = "offset"
  If (MM_keepMove <> "") Then
    MM_paramList = Split(MM_keepMove, "&")
    MM_keepMove = ""
    For MM_paramIndex = 0 To UBound(MM_paramList)
      MM_nextParam = Left(MM_paramList(MM_paramIndex), InStr(MM_paramList(MM_paramIndex),"=") - 1)
      If (StrComp(MM_nextParam,MM_moveParam,1) <> 0) Then
        MM_keepMove = MM_keepMove & "&" & MM_paramList(MM_paramIndex)
      End If
    Next
    If (MM_keepMove <> "") Then
      MM_keepMove = Right(MM_keepMove, Len(MM_keepMove) - 1)
    End If
  End If
End If

' set the strings for the move to links
If (MM_keepMove <> "") Then 
  MM_keepMove = Server.HTMLEncode(MM_keepMove) & "&"
End If

MM_urlStr = Request.ServerVariables("URL") & "?" & MM_keepMove & MM_moveParam & "="

MM_moveFirst = MM_urlStr & "0"
MM_moveLast  = MM_urlStr & "-1"
MM_moveNext  = MM_urlStr & CStr(MM_offset + MM_size)
If (MM_offset - MM_size < 0) Then
  MM_movePrev = MM_urlStr & "0"
Else
  MM_movePrev = MM_urlStr & CStr(MM_offset - MM_size)
End If
%>








<!DOCTYPE html 
     PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>PACER Bullying Prevention Supporters</title>
<style type="text/css">
a, a:visited {border:none;}
img {border:none;}
</style>

<script type="text/javascript">
function SubmitForm(actionType, id) {
	var radioList = document.getElementsByName("approval_type" + id);
	document.getElementsByName("returnUrl").item(0).value = document.URL;
	document.getElementsByName("actionRequest").item(0).value = actionType;
	document.getElementsByName("actionID").item(0).value = id
	for(var i=0;i<radioList.length;i++){
		if (radioList[i].checked){
			document.getElementsByName("actionApprovedFor").item(0).value = radioList[i].value;
		}
	}
	document.forms["reviewform"].submit();
}

</script>

<style type="text/css">
#itemList td{
	border-bottom:1px solid #000;
	padding:5px;
	margin-bottom:10px;
}
#itemList td td{
	border:none;
	padding:0;
}
</style>

</head>

<body style="background-color: #eee; font-family: Calibri, Arial, Sans-serif;">

<div style="background-color: #09c; width: 100%;">
	<a href="../../"><img src="../../images/pacerLogo.gif" alt="PACER Center Logo: Champions for Children with Disabilities" class="logoImg" /></a>
</div>
<div style="padding: .5em; margin-top: .5em; background-color: #fff;">


<!-- ############# Code for Advancing Pages ########### -->
<table border="0" cellpadding="5" style="font-size:1.2em; border-bottom:solid 5px red">
  <tr>
    <td><% If MM_offset <> 0 Then %>
        <a href="<%=MM_moveFirst%>">First</a>
        <% End If ' end MM_offset <> 0 %></td>
    <td><% If MM_offset <> 0 Then %>
        <a href="<%=MM_movePrev%>">Previous</a>
        <% End If ' end MM_offset <> 0 %></td>
    <td><% If Not MM_atTotal Then %>
        <a href="<%=MM_moveNext%>">Next</a>
        <% End If ' end Not MM_atTotal %></td>
    <td><% If Not MM_atTotal Then %>
        <a href="<%=MM_moveLast%>">Last</a>
        <% End If ' end Not MM_atTotal %></td>
        <td>Records <%=(ICareRecordSet_first)%> to <%=(ICareRecordSet_last)%> of <%=(ICareRecordSet_total)%>
</td>
  </tr>
</table>
<p>&nbsp;</p>
<!-- ############# End of Navigation Code ####################### -->

<form name="reviewform" action="bullysupportUpdateDB.asp" method="post">
	<input type="hidden" name="actionRequest" value="None">
	<input type="hidden" name="actionApprovedFor" value="None">
	<input type="hidden" name="actionID" value="None">
	<input type="hidden" name="returnUrl" value="None">




<h2>I Care Because...</h2>

<table id="itemList" align="center">
<% 
While ((Repeat1__numRows <> 0) AND (NOT ICareRecordSet.EOF)) 
%>	

<tr>
		<td style="padding: .2em;" valign="top" width="600">
			<p style="word-wrap: break-word; width:600px">"<%=ICareRecordSet("bullysupport_comment")%>"</p>
			<p style="word-wrap: break-word; width:600px"><%=ICareRecordSet("bullysupport_fname")%>, <%=ICareRecordSet("bullysupport_age")%>, <%=ICareRecordSet("bullysupport_state")%></p></td>
             
        <td width="210" valign="top">
            <input name="Approved_<%=ICareRecordSet("bullysupport_ID")%>" type="button" value="Approved" onclick="SubmitForm('Approve', <%=ICareRecordSet("bullysupport_ID")%>);" /><br /><br />
            <input name="Disapprove_<%=ICareRecordSet("bullysupport_ID")%>" type="button" value="Disapproved" onclick="SubmitForm('Disapprove', <%=ICareRecordSet("bullysupport_ID")%>);" />
            <!--<input name="Test_<%=ICareRecordSet("bullysupport_ID")%>" type="button" value="Test" onclick="submitForm 'Test', <%=ICareRecordSet("bullysupport_ID")%>" />--></td>
        <td width="278" valign="top">	
        		<table>
        		<tr><td width="275"><input name="approval_type<%=ICareRecordSet("bullysupport_ID")%>" type="radio" value="ALL" onclick="SetRadioValue('ALL')" 
                	<%if cLng(ICareRecordSet("bullysupport_age")) > 10 AND cLng(ICareRecordSet("bullysupport_age")) < 20 then %> checked<%end if%> />Ok For All Sites</td></tr>
        		<tr><td width="275"><input name="approval_type<%=ICareRecordSet("bullysupport_ID")%>" type="radio" value="PacerOnly" onclick="SetRadioValue('PacerOnly')"
                	<%if cLng(ICareRecordSet("bullysupport_age")) < 11 OR cLng(ICareRecordSet("bullysupport_age")) > 19 then %> checked<%end if%> />Pacer Only</td></tr>
        		<tr><td width="275"><input name="approval_type<%=ICareRecordSet("bullysupport_ID")%>" type="radio" value="TeensAgainstOnly" onclick="SetRadioValue('TeensAgainstOnly')" />TAB Only</td></tr>
            	</table>
        		<p>&nbsp;</p>
                <!--
            <a href="bullysupportmarkok.asp?id='<%=ICareRecordSet("bullysupport_ID")%>'type='<%response.write get_radio_value%>'" target="_blank">Mark as Ok to Post</a>
             | <a href="testing.asp?id='<%=ICareRecordSet("bullysupport_ID")%>'" target="_blank">Disapprove</a> 
             | <a href="bullysupportmarkok.asp?id='<%=ICareRecordSet("bullysupport_ID")%>' type=''" target="_blank">Testing</a>
             --></td>
	</tr>

    <% 
  Repeat1__index=Repeat1__index+1
  Repeat1__numRows=Repeat1__numRows-1
  ICareRecordSet.MoveNext()
Wend
%>




</table>
</form>


<p>&nbsp;</p>
<!-- ############# Code for Advancing Pages ########### -->
<table border="0" cellpadding="5" style="font-size:1.2em">
  <tr>
    <td><% If MM_offset <> 0 Then %>
        <a href="<%=MM_moveFirst%>">First</a>
        <% End If ' end MM_offset <> 0 %></td>
    <td><% If MM_offset <> 0 Then %>
        <a href="<%=MM_movePrev%>">Previous</a>
        <% End If ' end MM_offset <> 0 %></td>
    <td><% If Not MM_atTotal Then %>
        <a href="<%=MM_moveNext%>">Next</a>
        <% End If ' end Not MM_atTotal %></td>
    <td><% If Not MM_atTotal Then %>
        <a href="<%=MM_moveLast%>">Last</a>
        <% End If ' end Not MM_atTotal %></td>
        <td>Records <%=(ICareRecordSet_first)%> to <%=(ICareRecordSet_last)%> of <%=(ICareRecordSet_total)%>
</td>
  </tr>
</table>
<p>&nbsp;</p>
<!-- ############# End of Navigation Code ####################### -->

</div>

</body>
</html>