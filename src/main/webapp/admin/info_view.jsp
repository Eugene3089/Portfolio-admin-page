<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.PrintWriter" %>
<form action="info_viewAction" method="post" name="frm" id="frm" onsubmit="retrun checkall();">
<div class="admin_login_add">
    <ul>
        <li class="font_color1">관리자 정보 수정</li>
        <li>
        <input type="text" class="add_input1" readonly>
        </li>
        <li>
            <input type="password" class="add_input1" name="adminpw1" id="adminpw1" placeholder="변경할 패스워드를 입력하세요">
            <input type="password" class="add_input1" name="adminpw2" id="adminpw2" placeholder="동일한 패스워드를 입력하세요">
        </li>
        <li class="font_color1">관리자 기본정보 입력</li>
        <li>
            <input type="text" class="add_input1" name="adminnm" id="adminnm" placeholder="변경할 이름을 입력하세요">
        </li>
        <li>
        <input type="text" class="add_input1 emails" name="adminmail" id="adminmail" placeholder="변경할 이메일을 입력하세요">
        </li>
        <li class="font_color1">
        <input type="text" class="add_input1 hp1" maxlength="3" name="adminhp1" id="adminhp1" placeholder="HP" value="010" maxlength="3">
        -
        <input type="text" class="add_input1 hp2" maxlength="4" name="adminhp2" id="adminhp2" placeholder="1234" maxlength="4">
        -
        <input type="text" class="add_input1 hp2" maxlength="4" name="adminhp3" id="adminhp3" placeholder="5678" maxlength="4">
        </li>
        <li class="font_color1">관리자 담당부서 및 직책</li>
        <li>
            <select class="add_select1" id="admindp" name="admindp">
                <option value="">담당자 부서를 선택하세요</option>
                <option value="1">임원</option>
                <option value="2">전산팀</option>
                <option value="3">디자인팀</option>
                <option value="4">CS팀</option>
                <option value="5">MD팀</option>
            </select>
            <select class="add_select1" id="adminps" name="adminps">
                <option value="">담당자 직책을 선택하세요</option>
                <option value="1">대표</option>
                <option value="2">부장</option>
                <option value="3">팀장</option>
                <option value="4">과장</option>
                <option value="5">대리</option>
                <option value="6">사원</option>
            </select>
        </li>
        <li class="font_color1">※ 아이디 외에 모든 정보는 수정 할 수 있습니다.</li>
    </ul>
    <span class="admin_addbtn">
        <button type="button" class="btn_button btncolor1" title="관리자 등록" onclick="modify();">정보 수정</button>
    </span>
</div>
</form>

<script src="./js/jquery.js"></script>
<script>
	function modify(){
		location.href="admin_main.jsp";
	}
	
	function checkall(){
		var form = document.frm;
		
		if(!form.adminpw1.value){
			alert("변경 할 비밀번호를 입력하세요");
			return false;
		}
		if(form.adminpw1.value != form.adminpw2.value){
			alert("동일한 비밀번호를 입력하세요");
			return false;
		}
		if(!form.adminnm.value){
			alert("변경 할 이름을 입력하세요");
			return false;
		}
		if(!form.adminmail.value){
			alert("변경 할 이메일을 입력하세요");
			return false;
		}
		if(!form.adminhp2.value){
			alert("변경 할 전화번호를 입력하세요");
			return false;
		}
		if(!form.adminhp3.value){
			alert("변경 할 전화번호를 입력하세요");
			return false;
		}
		if(!form.admindp.value){
			alert("변경 할 부서를 선택하세요");
			return false;
		}
		if(!form.adminps.value){
			alert("변경 할 직책을 선택하세요");
			return false;
		}
	}
</script>







</html>