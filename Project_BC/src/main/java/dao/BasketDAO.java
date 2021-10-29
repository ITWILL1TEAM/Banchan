package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vo.BasketBean;

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
//        ResultSet rs = null;
        
        try {
        	
        	// product_img는 product_img 테이블에서 product_num으로 조회해서 제품번호에 맞는 이미지 찾아서 
        	// 변수에 저장하고 밑에 set하기
//        	String product_img = null;
//        	String sql = "SELECT product_original_img FROM product_img WHERE product_num=?";
//        	pstmt = con.prepareStatement(sql);
//        	pstmt.setInt(1, basket.getProduct_num());
//        	rs = pstmt.executeQuery();
//        	
//        	if(rs.next()) {
//        		product_img = rs.getString(1);
//        	}
        	
        
            // 데이터 추가 작업을 위한 INSERT 작업 수행
            String sql = "INSERT INTO basket VALUES (null,?,?,?,?,?,?,?,?)";
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
//        	close(rs);
            close(pstmt);
        }
        
        return insertCount;
    }

	public ArrayList<BasketBean> selectCartList(String customer_id) {
		System.out.println("BasketDAO - selectCartList()");
		ArrayList<BasketBean> cartList = null;
		
		PreparedStatement pstmt = null;
        ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM basket WHERE customer_id=? ORDER BY basket_idx DESC";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, customer_id);
			rs = pstmt.executeQuery();
			
			cartList = new ArrayList<BasketBean>();
			
			while(rs.next()) {
				BasketBean basket = new BasketBean();
				
				basket.setProduct_num(rs.getInt("product_num"));
				basket.setProduct_name(rs.getString("product_name"));
				basket.setProduct_price(rs.getInt("product_price"));
				basket.setProduct_qty(rs.getInt("product_qty"));
				basket.setProduct_discount(rs.getInt("discount"));
				basket.setProduct_img(rs.getString("product_img"));
				basket.setSname(rs.getString("Sname"));
				
				cartList.add(basket);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
        	// 자원 반환
        	close(rs);
            close(pstmt);
        }
		
		
		return cartList;
	}


    
}