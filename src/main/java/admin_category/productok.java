package admin_category;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig(
		fileSizeThreshold = 1024*1024*2,
		maxFileSize = 1024*1024*2,
		maxRequestSize = 1024*1024*2
		
)

public class productok extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public productok() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/*상품등록*/	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		try {
		//파일 업로드 경로
		String path=request.getServletContext().getRealPath("");
		String upload= path + "product/";
		PrintWriter pr = response.getWriter();
		pr.write(upload);
		System.out.println(upload);
		
		String lgcode = request.getParameter("lgcode");
		String smcode = request.getParameter("smcode");
		String pdcode = request.getParameter("pdcode");
		String pdname =request.getParameter("pdname");
		String explanation = request.getParameter("explanation");
		String price = request.getParameter("price");
		String dcrate = request.getParameter("dcrate");
		String dcprice = request.getParameter("dcprice");
		String stock = request.getParameter("stock");
		String sellyn = request.getParameter("sellyn");
		String soldout = request.getParameter("soldout");
		
		Part img1 = request.getPart("img1");
		Part img2 = request.getPart("img2");
		Part img3 = request.getPart("img3");
		
		for(Part p : request.getParts()) {
			p.write(upload + img1);
		}
		
		String info = request.getParameter("info");
		
		System.out.println(lgcode);
		System.out.println(img1);
		System.out.println(info);
		
		}catch(Exception e) {
	
		}
	}

}
