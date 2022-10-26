<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="admin.adminDTO"%>
    <%@ page import="admin.adminDAO"%>
    <%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 처리 JSP</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("utf-8"); 
		
		String adminid = request.getParameter("adminid");
		String adminpw = request.getParameter("adminpw");
		String adminnm = request.getParameter("adminnm");
		String adminmail = request.getParameter("adminmail");
		String adminhp = request.getParameter("adminhp1")+"-"+ request.getParameter("adminhp2")+"-"+ request.getParameter("adminhp3");
	%>
	
	<%
		String[] admindp = request.getParameterValues("admindp");
		String admindpp = new String();
		for(int b=0; b<admindp.length; b++){
			admindpp += admindp[b] + "";
		}
	%>
	
	<%
		String[] adminps = request.getParameterValues("adminps");
		String adminpss = new String();
		for(int c=0; c<adminps.length; c++){
			adminpss += adminps[c] + "";
		}
	%>
	
	<%
		adminDTO dto = new adminDTO();
		
		dto.setAdminid(adminid);
		dto.setAdminpw(adminpw);
		dto.setAdminnm(adminnm);
		dto.setAdminmail(adminmail);
		dto.setAdminhp(adminhp);
		dto.setAdmindp(admindpp);
		dto.setAdminps(adminpss);
		
		adminDAO dao = new adminDAO();
		dao.register(dto);
		
		//response.sendRedirect("index.jsp");
	%>	
	<script type="text/javascript">
		alert("관리자 등록 성공")
		location.href="index.jsp";
	</script>

</body>
</html>