<%
dim RndNumber, reDirectUrl
Randomize
RndNumber = CInt(Int((9000 - 48 + 1) * Rnd + 48))
reDirectUrl = "mailsend.asp?rnd=" & RndNumber
Response.Redirect reDirectUrl
%>
<p>
<a href="<%=reDirectUrl%>">Proceed to Bully Newsletter mail form.</a>