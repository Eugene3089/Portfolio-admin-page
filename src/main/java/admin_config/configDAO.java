package admin_config;

import java.sql.*;

import util.Dbconnection;


public class configDAO {

	private PreparedStatement prs;
	//private ResultSet rs;
	
	public int config1(configDTO1 dto1) {
		Connection conn = Dbconnection.getConnection();
		String sql = "insert into pf_config1 values('0',?,?,?,?,?)";
		
		try {
			prs= conn.prepareStatement(sql);
			prs.setString(1, dto1.getHpgnm());
			prs.setString(2, dto1.getHpgmail());
			prs.setString(3, dto1.getPoint());
			prs.setString(4, dto1.getMoney());
			prs.setString(5, dto1.getLevel());
			
			return prs.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public int config2(configDTO2 dto2) {
		Connection conn = Dbconnection.getConnection();
		String sql = "insert into pf_config1 values('0',?,?,?,?,?,?,?,?,?,?)";
		
		try {
			prs = conn.prepareStatement(sql);
			prs.setString(1, dto2.getOfficenm());
			prs.setString(2, dto2.getRegitnb());
			prs.setString(3, dto2.getCeonm());
			prs.setString(4, dto2.getCeopnb());
			prs.setString(5, dto2.getSellnb());
			prs.setString(6, dto2.getSubsellnb());
			prs.setString(7, dto2.getPostalnb());
			prs.setString(8, dto2.getAdress());
			prs.setString(9, dto2.getHeadnm());
			prs.setString(10, dto2.getHeadmail());
			
			return prs.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public int config3(configDTO3 dto3) {
		Connection conn = Dbconnection.getConnection();
		String sql = "insert into pf_config3 valuse('0',?,?,?,?,?,?,?,?,?,?,?)";
		
		try {
			prs = conn.prepareStatement(sql);
			prs.setString(1, dto3.getBank());
			prs.setString(2, dto3.getAccount());
			prs.setString(3, dto3.getCredit());
			prs.setString(4, dto3.getPhone());
			prs.setString(5, dto3.getGiftcard());
			prs.setString(6, dto3.getMinpoint());
			prs.setString(7, dto3.getMaxpoint());
			prs.setString(8, dto3.getReceipt());
			prs.setString(9, dto3.getExpressnm());
			prs.setString(10, dto3.getExpressprc());
			prs.setString(11, dto3.getExpressday());
			
			return prs.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	
	
	
	
	
	
	
	
}
