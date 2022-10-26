<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 등록 페이지</title>
    <link rel="stylesheet" type="text/css" href="./css/basic.css">
    <link rel="stylesheet" type="text/css" href="./css/login.css?v=1">
    <link rel="stylesheet" type="text/css" href="./css/main.css">
    <link rel="icon" href="./img/logo.png" sizes="128x128">
    <link rel="icon" href="./img/logo.png" sizes="64x64">
    <link rel="icon" href="./img/logo.png" sizes="32x32">
    <link rel="icon" href="./img/logo.png" sizes="16x16">
    <script src="./js/jquery.js"></script>
</head>
<body>
	<%
		String adminid = null;
		if(session.getAttribute("adminid") != null){
			adminid = (String) session.getAttribute("adminid");
		}
	%>
	<%
		String value =request.getParameter("adminid");
		request.setAttribute("adminid",adminid);
	%>
<header class="headercss">
	<%@include file="./admin_header.jsp" %>
</header>
<nav class="navcss"><%@include file="./admin_menu.jsp" %></nav>
<main class="maincss">
<section><%@include file="admin_list.jsp" %></section>
</main>
<footer class="main_copyright">
	<%@include file="./admin_footer.jsp" %>
</footer>
</body>
</html>