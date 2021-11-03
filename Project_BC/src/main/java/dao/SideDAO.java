package dao;

import static db.JdbcUtil.*;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import vo.Productbean;


public class SideDAO {

	private SideDAO() {}
	
		private static SideDAO instance;
			

			public static SideDAO getInstance() {
				if(instance ==null) {
					instance = new SideDAO();
				}
				return instance;
			}

			Connection con = null;

			public void setConnection(Connection con) {
				this.con = con;
			}
			
			
			public ArrayList<Productbean> selectCategory(String category) {
				
				ArrayList<Productbean> sideList = null;
				
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					PreparedStatement pstmt2 = null;
					ResultSet rs2 = null;
					
					try {
						con = getConnection();

						String sql = "";
						if(category.equals("전체")) {
							sql = "select * from product where product_category in('side','meat', 'fish', 'Kimchi', 'Soup');";
							pstmt = con.prepareStatement(sql);
						}else {
							sql = "select * from product where product_category LIKE ?";
							pstmt = con.prepareStatement(sql);
							pstmt.setString(1, category);
						}
						
						// 4단계
						rs = pstmt.executeQuery();

						// 모든 레코드를 저장할 List객체(ArrayList) 생성
						sideList = new ArrayList<Productbean>();

						// while문을 사용하여 rs객체의 모든 레코드 접근
						while (rs.next()) {
							// BoardBean 객체를 생성하여 1개 레코드 정보는 BoardBean 객체에 저장
							// 답글에 대한 들여쓰기를 위해 re_lev 추가
							
							Productbean board = new Productbean();
							board.setProduct_num(rs.getInt("product_num"));
							board.setProduct_name(rs.getString("product_name"));
							board.setSname(rs.getString("Sname"));
							board.setProduct_category(category);
							board.setProduct_price(rs.getInt("product_price"));
							board.setProduct_weight(rs.getInt("product_weight"));
							board.setProduct_discount(rs.getInt("product_discount"));
							board.setProduct_date(rs.getDate("product_date"));
							board.setProduct_stock(rs.getInt("product_stock"));
							board.setProduct_expiration_date(rs.getString("product_expiration_date"));
							board.setProduct_handling(rs.getString("product_handling"));
							board.setProduct_material(rs.getString("product_material"));
							board.setProduct_review_score(rs.getInt("product_review_score"));

							// 1개 레코드가 저장된 BoardBean 객체를 List객체에 추가
							sideList.add(board);

						}
						
					} catch (Exception e) {
						e.printStackTrace();
					} finally {
						close(rs);
						close(pstmt);
					}
					
					return sideList;
					
				}


			
			//================================================================================
			
			
			
			
			public ArrayList<Productbean> selectSale() {
				
				ArrayList<Productbean> saleList = null;
				
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				
				try {
					con = getConnection();

					String sql = "select * from product where product_discount >0 order by product_discount ASC;";
					
						pstmt = con.prepareStatement(sql);
					
					
					// 4단계
					rs = pstmt.executeQuery();

					// 모든 레코드를 저장할 List객체(ArrayList) 생성
					saleList = new ArrayList<Productbean>();

					// while문을 사용하여 rs객체의 모든 레코드 접근
					while (rs.next()) {
						// BoardBean 객체를 생성하여 1개 레코드 정보는 BoardBean 객체에 저장
						// 답글에 대한 들여쓰기를 위해 re_lev 추가
						
						Productbean board = new Productbean();
						board.setProduct_num(rs.getInt("product_num"));
						board.setProduct_name(rs.getString("product_name"));
						board.setSname(rs.getString("Sname"));
						board.setProduct_category(rs.getString("product_category"));
						board.setProduct_price(rs.getInt("product_price"));
						board.setProduct_weight(rs.getInt("product_weight"));
						board.setProduct_date(rs.getDate("product_date"));
						board.setProduct_stock(rs.getInt("product_stock"));
						board.setProduct_expiration_date(rs.getString("product_expiration_date"));
						board.setProduct_handling(rs.getString("product_handling"));
						board.setProduct_material(rs.getString("product_material"));
						board.setProduct_review_score(rs.getInt("product_review_score"));

						// 1개 레코드가 저장된 BoardBean 객체를 List객체에 추가
						saleList.add(board);

					}
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					close(rs);
					close(pstmt);
				}
				
				
				return saleList;
			}
			
			
			
			
			//==========================================================


			public ArrayList<Productbean> selectBrandNew() {
				
				ArrayList<Productbean> brandNewList =null;
				
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					con = getConnection();

					String sql = "select * from product order by product_date DESC;";
					
						pstmt = con.prepareStatement(sql);
					
					
					// 4단계
					rs = pstmt.executeQuery();

					// 모든 레코드를 저장할 List객체(ArrayList) 생성
					brandNewList = new ArrayList<Productbean>();

					// while문을 사용하여 rs객체의 모든 레코드 접근
					while (rs.next()) {
						// BoardBean 객체를 생성하여 1개 레코드 정보는 BoardBean 객체에 저장
						// 답글에 대한 들여쓰기를 위해 re_lev 추가
						
						Productbean board = new Productbean();
						board.setProduct_num(rs.getInt("product_num"));
						board.setProduct_name(rs.getString("product_name"));
						board.setSname(rs.getString("Sname"));
						board.setProduct_category(rs.getString("product_category"));
						board.setProduct_price(rs.getInt("product_price"));
						board.setProduct_discount(rs.getInt("product_discount"));
						board.setProduct_weight(rs.getInt("product_weight"));
						board.setProduct_date(rs.getDate("product_date"));
						board.setProduct_stock(rs.getInt("product_stock"));
						board.setProduct_expiration_date(rs.getString("product_expiration_date"));
						board.setProduct_handling(rs.getString("product_handling"));
						board.setProduct_material(rs.getString("product_material"));
						board.setProduct_review_score(rs.getInt("product_review_score"));

						// 1개 레코드가 저장된 BoardBean 객체를 List객체에 추가
						brandNewList.add(board);

					}
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					close(rs);
					close(pstmt);
				}
				
				
				return brandNewList;
			}
			
			//=====================================================


			public ArrayList<Productbean> selectBest() {
				
				ArrayList<Productbean> bestList = null;
				
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					con = getConnection();

					String sql = "select * from product order by product_review_score DESC;";
					
						pstmt = con.prepareStatement(sql);
					
					
					// 4단계
					rs = pstmt.executeQuery();

					// 모든 레코드를 저장할 List객체(ArrayList) 생성
					bestList = new ArrayList<Productbean>();

					// while문을 사용하여 rs객체의 모든 레코드 접근
					while (rs.next()) {
						// BoardBean 객체를 생성하여 1개 레코드 정보는 BoardBean 객체에 저장
						// 답글에 대한 들여쓰기를 위해 re_lev 추가
						
						Productbean board = new Productbean();
						board.setProduct_num(rs.getInt("product_num"));
						board.setProduct_name(rs.getString("product_name"));
						board.setSname(rs.getString("Sname"));
						board.setProduct_category(rs.getString("product_category"));
						board.setProduct_price(rs.getInt("product_price"));
						board.setProduct_discount(rs.getInt("product_discount"));
						board.setProduct_weight(rs.getInt("product_weight"));
						board.setProduct_date(rs.getDate("product_date"));
						board.setProduct_stock(rs.getInt("product_stock"));
						board.setProduct_expiration_date(rs.getString("product_expiration_date"));
						board.setProduct_handling(rs.getString("product_handling"));
						board.setProduct_material(rs.getString("product_material"));
						board.setProduct_review_score(rs.getInt("product_review_score"));

						// 1개 레코드가 저장된 BoardBean 객체를 List객체에 추가
						bestList.add(board);

					}
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					close(rs);
					close(pstmt);
				}
				
				
				return bestList;
			}
			
			

}
