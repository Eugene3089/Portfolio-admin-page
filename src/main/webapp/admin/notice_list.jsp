<%@page import="com.mysql.fabric.xmlrpc.base.Array"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="admin_notice.noticeDTO"%>
    <%@ page import="admin_notice.noticeDAO" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="java.io.PrintWriter" %>
<meta charset="UTF-8">
<p>공지사항 관리페이지</p>

	<% request.setCharacterEncoding("utf-8"); %>
	
	<%
		String adminid = null;
		if(session.getAttribute("adminid") != null){
			adminid = (String) session.getAttribute("adminid");
		}
		
		int pagenumber = 1;
		if(request.getParameter("pagenumber") != null){
			pagenumber = Integer.parseInt(request.getParameter("pagenumber"));
		}
	%>
<form action="noticeAction2.jsp" method="post" name="frm" id="frm">
<div class="subpage_view">
<ul>
    <li><input type="checkbox" name="checkedboxall" id="checkedboxall" onclick="allCheck();"></li>
    <li>NO</li>
    <li>제목</li>
    <li>글쓴이</li>
    <li>날짜</li>
    <li>조회</li>
</ul>
    <%
    	request.setCharacterEncoding("utf-8");
    
    	noticeDAO dao = new noticeDAO();
    	ArrayList<noticeDTO> list = dao.list(pagenumber);
    	for(int i =0 ; i<list.size(); i++){
    %>    	
	<ol>
	    <li><input type="checkbox" name="checked" id="checked" value="<%=list.get(i).getIdx()%>"></li>
	    <li><%=list.get(i).getIdx() %></li>
	    <li style="text-align:center; text-color:black;"><a href="listview.jsp?idx=<%=list.get(i).getIdx()%>"><%=list.get(i).getTitle()%></a></li>
	    <li><%=list.get(i).getAdminid()%></li>
	    <li><%= list.get(i).getDate().substring(0, 11) + list.get(i).getDate().substring(11, 13) + "시" + list.get(i).getDate().substring(14, 16) + "분" %></li>
	    <li>100</li>
	</ol>
  	<%
    	} 
    %>
<!-- <ol class="none_text"> -->
<!--     <li>등록된 공지 내용이 없습니다.</li> -->
<!-- </ol> -->
</div>	
<div class="board_btn">
    <input type="submit" class="border_del"  name="delete" id="delete" value="공지삭제">
    <input type="button" class="border_add" name="gonotice" id="gonotice" value="공지등록" onclick="gonotice_write();">
</div>
<div class="border_page">
    <ul class="pageing">
        <% 
        	if(pagenumber!=1){ 
        	} 
        %>
        <li><img src="./ico/double_left.svg"></li>
        <li><img src="./ico/left.svg"><a href="admin_notice.jsp?pagenumber=<%=pagenumber -1 %>"></a></li>
        <li>1</li>
        <% 
        	if(dao.nextpage(pagenumber+1)){ 	
        	} 
        %>
        <li><img src="./ico/right.svg"><a href="admin_notice.jsp?pagenumber=<%=pagenumber +1 %>"></a></li>
        <li><img src="./ico/double_right.svg"></li>
    </ul>
</div>
</form>
<script>
	function gonotice_write(){
		location.href="./admin_notice_write.jsp";
	}
	
	function allCheck() {
		//삼항연산자
		$("input[name=checkedboxall]").is(':checked')? $("input[name=checked]").attr("checked", true) : $("input[name=checked]").attr("checked", false)
	}
	
</script>
