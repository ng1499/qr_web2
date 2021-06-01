<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width-device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>[전자출입명부]</title>
</head>
<body>
	<%
		String User_ID = null;
		if(session.getAttribute("User_ID") !=null){
			User_ID = (String)session.getAttribute("User_ID");
		}
		
		
	%>


	<nav class ="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="login.jsp">사업장 QR 홈페이지</a>
		</div>
		
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="QRCode.jsp?url=Access_list.jsp">QR코드 생성</a></li>
				<li><a href="Access_list.jsp">출입명부 확인하기</a></li>
			</ul>
			<%
				if(User_ID == null){
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
					
					<ul class="dropdown-menu">
						<li><a href=login.jsp>로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>	
			<%
				}else{
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">회원관리<span class="caret"></span></a>
					
					<ul class="dropdown-menu">
						<li><a href=logoutAction.jsp>로그아웃</a></li>
					</ul>
				</li>
			</ul>	
			<%
				}
			%>
						
		</div>
	</nav>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>	
	<script src="js/bootstrap.js"></script>
	
	
</body>
</html>