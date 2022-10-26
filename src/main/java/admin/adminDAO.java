package admin;

import java.sql.*;
import util.Dbconnection;

public class adminDAO {

	private Connection conn;
	private ResultSet rs;
		
	public int idcheckAction(String adminid) {		
		String sql = "select adminid from pf_register where adminid =?";
		try {
			conn = Dbconnection.getConnection();
			PreparedStatement prs = conn.prepareStatement(sql);
			
			prs.setString(1, adminid);
			
			rs = prs.executeQuery();
			if (rs.next()) {
				return 1;	//아이디 중복
			} else {
				return 0;	//아이디 없음
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return -1;
	}
	public int adminidx() {
		String sql = "select adminidx from pf_register order by adminidx desc";
		try {
			conn = Dbconnection.getConnection();
			PreparedStatement prs = conn.prepareStatement(sql);
			rs = prs.executeQuery();
			
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	public String admindate() {
		String sql = "select now()";
		try {
			conn =Dbconnection.getConnection();
			PreparedStatement prs = conn.prepareStatement(sql);
			rs= prs.executeQuery();
			
			if(rs.next()) {
				return rs.getString(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "";
	}

	public int register(adminDTO dto) {
		String sql = "insert into pf_register values(?,?,?,?,?,?,?,?,?)";

		try {
			conn = Dbconnection.getConnection();
			PreparedStatement prs = conn.prepareStatement(sql);
				//System.out.println("test");
			prs.setInt(1, adminidx());
			prs.setString(2, dto.getAdminid());
			prs.setString(3, dto.getAdminpw());
			prs.setString(4, dto.getAdminnm());
			prs.setString(5, dto.getAdminmail());
			prs.setString(6, dto.getAdminhp());
			prs.setString(7, dto.getAdmindp());
			prs.setString(8, dto.getAdminps());
			prs.setString(9, admindate());
			
			return prs.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return -1;
	}

	public int login(String adminid, String adminpw) {
		String sql = "select adminpw from pf_register where adminid =?";
		try {
			conn = Dbconnection.getConnection();
			PreparedStatement prs =conn.prepareStatement(sql);
			
			prs.setString(1, adminid);
			rs = prs.executeQuery();
			if (rs.next()) {
				//System.out.println(rs.getString(1)); 
				if (rs.getString(1).equals(adminpw)) {
			
					return 1; // 로그인 성공
				} else {
					return 0; // 비밀번호 불일치
				}
			}
			return -1; // 아이디가 없음
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (rs != null) {
					rs.close();
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return -2; // db 오류
	}

}
