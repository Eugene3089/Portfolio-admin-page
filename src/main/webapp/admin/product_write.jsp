<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<p>상품 등록 페이지</p>

<form action="productAction.jsp" method="post" name="product" id="product">
<div class="product_insert">
    <ul>
        <li>대메뉴 카테고리</li>
        <li>
            <input type="text" class="product_input1" name="lgcode"> 
        </li>
    </ul>
    <ul>
        <li>소메뉴 카테고리</li>
        <li>
            <input type="text" class="product_input1" name="smcode"> 
        </li>
    </ul>
    <ul>
        <li>상품코드</li>
        <li>
        	<input type="hidden" name="codeok" value="">
            <input type="text" class="product_input1" name="pdcode" maxlenght="6">
            <input type="button" value="중복확인" title="중복확인" class="product_btn" onclick="product_ajax();"> <span class="help_text">※ 상품코드는 절대 중복되지 않도록 합니다.(*6자리 코드를 입력하세요)</span>
        </li>
    </ul>
    <ul>
        <li>상품명</li>
        <li>
            <input type="text" class="product_input2" maxlength="100" name="pdname" > <span class="help_text">※ 상품명은 최대 100자까지만 적용할 수 있습니다.</span>
        </li>
    </ul>
    <ul>
        <li>상품 부가설명</li>
        <li>
            <input type="text" class="product_input4" maxlength="200" name="explanation"> <span class="help_text">※ 상품명은 최대 200자까지만 적용할 수 있습니다.</span>
        </li>
    </ul>
    <ul>
        <li>판매가격</li>
        <li>
            <input type="text" class="product_input3" maxlength="7" name="price"> <span class="help_text">※ , 없이 숫자만 입력하세요 최대 7자리</span>
        </li>
    </ul>
    <ul>
        <li>할인율</li>
        <li>
            <input type="text" class="product_input3" maxlength="2" value="0" name="dcrate" onkeyup="calcs(this.value);">% <span class="help_text">※ 숫자만 입력하세요</span>
        </li>
    </ul>
    <ul>
        <li>할인가격</li>
        <li>
            <input type="text" class="product_input3" maxlength="7" value="0" readonly name="dcprice"> <span class="help_text">※ 할인율이 0%일 경우 할인가격은 0으로 처리 합니다.</span>
        </li>
    </ul>
    <ul>
        <li>상품재고</li>
        <li>
            <input type="text" class="product_input3" maxlength="4" value="0" name="stock">EA <span class="help_text">※ 숫자만 입력하세요. 재고가 0일 경우 soldout이 됩니다.</span>
        </li>
    </ul>
    <ul>
        <li>판매 유/무</li>
        <li>
            <label class="product_label">
            <input type="radio" name="a" style="vertical-align:-1px;" name="sellyn" value="Y" checked> 판매시작
            </label>
            <label class="product_label">
            <input type="radio" name="a" style="vertical-align:-1px;" name="sellyn" value="N"> 판매종료
            </label> <span class="help_text">※ 숫자만 입력하세요. 재고가 0일 경우 soldout이 됩니다.</span>
        </li>
    </ul>
    <ul>
        <li>조기품절</li>
        <li>
            <label class="product_label">
                <input type="radio" name="b" style="vertical-align:-1px;" name="soldout" value="Y"> 사용
            </label>
            <label class="product_label">
                <input type="radio" name="b" style="vertical-align:-1px;" name="soldout" value="N" checked> 미사용
            </label>
        </li>
    </ul>
    <ul style="height: 160px;">
        <li>상품 대표이미지</li>
        <li>
            <ol style="width:100%; height: auto;">
            <li style="width:100%; height:45px;">
            <input type="file" name="img1" value="첨부파일1">
            <span class="help_text">※ 상품 대표이미지 이며, 이미지 용량은 2MB 까지 입니다.</span>
            </li>
            <li style="height:45px;">
            <input type="file" name="img2" value="첨부파일2">
            <span class="help_text">※ 추가 이미지 이며, 이미지 용량은 2MB 까지 입니다.</span>
            </li>
            <li style="height:45px;">
            <input type="file" name="img3" value="첨부파일3">
            <span class="help_text">※ 추가 이미지 이며, 이미지 용량은 2MB 까지 입니다.</span>
            </li>
            </ol>
        </li>
    </ul>
    <ul style="height: 400px;">
        <li>상품 상세설명</li>
        <li>
            <textarea class="product_text1" name="info" id="info"></textarea>
            <script>
            	CKEDITOR.replace('info',{
            		height:290,
            		width:'100%'
            	});
            </script>
        </li>
    </ul>
</div>
<div class="subpage_view4" style="text-align:center;">
    <input type="button" value="상품 리스트" title="상품 리스트" class="p_button p_button_color1" style="margin-right: 5px;" onclick="pagego('4');">
    <input type="submit" value="상품 등록" title="상품 등록" class="p_button p_button_color2" onclick="pagego('5');">
</div>
</form>

<!-- <script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
<script>
	ClassicEditor.create(document.getElementById("ckeditor"));
	function goproduct(){
		location.href="./admin_product.jsp";
	}
</script> -->