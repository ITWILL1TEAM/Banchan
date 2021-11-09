package dao;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import vo.*;

public class ChartDAO {
    private ChartDAO() {}
    
    private static ChartDAO instance;

    public static ChartDAO getInstance() {
        // 기존의 인스턴스가 존재하지 않을 경우에만 인스턴스를 생성
        if(instance == null) {
            instance = new ChartDAO();
        }
        
        // 인스턴스 턴
        return instance;
    }
    // ========================================================================
    // DB 작업을 수행하기 위해 사용하는 Connection 타입 멤버변수 선언
    Connection con;

    // Connection 객체를 외부로부터 전달받아 저장하기 위한 Setter 메서드 정의
    public void setConnection(Connection con) {
        this.con = con;
    }
    
    
    
    
	public ArrayList<ChartBean> selectMonthData(){
		ArrayList<ChartBean> monthData = null; 
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		
		try {
			String sql = "SELECT MONTH(`order_date`) AS `date`, sum(`order_price`) AS 'SUM' FROM order_list GROUP BY `date`";
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			monthData = new ArrayList<ChartBean>();
			
			while (rs.next()) {			
				ChartBean chart = new ChartBean();
				chart.setMonth(rs.getInt("date"));
				chart.setMonth_sum(rs.getInt("SUM"));
				

				// 1개 레코드가 저장된 BoardBean 객체를 List 객체에 추가
				monthData.add(chart);
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 자원 반환
			close(rs);
			close(pstmt);
		}
		
		
		
		return monthData;
	}
    

    
    
    
    
    
}
