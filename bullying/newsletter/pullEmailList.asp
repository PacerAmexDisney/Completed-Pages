<%@LANGUAGE="VBSCRIPT"%>

<%OPTION EXPLICIT 
If Request.QueryString("trk") <> "psd4Aa7s" & DatePart("d", Now())& DatePart("h", Now()) & "l3kj5kjKGgrrr9)00d$33g" then
	Response.Redirect("http://www.pacer.org/")
End If

Dim filename, SQL 

	filename = "bully-enews-email-" & Replace(FormatDateTime(Now, vbShortDate), "/", "-")

	SQL = "SELECT DISTINCT EmailAddress FROM bullyNewsletter"

 
Const adOpenStatic = 3
Const adLockReadOnly = 1
Const adCmdText = &H0001

  sub Write_CSV_From_Recordset( RS )

    '
    ' This sub-routine Response.Writes the content of an ADODB.RECORDSET in CSV format
    ' The function closely follows the recommendations described in RFC 4180:
    ' Common Format and MIME Type for Comma-Separated Values (CSV) Files
    ' http://tools.ietf.org/html/rfc4180
    '
    ' @RS: A reference to an open ADODB.RECORDSET object
    '

    if RS.EOF then

      '
      ' There is no data to be written
      '
      exit sub

    end if

    dim RX
    set RX = new RegExp
        RX.Pattern = "\r|\n|,|"""

    dim i
    dim Field
    dim Separator

    '
    ' Writing the header row (header row contains field names)
    '

    Separator = ""
    for i = 0 to RS.Fields.Count - 1
      Field = RS.Fields( i ).Name
      if RX.Test( Field ) then
        '
        ' According to recommendations:
        ' - Fields that contain CR/LF, Comma or Double-quote should be enclosed in double-quotes
        ' - Double-quote itself must be escaped by preceeding with another double-quote
        '
        Field = """" & Replace( Field, """", """""" ) & """"
      end if
      Response.Write Separator & Field
      Separator = ","
    next
    Response.Write vbNewLine

    '
    ' Writing the data rows
    '

    do until RS.EOF
      Separator = ""
      for i = 0 to RS.Fields.Count - 1
        '
        ' Note the concatenation with empty string below
        ' This assures that NULL values are converted to empty string
        '
        Field = RS.Fields( i ).Value & ""
        if RX.Test( Field ) then
          Field = """" & Replace( Field, """", """""" ) & """"
        end if
        Response.Write Separator & Field
        Separator = ","
      next
      Response.Write vbNewLine
      RS.MoveNext
    loop

  end sub

  '
  ' EXAMPLE USAGE
  '
  ' - Open a RECORDSET object (forward-only, read-only recommended)
  ' - Send appropriate response headers
  ' - Call the function
  '

  dim RS1, conn, ConStr, sqlStr
set conn=Server.CreateObject("ADODB.Connection")
ConStr = "Provider=SQLOLEDB.1;Data Source=PACER2; Initial Catalog=PACER_WEB;Network=DBMSSOCN; User Id=test;Password=test"
conn.Open(ConStr)

set RS1=Server.CreateObject("ADODB.recordset")
RS1.Open SQL, conn, adOpenStatic, adLockReadOnly, adCmdText 



  Response.ContentType = "text/csv"

  Response.AddHeader "Content-Disposition", "attachment;filename=" & filename & ".csv"

  Write_CSV_From_Recordset RS1
%>