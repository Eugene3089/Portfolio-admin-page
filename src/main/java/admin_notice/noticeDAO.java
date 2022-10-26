package admin_notice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.Dbconnection;

public class noticeDAO {

	private Connection conn;
	//private PreparedStatement prs;
	private ResultSet rs;
	
	public String datetime() {		//작성날짜
		String sql = "select now()";
		try {
			conn=Dbconnection.getConnection();
			PreparedStatement prs = conn.prepareStatement(sql);
			rs = prs.executeQuery();
			
			if(rs.next()) {
				return rs.getString(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		} 
		return ""; 	//db error
	}
	
	public int idx() {	//인덱스 auto_increment
		String sql = "select idx from pf_noticelist order by idx desc";
		try {
			conn = Dbconnection.getConnection();
			PreparedStatement prs = conn.prepareStatement(sql);
			rs = prs.executeQuery();
			
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1;	//첫 게시물
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;	// db error
	}
	
	public int pf_noticelist(String title, String adminid, String contents) {
		String sql ="insert into pf_noticelist values(?,?,?,?,?,?)";
		
		try {
			conn = Dbconnection.getConnection();
			PreparedStatement prs = conn.prepareStatement(sql);
				//System.out.println("test");
			prs.setInt(1, idx());
			prs.setString(2, title);
			prs.setString(3, adminid);
			prs.setString(4, contents);
			prs.setString(5, datetime());
			prs.setInt(6, 1);
			return prs.executeUpdate();	
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	public ArrayList<noticeDTO> list(int pagenumber){
		String sql ="select * from pf_noticelist where idx < ? and noticeavailable = 1 order by idx desc limit 10";
		ArrayList<noticeDTO> list = new ArrayList<noticeDTO>();
		try {
			conn =Dbconnection.getConnection();
			PreparedStatement prs = conn.prepareStatement(sql);
			prs.setInt(1, idx() - (pagenumber -1)*10);
			rs = prs.executeQuery();
			while(rs.next()) {
				noticeDTO dto = new noticeDTO();
				dto.setIdx(rs.getInt(1));
				dto.setTitle(rs.getString(2));
				dto.setAdminid(rs.getString(3));
				dto.setContents(rs.getString(4));
				dto.setDate(rs.getString(5));
				dto.setNoticeavailable(rs.getInt(6));
				
				list.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace(); 
		}
		return list;
	}
	
	public boolean nextpage(int pagenumber) {
		String sql = "select*from pf_noticelist where idx < ? and noticeavailable=1";
		try {
			conn = Dbconnection.getConnection();
			PreparedStatement prs = conn.prepareStatement(sql);
			prs.setInt(1, idx() - (pagenumber -1)*10);
			rs = prs.executeQuery();
			if(rs.next()) {
				return true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public int checkedboxall(String[] idx) {		//봐도 잘 모르겠다: 코드 여러번 보고 숙지하기
		int[] arr =null;
		int result = 0;
		String sql = "delete from pf_noticelist where idx=?";
		try {
			conn=Dbconnection.getConnection();
			PreparedStatement prs = conn.prepareStatement(sql);
			
			for(int i=0; i<idx.length; i++) {
				prs.setString(1, idx[i]);
				prs.addBatch();
			}
			arr = prs.executeBatch();
			
			for(int i=0; i< arr.length; i++) {
				if(arr[i]== -2) {
					result++;
				}
			}
			if(idx.length==result) {
				conn.commit();		//한번에 여러개 삭제시 commit:
			}
				else {
					conn.rollback();	//여러개 삭제 X rollback:
				}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}

