<% 
	Dim users, password, strLog
	
	users = request.form("ID")
	password = request.form("pwd")
	
	strLog = users & password
	Session("user")=users
	Session("pwd")=password


	select case strLog
		case "bullypacer"
			response.redirect "bullysupportreview.asp"
		case else
			response.redirect "http://www.pacer.org/"
	end select
%>