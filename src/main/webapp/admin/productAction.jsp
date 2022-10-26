<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="admin_product.productDTO" %>
    <%@ page import="admin_product.productDAO" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록 JSP Controller</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String lgmenu = request.getParameter("lgmenu");
		String smmenu = request.getParameter("smmenu");
		String pdcode = request.getParameter("pdcode");
		String pdname = request.getParameter("pdname");
		String explanation = request.getParameter("explanation");
		String price = request.getParameter("price");
		String dcrate = request.getParameter("dcrate");
		String dcprice = request.getParameter("dcprice");
		String stock = request.getParameter("stock");
		String sellyn = request.getParameter("sellyn");
		String soldout = request.getParameter("soldout");
		String file = request.getParameter("file");
		String ckeditor = request.getParameter("ckeditor");
		
		productDTO dto = new productDTO();
		
		dto.setLgmenu(lgmenu);
		dto.setSmmenu(smmenu);
		dto.setPdcode(pdcode);
		dto.setPdname(pdname);
		dto.setExplanation(explanation);
		dto.setPrice(price);
		dto.setDcrate(dcrate);
		dto.setDcprice(dcprice);
		dto.setStock(stock);
		dto.setSellyn(sellyn);
		dto.setSoldout(soldout);
		dto.setFile(file);
		dto.setCkeditor(ckeditor);
		
		productDAO dao = new productDAO();
		dao.pf_product(dto);
	%>
	
	<script>
		alert("상품 정보 등록 완료");
		location.href="./admin_product.jsp";
	</script>
</body>
</html>