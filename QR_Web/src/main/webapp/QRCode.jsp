<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String scheme=request.getScheme();
	String server_name=request.getServerName();
	int server_port=request.getServerPort();
	String context_path=request.getContextPath();
	String parameter = request.getParameter("url");
	String URL = scheme +"://"+ server_name + ":"+ server_port + context_path +"/" + parameter;

 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>[�������Ը��]</title>
</head>
<body>
<h1>QRcode ����</h1>
<form action="CreateQR.jsp" method="post">
	URL �Է�<input type="text" name="url" value="<%=URL%>" style="width:500px" maxlength="200"/>
	<input type="submit" value="QRCode ����"/>
</form>
</body>
</html>