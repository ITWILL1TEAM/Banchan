package vo;

public class SellerBean extends MemberBean{

	String seller_id;
	int sNO;
	String sName;
	String adress;
	String phone;
	String email;
	int status;

	public SellerBean() {}
	
	public SellerBean(String seller_id, int sNO, String sName, String adress, String phone, String email, int status) {
		super();
		this.seller_id = seller_id;
		this.sNO = sNO;
		this.sName = sName;
		this.adress = adress;
		this.phone = phone;
		this.email = email;
		this.status = status;
	}

	public String getSeller_id() {
		return seller_id;
	}

	public void setSeller_id(String seller_id) {
		this.seller_id = seller_id;
	}

	public int getsNO() {
		return sNO;
	}

	public void setsNO(int sNO) {
		this.sNO = sNO;
	}

	public String getsName() {
		return sName;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}

	public String getAdress() {
		return adress;
	}

	public void setAdress(String adress) {
		this.adress = adress;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	
}
