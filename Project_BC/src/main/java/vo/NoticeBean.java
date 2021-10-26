package vo;

import java.sql.Date;

public class NoticeBean {
	/*
	CREATE TABLE MVC_Board (
		board_num INT PRIMARY KEY,
		board_name VARCHAR(20) NOT NULL,
		board_pass VARCHAR(16) NOT NULL,
		board_subject VARCHAR(50) NOT NULL,
		board_content VARCHAR(2000) NOT NULL,
		board_file VARCHAR(50) NOT NULL,
		board_original_file VARCHAR(50) NOT NULL,
		board_date DATE NOT NULL,
		board_readcount INT NOT NULL
	);
	*/
	// 게시물 1개 정보를 관스 정의
    
	private int board_num;
    private String board_subject;
    private String board_content;
    private Date board_date;
    
    public int getBoard_num() {
        return board_num;
    }
    public void setBoard_num(int board_num) {
        this.board_num = board_num;
    }
    public String getBoard_subject() {
        return board_subject;
    }
    public void setBoard_subject(String board_subject) {
        this.board_subject = board_subject;
    }
    public String getBoard_content() {
        return board_content;
    }
    public void setBoard_content(String board_content) {
        this.board_content = board_content;
    }
    public Date getBoard_date() {
        return board_date;
    }
    public void setBoard_date(Date board_date) {
        this.board_date = board_date;
    }
 
	
    
    
    
    
    
    
    
	
}
	
	