<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@page import="admin_notice.noticeDTO" %>
    <%@page import="admin_notice.noticeDAO" %>
    <%@page import="java.io.PrintWriter" %>
    <% request.setCharacterEncoding("utf-8"); %>
    <jsp:useBean id="pf_noticelist" class="admin_notice.noticeDTO" scope="page"></jsp:useBean>
    <jsp:setProperty name="pf_noticelist" property="title"></jsp:setProperty>
    <jsp:setProperty name="pf_noticelist" property="contents"></jsp:setProperty>
    <jsp:setProperty name="pf_noticelist" property="adminid"></jsp:setProperty>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8">
<title>Index 로그인 JSP</title>
</head>
<body>
	<%

		response.setContentType("text/html; charset=UTF-8");
		System.out.println(request.getParameter("title")+"타이틀");
		
		//String idx=request.getParameter("idx");
		String title= request.getParameter("title");
		String adminid = request.getParameter("adminid");
		String contents =request.getParameter("contents");
		//String date = request.getParameter("date");
		
		noticeDTO dto = new noticeDTO();
		
		//dto.setIdx(idx);
		dto.setTitle(title);
		dto.setAdminid(adminid);
		dto.setContents(contents);
		//dto.setDate(date);
		System.out.println(dto.toString());
		
		noticeDAO dao = new noticeDAO();            
		dao.pf_noticelist(title, adminid, contents);
		
		//response.sendRedirect("admin_notice.jsp");
	%>
	<script>
		alert("공지사항 등록 완료")
		location.href="admin_notice.jsp";
	</script>
</body>
</html>