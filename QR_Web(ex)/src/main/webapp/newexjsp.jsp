<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="user.UserDAO" %>
<%@ page import="user.user" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/logincss.css">
<meta name="viewport" content="width-device-width", initial-scale="1">

<title>Insert title here</title>
</head>
<body>
	<%
		String User_ID = null;
		if(session.getAttribute("User_ID") !=null){
			User_ID = (String)session.getAttribute("User_ID");
		}
	
	%>

<form action="NumConn.jsp" method="post">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container bootstrap snippets bootdey">
    <div class="lc-block col-md-4 col-md-offset-4 toggled" id="l-login">
        <div class="lcb-float"><i class="fa fa-users"></i></div>
        <div class="form-group">
            <input type="text" class="form-control" name="number" placeholder=" �޴��ȣ�� �Է��ϼ���">
        </div>
        <div class="clearfix"></div>
        <button type="submit" class="btn btn-block btn-primary btn-float m-t-25">Sign In</a>
      
        </ul>
    </div>
</div>
</form>
</body>
</html>