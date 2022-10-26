<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="admin_notice.noticeDTO" %>
    <%@page import="admin_notice.noticeDAO" %>
    <%@page import="java.io.PrintWriter" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
	%>
	
	<%
		String[] idx = request.getParameterValues("checked");
	
		noticeDAO dao = new noticeDAO();
		int result = dao.checkedboxall(idx);
		
		if(result==idx.length){	
	%>
		<script type="text/javascript">
			alert("삭제 성공");
			location.href="admin_notice.jsp";
		</script>
	<% 
		}else{			
	%>
		<script type="text/javascript">
			alert("삭제 실패. 삭제 권한이 없습니다.");
			location.href="admin_notice.jsp";
		</script>
	<% 
		}
	%>	
</body>
</html>