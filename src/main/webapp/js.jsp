<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js이벤트 핸들링 추가 설명</title>
<script src="./admin/ckeditor/ckeditor.js"></script>
</head>
<body>
	<input type="text" id="aaa" onkeyup="abc()" onmouseover="bbb()">
	<!-- onkeyup: 키보드의 키를 누르고나서 띄었을 때 반응 (한자키, 한영 변환 안함)
		 onkeydown: 키보드의 키를 누를 때 반응 (한자키, 한영 변환 안함)
		 onkeypress: 키보드의 키를 누를 때 반응 (특수키는 반응 X)-->
		 <br><br><br>
	<input type="text" id="bbb" onkeyup="plus()"><br>
	<!-- datalist태그와 함께 사용하지만 onkeyup 이벤트는 지속적으로 적용하게 됨.
		단, select일 경우 onkey 이벤트는 절대 사용하지 않음. -->
	<datalist>
		<option>01</option>
		<option>02</option>
		<option>03</option>
		<option>04</option>
	</datalist>
	<br>
	<input type="text" id="ccc" onkeyup="plus()" list="op"><br>
	<input type="text" id="code" readonly="readonly"><br><br>
	
	<form name="f" id="f" method="post">
		<textarea id="contents"></textarea><br>
		<input type="button" value="전송" onclick="ck()">
	</form>
</body>
	<script>
		CKEDITOR.replace("contents");	//editor api를 적용
		function ck(){
			//ckeditor는 별도의 instances를 가져와서 값을 검토 해야함.
			var ct = CKEDITOR.instances.contents.getData();
			if(ct==""){
				alert("내용을 입력해주세요");
			}
			else{
				f.submit();
			}
		}
	
		function abc(){
			var a = document.getElementById("aaa").value;
			console.log(a);
		}
		
		function bbb(){
			alert("test");
		}
		
		function plus(){
			var aa=document.getElementById("bbb").value;
			var bb=document.getElementById("ccc").value;
			var z=aa+bb;
			document.getElementById("code").value=z;
		}
	</script>
</html>