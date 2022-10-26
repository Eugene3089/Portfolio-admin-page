<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.PrintWriter" %>
    <%@ page import="admin.adminDAO" %>
    <%@ page import="admin.adminDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 정보 수정 jsp</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String adminid = request.getParameter("adminid");
		String adminpw = request.getParameter("adminpw");
		String adminnm = request.getParameter("adminnm");
		String adminmail =request.getParameter("adminmail");
		String adminhp = request.getParameter("adminhp1")+ "-" + request.getParameter("adminhp2")+ "-" + request.getParameter("adminhp3");
	%>
	<%
		String[] admindp = request.getParameterValues("admindp");
		String admindp1 = new String();
		for(int a=0; a<admindp.length; a++){
			admindp1 += admindp[a] + "";
		}
		
		String[] adminps = request.getParameterValues("adminps");
		String adminps1 = new String();
		for(int c=0; c<adminps.length; c++){
			adminps1 += adminps[c] + "";
		}
	%>
	<%
		adminDTO dto = new adminDTO();
	
		dto.setAdminid(adminid);
		dto.setAdminpw(adminpw);
		dto.setAdminnm(adminnm);
		dto.setAdminmail(adminmail);
		dto.setAdminhp(adminhp);
		dto.setAdmindp(admindp1);
		dto.setAdminps(adminps1);
		
		adminDAO dao = new adminDAO();
		//dao.modify(dto);
	%>
	
	<script type="text/javascript">
		alert("관리자 정보 수정 완료");
		location.href="index.jsp";
	</script>
</body>
</html>