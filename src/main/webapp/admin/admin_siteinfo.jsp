<%@ page import="java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<script src="./js/jquery.js"></script>
<script>
	function savecheck(){
		var getcheck = /^[a-zA-Z0-9가-힣]/;
		var getmail = /^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]+$/;
		var getname= /^[ㄱ-ㅎ | ㅏ-ㅣ | 가-힣]/;
		var onlynb = /^[0-9]/;
	
		//홈페이지 제목 검사
		if($("#hpgnm").val()==""){
			alert("홈페이지 제목을 입력 하세요");
			$("hpgnm").focus();
			return false;
		}
		//관리지ㅏ 메일 검사
		if($("#hpgmail").val()==""){
			alert("관리자 메일을 입력 하세요");
			$("hpgmail").focus();
			return false;
		}
		if(!getmail.test($("#hpgmail").val())){
			alert("이메일 형식에 맞게 입력하세요");
			$("#hpgmail").val("");
			$("#hpgmail").focus();
			return false;
		}
		//권한 레벨 검사
		if($("#level").val() == ""){
			alert("권한 레벨을 선택하세요");
			return false;
		}
		//회사명 검사
		if($("#officenm").val()==""){
			alert("회사명을 입력 하세요");
			$("officenm").focus();
			return false;
		}
		//사업자 등록번호 검사
		if($("#regitnb").val()==""){
			alert("사업자등록번호를 입력 하세요");
			$("regitnb").focus();
			return false;
		}
		if(!onlynb.test($("#regitnb").val())){
			alert("입력 형식에 맞게 입력하세요");
			$("#regitnb").val("");
			$("#regitnb").focus();
			return false;
		}
		//대표자명 검사
		if($("#ceonm").val()==""){
			alert("대표자 이름을 입력 하세요");
			$("ceonm").focus();
			return false;
		}
		if(!getname.test($("#ceonm").val())){
			alert("입력 형식에 맞게 입력하세요");
			$("#ceonm").val("");
			$("#ceonm").focus();
			return false;
		}
		//대표전화번호
		if($("#ceopnb").val()==""){
			alert("대표 전화번호를 입력 하세요");
			$("ceopnb").focus();
			return false;
		}
		if(!onlynb.test($("#ceopnb").val())){
			alert("입력 형식에 맞게 입력하세요");
			$("#ceopnb").val("");
			$("#ceopnb").focus();
			return false;
		}
		//사업장 우편번호
		if($("#postalnb").val()==""){
			alert("사업장 우편번호를 입력 하세요");
			$("postalnb").focus();
			return false;
		}
		if(!onlynb.test($("#postalnb").val())){
			alert("입력 형식에 맞게 입력하세요");
			$("#postalnb").val("");
			$("#postalnb").focus();
			return false;
		}
		//사업장 주소
		if($("#adress").val()==""){
			alert("사업장 주소를 입력 하세요");
			$("adress").focus();
			return false;
		}
		if(!getcheck.test($("#adress").val())){
			alert("입력 형식에 맞게 입력하세요");
			$("#adress").val("");
			$("#adress").focus();
			return false;
		}
		//정보관리책임자명
		if($("#headnm").val()==""){
			alert("정보관리책임자명을 입력 하세요");
			$("headnm").focus();
			return false;
		}
		if(!getname.test($("#headnm").val())){
			alert("입력 형식에 맞게 입력하세요");
			$("#headnm").val("");
			$("#headnm").focus();
			return false;
		}
		//정보관리책임자 이메일
		if($("#headmail").val()==""){
			alert("정보책임자 이메일을 입력 하세요");
			$("headmail").focus();
			return false;
		}
		if(!getmail.test($("#headmail").val())){
			alert("이메일 형식에 맞게 입력하세요");
			$("#headmail").val("");
			$("#headmail").focus();
			return false;
		}
		//은행명
		if($("#bank").val()==""){
			alert("은행명을 입력 하세요");
			$("bank").focus();
			return false;
		}
		if(!getcheck.test($("#bank").val())){
			alert("형식에 맞게 입력하세요");
			$("#bank").val("");
			$("#bank").focus();
			return false;
		}
		//계좌번호
		if($("#account").val()==""){
			alert("계좌번호를 입력 하세요");
			$("account").focus();
			return false;
		}
		if(!onlynb.test($("#account").val())){
			alert("입력 형식에 맞게 입력하세요");
			$("#account").val("");
			$("#account").focus();
			return false;
		}
		//결제최소포인트
		if($("#minpoint").val()==""){
			alert("사용할 포인트를 입력 하세요");
			$("minpoint").focus();
			return false;
		}
		if(!onlynb.test($("#minpoint").val())){
			alert("입력 형식에 맞게 입력하세요");
			$("#minpoint").val("");
			$("#minpoint").focus();
			return false;
		}
		//결제최대포인트
		if($("#maxpoint").val()==""){
			alert("사용할 최대 포인트를 입력 하세요");
			$("maxpoint").focus();
			return false;
		}
		if(!onlynb.test($("#maxpoint").val())){
			alert("입력 형식에 맞게 입력하세요");
			$("#maxpoint").val("");
			$("#maxpoint").focus();
			return false;
		}
		//배송업체명
		if($("#expressnm").val()==""){
			alert("배송업체명을 입력 하세요");
			$("expressnm").focus();
			return false;
		}
		if(!getcheck.test($("#expressnm").val())){
			alert("입력 형식에 맞게 입력하세요");
			$("#expressnm").val("");
			$("#expressnm").focus();
			return false;
		}
		//배송비 가격
		if($("#expressprc").val()==""){
			alert("배송업체명을 입력 하세요");
			$("expressprc").focus();
			return false;
		}
		if(!onlynb.test($("#expressprc").val())){
			alert("입력 형식에 맞게 입력하세요");
			$("#expressprc").val("");
			$("#expressprc").focus();
			return false;
		}
	}
	//개인 법인사업자 번호
	$(document).ready(function(){
		$('.in_form10').on('change',function(){
			var radiocheck = $('.in_form10:checked').val();
			
			if(radiocheck == "solo"){
				$('#regitnb').attr('placeholder','000-00-00000');
				
			}
			else{
				$('#regitnb').attr('placeholder','000000-0000000');
			}
		});
	});
	
	
	function cancelsave(){
		history.go(0);
	}
</script>

<form action="configCtr" name="frm2" id="frm2" method="post" onsubmit="return savecheck()">
<p>홈페이지 가입환경 설정</p>
<div class="subpage_view">
<ul class="info_form">
    <li>홈페이지 제목</li>
    <li>
        <input type="text" class="in_form1" id="hpgnm" name="hpgnm">
    </li>
</ul>    
<ul class="info_form">
    <li>관리자 메일 주소</li>
    <li>
        <input type="text" class="in_form2" id="hpgmail" name="hpgmail" placeholder="ex)xxxxx@xxxx.com"> ※ 관리자가 보내고 받는 용도로 사용하는 메일 주소를 입력합니다.(회원가입,인증메일,회원메일발송 등에서 사용)
    </li>
</ul> 
<ul class="info_form">
    <li>포인트 사용 유/무</li>
    <li class="checkcss">
        <em><label><input type="radio" class="ckclass" id="point" name="point" value="사용">포인트 사용</label></em> 
        <em><label><input type="radio" class="ckclass" id="point" name="point" value="미사용" checked>포인트 미사용</label></em>
    </li>
</ul>
<ul class="info_form2" style="border-bottom:1px solid rgb(81, 61, 61);">
    <li>회원가입시 적립금</li>
    <li>
        <input type="text" class="in_form3" maxlength="5" id="money" name="money" placeholder="0 " style="text-align:right"> 점
    </li>
    <li>회원가입시 권한레벨</li>
    <li>
    	<select class="in_form3" id="level" name="level">
    		<option value=""></option>
    		<option value="일반회원">1:일반회원</option>
    		<option value="실버회원">2:실버회원</option>
    		<option value="골드회원">3:골드회원</option>
    		<option value="VIP회원">4:VIP회원</option>
    		<option value="사내직원">5:사내직원</option>
    		<option value="관리자">9:관리자</option>
    	</select>
<!--         <input type="text" class="in_form3" maxlength="1"> 레벨 -->
    </li>
</ul> 
</div>
<p>홈페이지 기본환경 설정</p>
<div class="subpage_view">
<ul class="info_form2">
    <li>회사명</li>
    <li>
        <input type="text" class="in_form0" id="officenm" name="officenm"> 
    </li>
    <li>사업자등록번호</li>
    <li>
        <input type="text" class="in_form0" id="regitnb" name="regitnb" placeholder="000-00-00000">
        <input type="radio" class="in_form10"  name="regitnb2" value="solo" checked>개인
        <input type="radio" class="in_form10"  name="regitnb2" value="corporate">법인
    </li>
</ul> 
<ul class="info_form2">
    <li>대표자명</li>
    <li>
        <input type="text" class="in_form0" id="ceonm" name="ceonm"> 
    </li>
    <li>대표전화번호</li>
    <li>
        <input type="text" class="in_form0" id="ceopnb" name="ceopnb"> 
    </li>
</ul>
<ul class="info_form2">
    <li>통신판매업 신고번호</li>
    <li>
        <input type="text" class="in_form0" id="sellnb" name="sellnb" placeholder="통신판매업 등록자만 입력하세요"> 
    </li>
    <li>부가통신 사업자번호</li>
    <li>
        <input type="text" class="in_form0" id="subsellnb" name="subsellnb" placeholder="통신판매업 등록자만 입력하세요"> 
    </li>
</ul>
<ul class="info_form2">
    <li>사업장 우편번호</li>
    <li>
        <input type="text" class="in_form0" id="postalnb" name="postalnb" > 
    </li>
    <li>사업장 주소</li>
    <li>
        <input type="text" class="in_form2" id="adress" name="adress"> 
    </li>
</ul>
<ul class="info_form2" style="border-bottom:1px solid rgb(81, 61, 61);">
    <li>정보관리책임자명</li>
    <li>
        <input type="text" class="in_form0" id="headnm" name="headnm"> 
    </li>
    <li>정보책임자 E-mail</li>
    <li>
        <input type="text" class="in_form1" id="headmail" name="headmail" placeholder="ex)xxxx@xxxx.com"> 
    </li>
</ul>
</div>
<p>결제 기본환경 설정</p>
<div class="subpage_view">  
<ul class="info_form2">
    <li>무통장 은행</li>
    <li>
        <input type="text" class="in_form0" id="bank" name="bank"> 
    </li>
    <li>은행계좌번호</li>
    <li>
        <input type="text" class="in_form1" id="account" name="account" placeholder="-없이 입력하시오"> 
    </li>
</ul>
<ul class="info_form">
    <li>신용카드 결제 사용</li>
    <li class="checkcss">
        <em><label><input type="radio" class="ckclass" id="credit" name="credit" value="사용"> 사용</label></em> 
        <em><label><input type="radio" class="ckclass" id="credit" name="credit" value="미사용" checked> 미사용</label></em> ※ 해당 PG사가 있을 경우 사용으로 변경합니다.
    </li>
</ul>
<ul class="info_form">
    <li>휴대폰 결제 사용</li>
    <li class="checkcss">
        <em><label><input type="radio" class="ckclass" id="phone" name="phone" value="사용"> 사용</label></em> 
        <em><label><input type="radio" class="ckclass" id="phone" name="phone" value="미사용" checked> 미사용</label></em> ※ 주문시 휴대폰 결제를 가능하게 할 것인지를 설정합니다.
    </li>
</ul>
<ul class="info_form">
    <li>도서상품권 결제사용</li>
    <li class="checkcss">
        <em><label><input type="radio" class="ckclass" id="giftcard" name="giftcard" value="사용"> 사용</label></em> 
        <em><label><input type="radio" class="ckclass" id="giftcard" name="giftcard" value="미사용" checked> 미사용</label></em> ※ 도서상품권 결제만 적용이 되며, 그 외에 상품권은 결제 되지 않습니다.
    </li>
</ul>
<ul class="info_form2">
    <li>결제 최소 포인트</li>
    <li>
        <input type="text" class="in_form0" maxlength="5" id="minpoint" name="minpoint" placeholder="0 " style="text-align:right"> 점
    </li>
    <li>결제 최대 포인트</li>
    <li>
        <input type="text" class="in_form0" maxlength="5" id="maxpoint" name="maxpoint" placeholder="결제 금액의 최대 10%만 사용 가능 " style="text-align:right"> 점
    </li>
</ul>
<ul class="info_form">
    <li>현금 영수증 발급사용</li>
    <li class="checkcss">
        <em><label><input type="radio" class="ckclass" id="receipt" name="receipt" value="사용"> 사용</label></em> 
        <em><label><input type="radio" class="ckclass" id="receipt" name="receipt" value="미사용" checked> 미사용</label></em> ※ 현금영수증 관련 사항은 PG사 가입이 되었을 경우 사용가능 합니다.
    </li>
</ul>
<ul class="info_form2">
    <li>배송업체명</li>
    <li>
        <input type="text" class="in_form0" id="expressnm" name="expressnm"> 
    </li>
    <li>배송비 가격</li>
    <li>
        <input type="text" class="in_form0" maxlength="7" id="expressprc" name="expressprc"> 원
    </li>
</ul>
<ul class="info_form" style="border-bottom:1px solid rgb(81, 61, 61);">
    <li>희망배송일</li>
    <li class="checkcss">
        <em><label><input type="radio" class="ckclass" id="expressday" name="expressday" value="사용"> 사용</label></em> 
        <em><label><input type="radio" class="ckclass" id="expressday" name="expressday" value="미사용" checked> 미사용</label></em> ※ 희망배송일 사용시 사용자가 직접 설정 할 수 있습니다.
    </li>
</ul>
</div>
<div class="btn_div">
    <button type="submit" class="sub_btn1" title="설정 저장">설정 저장</button>
    <button type="button" class="sub_btn2" title="저장 취소" onclick="cancelsave();">저장 취소</button>
</div>
</form>