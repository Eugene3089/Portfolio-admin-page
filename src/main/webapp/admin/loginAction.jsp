<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="admin.adminDAO"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="admin.adminDTO" scope="page" />
<jsp:setProperty name="user" property="adminid" />
<jsp:setProperty name="user" property="adminpw" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8">
<title>Index 로그인 JSP</title>
</head>
<body>
	<%
		String adminid = null;
		if(session.getAttribute("adminid")!=null){
			adminid = (String) session.getAttribute("adminid");
		}
		if(adminid != null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 로그인 되어 있습니다')");
			script.println("location.href='admin_main.jsp'");
			script.println("</script>");
		}
		
		adminDAO adminDAO = new adminDAO();
		int result = adminDAO.login(user.getAdminid(), user.getAdminpw());
		if(result == 1){
			session.setAttribute("adminid", user.getAdminid());
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("alert('관리자 로그인 성공')");
			script.println("location.href= 'admin_main.jsp'");
			script.println("</script>");
		}
		else if(result == 0){
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 일치하지 않습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		else if(result == -1){
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("alert('등록되지 않은 사용자입니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
// 		else if(result == -2){
// 			PrintWriter script =response.getWriter();
// 			script.println("<script>");
// 			script.println("alert('등록되지 않은 사용자입니다')");
// 			script.println("history.back()");
// 			script.println("</script>");
// 		}
	%>
</body>
</html>