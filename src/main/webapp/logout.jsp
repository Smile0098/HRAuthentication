<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Logout</title>
</head>
<body class="bg-light">
	<jsp:include page="header.jsp" />
	<br/>
	<div class="container">
	<%
		session.removeAttribute("authorized");
		session.removeAttribute("error");
		session.removeAttribute("user");
		String redirectURL = "http://localhost:8080/HRauthentication/login";
	    response.sendRedirect(redirectURL);
	   
	%>
	
</div>
<br><br>
	<jsp:include page="footer.jsp" />
</body>
</html>