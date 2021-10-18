package vo;
/*
   CREATE TABLE member_BC (
         member_id VARCHAR(16) NOT NULL PRIMARY_KEY,
         member_pass VARCHAR(20) NOT NULL
         member_name VARCHAR(12) NOT NULL,
         member_phone VARCHAR(13) NOT NULL,
         member_email VARCHAR(50) NOT NULL UNIQUE,
         member_recommendID INT(20) NOT NULL UNIQUE,
         member_personalData VARCHAR(1) NOT NULL,
         member_grand INT(4) NOT NULL
   );
 */
public class CustomerBean extends MemberBean {
	private String costomer_id;
	private String phone;
	private String eamil;
	private String recommend_id;
	private int personal_data;
	
	
	
	
	
	public CustomerBean() {}
	
	
	
	public CustomerBean(String costomer_id, String phone, String eamil, String recommend_id, int personal_data) {
		super();
		this.costomer_id = costomer_id;
		this.phone = phone;
		this.eamil = eamil;
		this.recommend_id = recommend_id;
		this.personal_data = personal_data;
	}

	public String getCostomer_id() {
		return costomer_id;
	}

	public void setCostomer_id(String costomer_id) {
		this.costomer_id = costomer_id;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEamil() {
		return eamil;
	}

	public void setEamil(String eamil) {
		this.eamil = eamil;
	}

	public String getRecommend_id() {
		return recommend_id;
	}

	public void setRecommend_id(String recommend_id) {
		this.recommend_id = recommend_id;
	}

	public int getPersonal_data() {
		return personal_data;
	}

	public void setPersonal_data(int personal_data) {
		this.personal_data = personal_data;
	}
	
	
	
	
}







