package admin_category;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Dbconnection;


public class cate extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public cate() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String catecode =request.getParameter("catecode");
		String d_code = request.getParameter("d_code");
		String d_menu = request.getParameter("d_menu");
		String menuck = request.getParameter("menuck");	//db와 무관
		String s_code = request.getParameter("s_code");
		String s_name = request.getParameter("s_name");
		String codeuse = request.getParameter("codeuse");
	

		try {
			Connection conn = Dbconnection.getConnection();
				//System.out.println(conn);
			response.setContentType("text/html; charset=utf-8");
			
			String check_sql ="select count(*) as ctn from pf_category where catecode=?";
			PreparedStatement pr2 = conn.prepareStatement(check_sql);
			pr2.setString(1, catecode);
			
			ResultSet rs = pr2.executeQuery();
			String sqlno = null;
			while(rs.next()) {
				 sqlno= rs.getString("ctn").intern();
			}
			if(sqlno != "0") {
				PrintWriter pw = response.getWriter();
				pw.print("<script>alert('해당 카테고리는 이미 등록 되어 있습니다');"
						+ "history.go(-1);"
						+ "</script>");
			}
			else {
			
			
				Date date = new Date();
				SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
				String time =sf.format(date);
				
				String sql = "insert into pf_category (cidx,catecode,d_code,d_menu,s_code,s_name,codeuse,indate)"
						+ "values ('0',?,?,?,?,?,?,?)";
				PreparedStatement pr = conn.prepareStatement(sql);
				pr.setString(1, catecode);
				pr.setString(2, d_code);
				pr.setString(3, d_menu);
				pr.setString(4, s_code);
				pr.setString(5, s_name);
				pr.setString(6, codeuse);
				pr.setString(7, time);
				System.out.println(pr);
				pr.executeUpdate();	//int n : sql문법이 제대로 작동되는지 확인
				conn.close();
				
				PrintWriter pw = response.getWriter();
				pw.print("<script>alert('정상적으로 카테고리가 저장 되었습니다'); location.href='./admin_category.jsp' </script>");
				//System.out.println(pr);
			}
		}catch(Exception e) {
			e.getMessage();
		}
		
	}

}

