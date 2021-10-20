package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import vo.BoardBean;

import static db.JdbcUtil.*;

public class BoardDAO {

    private BoardDAO() {}
    
    private static BoardDAO instance;

    public static BoardDAO getInstance() {
        // 기존의 인스턴스가 존재하지 않을 경우에만 인스턴스를 생성
        if(instance == null) {
            instance = new BoardDAO();
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
    
    public int insertArticle(BoardBean board) {
        int insertCount = 0;
        
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        int num = 1; // 새 글 번호를 저장할 변수 선언
        
        try {
        
            String sql = "SELECT MAX(board_num) FROM BC_board";
            pstmt = con.prepareStatement(sql);
            rs = pstmt.executeQuery();
            
            if(rs.next()) {
                num = rs.getInt(1) + 1;
            }
            
            // 다음 작업을 위해 PreparedStatement 객체 반환
            // 하나의 메서드에서 복수개의 PreparedStatement 가 생성되는 것을 방지
            close(pstmt);
            
            // 글 등록 작업을 위한 INSERT 작업 수행
            // => 등록일(board_date)은 now() 함수 활용
            sql = "INSERT INTO BC_board VALUES (null,?,?,?,?,?,?,?,now(),?,?,?,?,?)";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, board.getProduct_name()); // 계산된 새 글 번호
            pstmt.setString(2, board.getSname());
            pstmt.setString(3, board.getProduct_category());
            pstmt.setInt(4, board.getProduct_price());
            pstmt.setInt(5, board.getProduct_weight());
            pstmt.setInt(6, board.getProduct_discount());
            pstmt.setInt(7, board.getProduct_count()); //보류
            pstmt.setDate(8, board.getProduct_date());
            pstmt.setInt(9, board.getProduct_stock());
            pstmt.setString(11, board.getProduct_expiration_date());
            pstmt.setString(12, board.getProduct_handling());
            pstmt.setString(13, board.getProduct_material());
            
            
            pstmt.setDate(num, null);
            
            // INSERT 구문 실행 및 결과 리턴받기 => insertCount 에 저장
            insertCount = pstmt.executeUpdate();
            
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("insertArticle() 오류 - " + e.getMessage());
        } finally {
            // 자원 반환(주의! Connection 객체는 DAO 에서 반환하지 않도록 해야한다!)
//          if(rs != null) try { rs.close(); } catch(Exception e) {}
//          if(pstmt != null) try { pstmt.close(); } catch(Exception e) {}
            close(rs);
            close(pstmt);
        }
        
        return insertCount;
    }

    public int selectListCount() {
//      System.out.println("BoardDAO - selectListCount()");
        int listCount = 0;
        
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        try {
            // 3단계. SQL 구문 작성 및 전달
            // => 전체 레코드 갯수를 조회하기 위해 COUNT(*) 함수 사용(또는 COUNT(num))
            String sql = "SELECT COUNT(*) FROM BC_board";
            pstmt = con.prepareStatement(sql);
            
            // 4단계. SQL 구문 실행 및 결과 처리
            rs = pstmt.executeQuery();
            
            if(rs.next()) {
                listCount = rs.getInt(1); // 또는 "COUNT(*)" 지정
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 자원 반환
            close(rs);
            close(pstmt);
        }
        
        return listCount;
    }
    
    public ArrayList<BoardBean> selectArticleList(int page, int limit) {
        ArrayList<BoardBean> articleList = null;
        
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        // 조회 시작 게시물(레코드) 번호 계산(= 행 번호 계산)
        int startRow = (page - 1) * limit;
        
        try {
            // 3단계. SQL 구문 작성 및 전달
            // => mvc_board 테이블의 모든 레코드 조회
            //    (참조글번호를 기준으로 내림차순, 순서번호를 기준으로 오름차순 정렬)
            // => 단, 시작행번호부터 페이지당 게시물수 만큼만 조회
            //    LIMIT 시작행번호,페이지당게시물수
            String sql = "SELECT * FROM BC_board "
                    + "ORDER BY board_re_ref DESC,board_re_seq ASC "
                    + "LIMIT ?,?";
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, startRow); // 시작행번호
            pstmt.setInt(2, limit); // 페이지당 게시물 수
            
            // 4단계. SQL 구문 실행 및 결과 처리
            rs = pstmt.executeQuery();
            
            // 모든 레코드를 저장할 List 객체(ArrayList) 생성
            articleList = new ArrayList<BoardBean>();
            
            // while 문을 사용하여 ResultSet 객체의 모든 레코드 접근
            while(rs.next()) {
                // BoardBean 객체를 생성하여 1개 레코드 정보를 BoardBean 객체에 저장
                // => 글번호, 작성자, 제목, 날짜, 조회수만 필요
                //    (답글에 대한 들여쓰기를 위해 board_re_lev 값도 추가)
                BoardBean board = new BoardBean();
                board.setProduct_num(rs.getInt("product_num"));
                board.setProduct_name(rs.getString("product_name: "));
                board.setSname(rs.getString("Sname "));
                board.setProduct_date(rs.getDate("product_date"));
                
           
                  
                // 1개 레코드가 저장된 BoardBean 객체를 List 객체에 추가
                articleList.add(board);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 자원 반환
            close(rs);
            close(pstmt);
        }
        
        return articleList;
    }
}