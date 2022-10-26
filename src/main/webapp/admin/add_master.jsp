<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 등록 페이지</title>
    <link rel="stylesheet" type="text/css" href="./css/basic.css">
    <link rel="stylesheet" type="text/css" href="./css/login.css?v=1">
    <link rel="icon" href="./img/logo.png" sizes="128x128">
    <link rel="icon" href="./img/logo.png" sizes="64x64">
    <link rel="icon" href="./img/logo.png" sizes="32x32">
    <link rel="icon" href="./img/logo.png" sizes="16x16">
</head>
<script>
	function checkall(){	//입력사항 체크
		 var form = document.frm;
	
		if(!form.adminid.value){
			alert("아이디를 입력하세요");
			return false;
		}
		if(form.idduply.value != "check"){
			alert("아이디 중복체크 해주세요");
			return false;
		}
		if(!form.adminpw.value){
			alert("비밀번호를 입력하세요");
			return false;
		}
		if(form.adminpw.value != from.adminpw2.value){
			alert("동일한 비밀번호를 입력하세요");
			return false;
		}
		if(!form.adminnm.value){
			alert("이름을 입력하세요");
			return false;
		}
		if(!form.adminmail.value){
			alert("이메일을 입력하세요");
			return false;
		}
		if(!form.adminhp.value){
			alert("전화번호를 입력하세요");
			return false;
		}
		if(!form.admindp.value){
			alert("부서를 선택하세요");
			return false;
		}
		if(!form.adminps.value){
			alert("직책을 선택하세요");
			return false;
		}
	}
	
	
	function idcheck(){ 	//중복체크 버튼 클릭 -> 창 띄우기 : 왜 onclick이 안 먹지??? ㅡㅡ
		var form2 = document.frm;
		if(form2.adminid.value=="" || form2.adminid.value.length < 0){
			alert("아이디를 먼저 입력하세요")
			form2.adminid.focus();
		}
		else{
			window.open("idcheckAction.jsp?userid="+form2.adminid.value,"","width=500, height=300");
		}
	}
	
	function goindex(){	//로그인 화면 이동
		location.href="index.jsp";
	}
	
</script>
<body>
    <header class="admin_title_add">
        <p><img src="./img/logo.png" class="logo_sm"> ADMINISTRATOR ADD</p>
    </header>
<form action="registerAction.jsp" method="post" name="frm" id="frm" onsubmit="return checkall();">
    <section class="admin_bgcolor_add">
        <div class="admin_login_add">
            <ul>
                <li class="font_color1">아이디 및 패스워드 정보</li>
                <li>
                <input type="text" class="add_input1" id="adminid" name="adminid" placeholder="생성할 관리자 아이디를 입력하세요">
                <input type="button"  class="btn_button" value="중복체크" id="check" name="check" onclick="idcheck()">
                <input type="hidden" name="idduply" value="idUncheck">
                </li>
                <li>
                    <input type="password" class="add_input1" id="adminpw" name="adminpw" placeholder="접속할 패스워드를 입력하세요" minlength="4" maxlength="16">
                    <input type="password" class="add_input1" id="adminpw2" name="adminpw2" placeholder="동일한 패스워드를 입력하세요" minlength="4" maxlength="16">
                </li>
                <li class="font_color1">관리자 기본정보 입력</li>
                <li>
                    <input type="text" class="add_input1" id="adminnm" name="adminnm" placeholder="담당자 이름을 입력하세요">
                </li>
                <li>
                <input type="text" class="add_input1 emails" id="adminmail" name="adminmail" placeholder="담당자 이메일을 입력하세요">
                </li>
                <li class="font_color1">
                <input type="text" class="add_input1 hp1" id="adminhp1" name="adminhp1" placeholder="HP" value="010" maxlength="3">
                -
                <input type="text" class="add_input1 hp2" id="adminhp2" name="adminhp2" placeholder="1234" maxlength="4">
                -
                <input type="text" class="add_input1 hp2" id="adminhp3" name="adminhp3" placeholder="5678" maxlength="4">
                </li>
                <li class="font_color1">관리자 담당부서 및 직책</li>
                <li>
                    <select class="add_select1" id="admindp" name="admindp">
                        <option value="">담당자 부서를 선택하세요</option>
                        <option value="임원">임원</option>
                        <option value="전산팀">전산팀</option>
                        <option value="디자인팀">디자인팀</option>
                        <option value="CS팀">CS팀</option>
                        <option value="MD팀">MD팀</option>
                    </select>
                    <select class="add_select1" id="adminps" name="adminps">
                        <option value="">담당자 직책을 선택하세요</option>
                        <option value="대표">대표</option>
                        <option value="부장">부장</option>
                        <option value="팀장">팀장</option>
                        <option value="과장">과장</option>
                        <option value="대리">대리</option>
                        <option value="사원">사원</option>
                    </select>
                </li>
                <li class="font_color1">※ 가입완료 후 전산 담당자가 확인 후 로그인 할 수 있습니다.</li>
            </ul>`
            <span class="admin_addbtn">
                <input type="submit" class="btn_button btncolor1" value="관리자 등록" >
                <button type="button" class="btn_button btncolor2" title="관리자 취소" onclick="goindex();">등록 취소</button>
            </span>
        </div>
    </section>
</form>
    <footer class="admin_copy">
        <div>
            Copyright ⓒ 2022 webshopping All rights reserved.
        </div>
    </footer>
</body>
</html>