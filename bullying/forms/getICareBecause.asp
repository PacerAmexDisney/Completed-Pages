<%@LANGUAGE="VBSCRIPT"%>
<% OPTION EXPLICIT 
'Example URL: http://www.pacer.org/bullying/forms/getICareBecause.asp?type=kids&amount=20

Dim fAmount 

fAmount = 5

If isNumeric(Request.QueryString("amount")) Then
	If Request.QueryString("amount") > 0 Then
		fAmount = cInt(Request.QueryString("amount"))
	End If
End If



Function ConvertRStoXML(objRS, strTopLevelNodeName, strRowNodeName)
 'Declare local variables.
 Dim objDom
 Dim objRoot
 Dim objField
 Dim objFieldValue
 Dim objcolName
 Dim objattTabOrder
 Dim objPI
 Dim x
 Dim objRSField
 Dim objRow

 'Instantiate the Microsoft XMLDOM.
 Set objDom = server.CreateObject("Microsoft.XMLDOM")
 objDom.preserveWhiteSpace = True


 'Create your root element and append it to the XML document.
 Set objRoot = objDom.createElement(strTopLevelNodeName)
 objDom.appendChild objRoot

 'Iterate through each row in the Recordset
 Do While Not objRS.EOF

   'Create a row-level node with the name specified by strRowNodeName
   Set objRow = objDom.CreateElement(strRowNodeName)

   'Iterate through each field in the Recordset row
   For Each objRSField in objRS.Fields

     '*** Create an element, "field". ***
     Set objField = objDom.createElement("field")

       '*** Append the name attribute to the field node ***
       Set objcolName = objDom.createAttribute("name")
       objcolName.Text = objRSField.Name
       objField.SetAttributeNode(objColName)
       '***************************************************

       '*** Create a new node, "value". ***
       Set objFieldValue = objDom.createElement("value")

       'Set the value of the value node equal to the value of the
       'current field object
       If IsNull(objRSField.Value) Then
			objFieldValue.Text = ""
	   Else
	   		'objFieldValue.Text = Server.HTMLEncode(objRSField.Value)
	   		objFieldValue.Text = objRSField.Value
	   End If	   
       
       '************************************

       '*** Append the value node as a child of the field node. ***
       objField.appendChild objFieldValue
       '***********************************************************

     '*** Append the field node as a child of the row-level node. ***
     objRow.appendChild objField
     '***************************************************************
   Next 

   '*** Append the row-level node to the root node ***
   objRoot.appendChild objRow
   '**************************************************

   objRS.MoveNext    'Move to the next row in the Recordset
 Loop

 '*** Add the <?xml version="1.0" ?> tag ***
 Set objPI = objDom.createProcessingInstruction("xml", "version='1.0'")
 
 'Append the processing instruction to the XML document.
 objDom.insertBefore objPI, objDom.childNodes(0)
 '************************************************

 'Return the XML contents as a string
 ConvertRStoXML = objDom.xml


 'Clean up...
 Set objDom = Nothing
 Set objRoot = Nothing
 Set objField = Nothing
 Set objFieldValue = Nothing
 Set objcolName = Nothing
 Set objattTabOrder = Nothing
 Set objPI = Nothing
End Function



'##########################################################################################################################################################################################


Const adOpenStatic = 3
Const adLockReadOnly = 1
Const adCmdText = &H0001

Dim ConStr
Dim rs
Dim conn
Dim sqlStr
Dim xmlString

set conn=Server.CreateObject("ADODB.Connection")
ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
conn.Open(ConStr)

set rs=Server.CreateObject("ADODB.recordset")
If Request.QueryString("type") = "kids" Then
	sqlStr="SELECT TOP " & fAmount & " * FROM icarebecause WHERE bullysupport_online = 'Approve' OR bullysupport_online = 'Approve-KidsOnly' ORDER BY NEWID()"
Else
	sqlStr="SELECT TOP " & fAmount & " * FROM icarebecause WHERE bullysupport_online = 'Approve' OR bullysupport_online = 'Approve-NoKids' ORDER BY NEWID()"
End If
rs.Open sqlStr, conn, adOpenStatic, adLockReadOnly, adCmdText 

	
xmlString = ConvertRStoXML(rs, "Entries", "Entry")
Response.Write(xmlString)	
		
rs.Close
set rs = nothing
conn.Close%>