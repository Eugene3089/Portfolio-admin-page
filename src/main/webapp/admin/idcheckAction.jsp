<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="admin.adminDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크 , 팝업창 JSP</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		
		String adminid = request.getParameter("userid");
		System.out.println(adminid);	
		adminDAO dao = new adminDAO();
		
		int result = dao.idcheckAction(adminid);
		if( result == 0){
			out.print("사용가능한 아이디입니다");
	%>
		<input type = "button" value="사용하기" onclick="result();">
	<%
		}
		else if (result == 1 ){
			out.print("중복된 아이디입니다");
		}
		else{
			out.print("Error connecting");	
		}
	%>
		<fieldset>
			<form action="idcheckAction.jsp" method="post" name="idchk">
				ID: <input type="text" name="userid" value="<%=adminid%>">
				<input type="submit" value="중복 확인">
			</form>
		</fieldset>
		
		<script>
			function result(){
				var form = document.frm;
				opener.form.adminid.value = document.idchk.userid.value;
				opener.form.adminid.readOnly = true;
				
				window.close();
			}
		</script>
</body>
</html>