package admin_config;

import java.io.IOException;
import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class configCtr extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private configDTO1 dto1 = new configDTO1();
	private configDTO2 dto2 = new configDTO2();
	private configDTO3 dto3 = new configDTO3();
   
	public configCtr() {
    	//System.out.println("test");	
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		//PrintWriter pr =response.getWriter();
		
		String hpgnm = request.getParameter("hpgnm");
		String hpgmail = request.getParameter("hpgmail");
		String point = request.getParameter("point");
		String money = request.getParameter("money");
		
		String[] level = request.getParameterValues("level");
		String levell = new String();
		for(int a=0; a<level.length; a++) {
			levell += level[a] + "";
		
		}
		
		String officenm = request.getParameter("officenm");
		String regitnb = request.getParameter("regitnb");
		String ceonm = request.getParameter("ceonm");
		String ceopnb =request.getParameter("ceopnb");
		String sellnb = request.getParameter("sellnb");
		String subsellnb = request.getParameter("subsellnb");
		String postalnb = request.getParameter("postalnb");
		String adress = request.getParameter("adress");
		String headnm = request.getParameter("headnm");
		String headmail = request.getParameter("headmail");
		String bank = request.getParameter("bank");
		String account = request.getParameter("account");
		String credit = request.getParameter("credit");
		String phone = request.getParameter("phone");
		String giftcard = request.getParameter("giftcard");
		String minpoint = request.getParameter("minpoint");
		String maxpoint = request.getParameter("maxpoint");
		String receipt = request.getParameter("receipt");
		String expressnm = request.getParameter("expressnm");
		String expressprc = request.getParameter("expressprc");
		String expressday = request.getParameter("expressday");
		
		
		
			dto1.setHpgnm(hpgnm);
			dto1.setHpgmail(hpgmail);
			dto1.setPoint(point);
			dto1.setMoney(money);
			dto1.setLevel(levell);
			
			dto2.setOfficenm(officenm);
			dto2.setRegitnb(regitnb);
			dto2.setCeonm(ceonm);
			dto2.setCeopnb(ceopnb);
			dto2.setSellnb(sellnb);
			dto2.setSubsellnb(subsellnb);
			dto2.setPostalnb(postalnb);
			dto2.setAdress(adress);
			dto2.setHeadnm(headnm);
			dto2.setHeadmail(headmail);
			
			dto3.setBank(bank);
			dto3.setAccount(account);
			dto3.setCredit(credit);
			dto3.setPhone(phone);
			dto3.setGiftcard(giftcard);
			dto3.setMinpoint(minpoint);
			dto3.setMaxpoint(maxpoint);
			dto3.setReceipt(receipt);
			dto3.setExpressnm(expressnm);
			dto3.setExpressprc(expressprc);
			dto3.setExpressday(expressday);
			
		configDAO dao = new configDAO();
		dao.config1(dto1);
		dao.config2(dto2);
		dao.config3(dto3);
	}
}
