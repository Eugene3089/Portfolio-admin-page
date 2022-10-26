package admin_category;

import java.io.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

import util.Dbconnection;

public class ajax extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public ajax() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/x-json;charset=utf-8");
		String code = request.getParameter("code");
		PrintWriter pr = response.getWriter();
		
		try {
			
			Connection conn = (Connection) Dbconnection.getConnection();
			
			String ck_sql ="select count(*) as ctn from pf_product where pdcode";
			PreparedStatement ps = conn.prepareStatement(ck_sql);
			ps.setString(1, code);
			ResultSet rs = ps.executeQuery();
			String row =null;
			String result = null;	//ajax로 보내는 변수값
			while(rs.next()) {
				row =  rs.getString("ctn").intern();
			}
			if(row != "0") {
				result="no";
			}
			else {
				result="yes";
			}
				pr.print(result);
		}catch(Exception e) {
			e.getMessage();
		}
		//System.out.println(code);
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
