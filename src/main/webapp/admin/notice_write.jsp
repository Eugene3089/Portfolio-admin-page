<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script>
	function notice_list(){
		location.href="admin_notice.jsp";
	}
	
	function notice(){
		var form = document.frm3;
		
		if(!form.title.value){
			alert("제목을 입력하세요");
			return false;
		}
		if(!form.contents.value){
			alert("공지내용을 입력하세요");
			return false;
		}
	}
	function adminid(){
		document.getElementById("adminid").readOnly=true;
		
	}
</script>


<form action="noticeAction.jsp" name="frm3" id="frm3" method="post" onsubmit="return notice();">
<p>공지사항 등록페이지</p>
<div class="write_view">
<ul>
    <li>공지사항 여부</li>
    <li>
        <label class="label_notice"><em class="cbox"><input type="checkbox" name="printlist" id="printlist"></em> 공지 출력</label> ※ 공지출력을 체크할 시 해당 글 내용은 최상단에 노출 되어 집니다.
    </li>
</ul>
<ul>
    <li>공지사항 제목</li>
    <li>
        <input type="text" class="notice_input1" name="title" id="title" maxlength="150"> ※ 최대 150자까지 입력이 가능
    </li>
</ul>
<ul>
    <li>글쓴이</li>
    <li>
        <input type="text" class="notice_input2" name="adminid" id="adminid" readonly value="<%=session.getAttribute("adminid")%>"> ※ 관리자 이름이 노출 됩니다.       
    </li>
</ul>
<ul>
    <li>첨부파일</li>
    <li>
        <input type="file" name="addfile" id="addfile"> ※ 첨부파일 최대 용량은 2MB 입니다.       
    </li>
</ul>
<ul class="ul_height">
    <li>공지내용</li>
    <li>
        <textarea class="notice_input3" name="contents" id="contents" placeholder="공지내용을 입력하세요!" maxlength="2048"></textarea>
    </li>
</ul>
</div>
<div class="board_btn">
    <input type="button" class="border_del" value="공지목록" onclick="notice_list();">
    <input type="submit" class="border_add" value="공지등록">
</div>
</form>
