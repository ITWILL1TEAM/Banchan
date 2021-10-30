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
    
	// 사용자의 장바구니에 해당 상품이 이미 존재하는지 체크 후 존재할 경우 수량만 업데이트
	public int checkDupProduct(BasketBean basket) {
		System.out.println("BasketDAO - checkDupProduct()");
		int updateCount = 0;
		
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
        ResultSet rs = null;
        
        try {
        	
    		String sql = "SELECT product_qty FROM basket WHERE product_num=? AND customer_id=?";
    		pstmt = con.prepareStatement(sql);
    		pstmt.setInt(1, basket.getProduct_num());
    		pstmt.setString(2, basket.getCutomer_id());
    		rs = pstmt.executeQuery();
    		
    		int qty = 0;
    		if(rs.next()) {
    			// 기존에 장바구니에 담겨있던 제품 수량을 저장
    			qty = rs.getInt("product_qty");
    			
    			String sql2 = "UPDATE basket SET product_qty=? WHERE product_num=? AND customer_id=?";
    			pstmt2 = con.prepareStatement(sql2);
    			pstmt2.setInt(1, qty + basket.getProduct_qty());
    			pstmt2.setInt(2, basket.getProduct_num());
    			pstmt2.setString(3, basket.getCutomer_id());
    			
    			updateCount = pstmt2.executeUpdate();
    			
    		}
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("checkDupProduct() 오류 - " + e.getMessage());
		} finally {
        	// 자원 반환
        	close(rs);
        	if(pstmt2 != null) {
        		close(pstmt2);
        	}
            close(pstmt);
        }
        
		
		return updateCount;
	}
    
    // 장바구니에 새로운 제품 담기
    public int insertBasket(BasketBean basket) {
    	System.out.println("BasketDAO - insertBasket()");
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
    
    // 장바구니 페이지에 출력할 내용을 ArrayList에 저장
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
				basket.setProduct_discount(rs.getInt("product_discount"));
				basket.setProduct_img(rs.getString("product_img"));
				basket.setSname(rs.getString("Sname"));
				
				cartList.add(basket);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("selectCartList() 오류 - " + e.getMessage());
		} finally {
        	// 자원 반환
        	close(rs);
            close(pstmt);
        }
		
		
		return cartList;
	}
	
    
}