<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*"
    pageEncoding="UTF-8"%>
<%@ page import="cust.Cust" %>
<%@ page import="cust.CustDAO" %>
<%@ page import="user.UserDAO" %>
<%@ page import="user.user" %>
<!DOCTYPE html>
<html>
<head>
<meta charset ="UTF-8">
<title></title>

</head>
<body>
	<%
		String User_ID = null;
		if(session.getAttribute("User_ID") !=null){
			User_ID = (String)session.getAttribute("User_ID");
		}
	
	%>
<%
	request.setCharacterEncoding("UTF-8");
	String number =request.getParameter("number");
	
	CustDAO custDAO = new CustDAO();
	custDAO.Write(number, User_ID);
	

%>
<script>
alert("저장 성공!");
</script>

</body>

</html>
	