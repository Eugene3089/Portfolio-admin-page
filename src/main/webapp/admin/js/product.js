function pagego(no){
	var url="";
	var lc="yes";
	switch(no){
		case"1":	//선택상품 삭제
		url="";
		break;
		
		case"2":	//신규상품 등록 페이지 이동
		url="./admin_product_write.jsp";
		break;
		
		case"3":		//카테고리 페이지 이동
		url="./admin_category.jsp";
		break;
		
		case"4":	//상품리스트 리스트
		url="./admin_product.jsp";
		break;
		
		case"5": 	//상품등록 생성
		lc="no";
		product_ck();
		break;
		
		case"6":	//카테고리 삭제
		break;
		
		case"7":	//상품 리스트
		url="./admin_product.jsp";
		break;
		
		case"8":	//카테고리 등록
		url="./admin_category_write.jsp";
		break;
		
		case"9":	//카테고리 리스트
		url="./admin_category.jsp";
		break;
		
		case"10":	//카테고리 생성
			lc="no";
			make_cate();
		break;
	}
	
	if(lc=="yes"){
		location.href=url;
	}
}

/*ajax 상품 중복코드 확인*/
function product_ajax(){
	var code =frm.pdcode.value;
	if(code==""){
		alert("상품코드를 입력하세요");
	}
	else{
		var http;
		if(window.XMLHttpRequest){
			http = new XMLHttpRequest();
		}
		http.onreadystatechange = function(){
			if(http.readyState==XMLHttpRequest.DONE){
				if(http.status==200){
					var result = http.response;
					if(result=="no"){
						alert("중복된 상품코드 입니다");
						frm.pdcode.value="";
					}
					else{
						frm.pdcode.style.readOnly = true;
						frm.codeok.value="ok";
					}
					console.log(result);
					console.log("통신성공");
				}
			}
		}
		http.open("GET","../admin_category/ajax.do?code="+code,true);
		//console.log("test");
		http.send();	
	}
}


/*할인율 자동 계산*/
function calcs(z){
	if(frm.price.value==""){
		alert("할인율 적용 시 판매가격 1000원 이상 입력하세요");
	}
	else{
		var money = Number(frm.price.value);
		var sale = Number(z);
		var total ="";
		
		total= money-(money*(sale/100));
		frm.dcprice.value=total;
		
	}
	console.log(z);
}


/*상품등록*/
function product_ck(){
	if(frm.lgcode.value==""){
		alert("대메뉴 카테고리를 입력하세요");	//나중에 select로 업데이트하기
	}
	else if(frm.pdcode.value==""){
		alert("상품코드를 입력하세요");
	}
	else if(frm.pdname.value==""){
		alert("상품명을 입력하세요");
	}
	else if(frm.explanation.value==""){
		alert("상품 부가설명을 입력하세요");
	}
	else if(frm.price.value==""){
		alert("상품 판매가격을 입력하세요");
	}
	//~나머지 입력하기
	else{
		if(isNaN(frm.price.value)==true){
			alert("판매가격은 숫자만 입력 가능합니다");
		}
		else if(Number(frm.price.value) < 1000){
			alert("판매가격은 최소 1000원 이상이어야 합니다");
		}
		else if(frm.codeok.value==""){
			alert("상품 코드 중복체크 해주세요");
		}
		else{
			frm.method="POST";
			frm.enctype="multipart/form-data";
			frm.action="../admin_category/productok.do";
			frm.submit();
		}		
	}
}


/*카테고리 등록*/
function make_cate(){
	if(frm.d_code.value==""){
		alert("대메뉴 코드를 입력하세요");
	}
	else if(frm.d_menu.value==""){
		alert("대메뉴명을 입력하세요");
	}
	else{		//'대메뉴만 생성' 체크했을 때
		if(frm.menuck.checked==true){
			frm.catecode.value=frm.d_code.value;
			frm.method="POST";
			frm.enctype="application/x-www-form-urlencoded";
			frm.action="../admin_category/cate.do";
			frm.submit();
		}
		else{	
			if(frm.s_code.value==""){
				alert("소메뉴 코드를 입력하세요");
			}
			else if(frm.s_name.value==""){
				alert("소메뉴명을 입력하세요");
			}
			else{
				frm.catecode.value = frm.d_code.value + frm.s_code.value;
					frm.method="POST";
					frm.enctype="application/x-www-form-urlencoded";
					frm.action="../admin_category/cate.do";
					frm.submit();
			}
		}
	}	
	
}
