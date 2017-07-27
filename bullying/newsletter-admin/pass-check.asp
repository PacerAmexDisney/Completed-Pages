<% 
	Dim users, password, strLog
	
	users = request.form("ID")
	password = request.form("pwd")
	
	strLog = users & password
	Session("user")=users
	Session("pwd")=password


	select case strLog
		case "nbpcrecap021Bully"
			response.redirect "mail.asp"
		case else
			response.redirect "invalid.asp"
	end select
%>