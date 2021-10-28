package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import vo.BasketBean;
import vo.BoardBean;

import static db.JdbcUtil.*;

public class BasketDAO {

    private BasketDAO() {}
    
    private static BasketDAO instance;

    public static BasketDAO getInstance() {
        // 기존의 인스턴스가 존재하지 않을 경우에만 인스턴스를 생성
        if(instance == null) {
            instance = new BasketDAO();
        }
        
        // 인스턴스 리턴
        return instance;
    }
    // ========================================================================
    // DB 작업을 수행하기 위해 사용하는 Connection 타입 멤버변수 선언
    Connection con;

    // Connection 객체를 외부로부터 전달받아 저장하기 위한 Setter 메서드 정의
    public void setConnection(Connection con) {
        this.con = con;
    }
    
    public int insertBasket(BasketBean basket) {
    	System.out.println("insertBasket - BasketDAO");
        int insertCount = 0;
        
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        try {
        
            // 데이터 추가 작업을 위한 INSERT 작업 수행
            String sql = "INSERT INTO product VALUES (null,?,?,?,?,?,?,?,?)";
            pstmt = con.prepareStatement(sql);
            
            // 첫 컬럼은 auto_increment 이므로 null값 넣음
            pstmt.setString(1, basket.getCutomer_id());		//		고객 아이디
            pstmt.setInt(2, basket.getProduct_num());   	//		재품 번호
            pstmt.setString(3, basket.getProduct_name());	//		제품명
            pstmt.setInt(4, basket.getProduct_price());  	// 		재품 가격
            pstmt.setInt(5, basket.getProduct_qty());		// 		주문 수량
            pstmt.setInt(6, basket.getProduct_discount());  //		상품 할인률
            pstmt.setString(7, basket.getProduct_img()); 	//		제품 이미지
            pstmt.setString(8, basket.getSname());			// 		회사명
               
            // INSERT 구문 실행 및 결과 리턴받기
            insertCount = pstmt.executeUpdate();
            
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("insertBasket() 오류 - " + e.getMessage());
        } finally {
        	// 자원 반환
            close(rs);
            close(pstmt);
        }
        
        return insertCount;
    }


    
}