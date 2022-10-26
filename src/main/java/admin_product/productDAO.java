package admin_product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import util.Dbconnection;

public class productDAO {
	
	private Connection conn;
	private ResultSet rs;
	
	public int idx() {	//인덱스 auto_increment
		String sql = "select idx from pf_product order by idx desc";
		try {
			conn = Dbconnection.getConnection();
			PreparedStatement prs = conn.prepareStatement(sql);
			rs = prs.executeQuery();
			
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;	
	}
	
	public int pf_product(productDTO dto) {
		String sql ="insert into pf_product values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		try {
			conn = Dbconnection.getConnection();
			PreparedStatement prs = conn.prepareStatement(sql);
			
			prs.setInt(1, idx());
			prs.setString(2, dto.getLgmenu());
			prs.setString(3, dto.getSmmenu());
			prs.setString(4, dto.getPdcode());
			prs.setString(5, dto.getPdname());
			prs.setString(6, dto.getExplanation());
			prs.setString(7, dto.getPrice());
			prs.setString(8, dto.getDcrate());
			prs.setString(9, dto.getDcprice());
			prs.setString(10, dto.getStock());
			prs.setString(11, dto.getSellyn());
			prs.setString(12, dto.getSoldout());
			prs.setString(13, dto.getFile());
			prs.setString(14, dto.getCkeditor());
			
			return prs.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
