<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<p>신규등록 관리자</p>
<ol class="new_admin_title">
    <li>NO</li>
    <li>관리자명</li>
    <li>아이디</li>
    <li>전화번호</li>
    <li>이메일</li>
    <li>담당부서</li>
    <li>담당직책</li>
    <li>가입일자</li>
    <li>승인여부</li>
</ol>
<ol class="new_admin_none">
    <li>신규 등록된 관리자가 없습니다.</li>
    <li><a href="./admin_main.html"></a></li>
</ol>
	<%
		Connection con =null;
		PreparedStatement prs = null;
		ResultSet rs = null;
		String sql = "select*from pf_register order by adminid";
		try{			
			String dbURL ="jdbc:mysql://umj7-016.cafe24.com/parkyj3089";
			String dbID ="parkyj3089";
			String dbPassword ="fuckyj33";
			Class.forName("com.mysql.jdbc.Driver");
			
			con= DriverManager.getConnection(dbURL, dbID, dbPassword);
			prs =con.prepareStatement(sql);
			rs = prs.executeQuery();
			
			while(rs.next()){
	%>
<ol class="new_admin_lists">
    <li>1</li>
    <li><%=rs.getString("adminnm")%></li>
    <li><%=rs.getString("adminid")%></li>
    <li><%=rs.getString("adminhp")%></li>
    <li><%=rs.getString("adminmail")%></li>
    <li><%=rs.getString("admindp")%></li>
    <li><%=rs.getString("adminps")%></li>
    <li>가입일자</li>
    <li>
       <input type="button" value="승인" class="new_addbtn1" title="승인">
       <input type="button" value="미승인" class="new_addbtn2" title="미승인">
  	</li>
</ol>
    <%
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs != null) rs.close();
			if(prs != null) prs.close();
			if(con != null) con.close();
		}
	%>