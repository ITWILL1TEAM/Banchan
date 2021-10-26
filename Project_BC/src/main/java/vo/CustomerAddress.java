package vo;

public class CustomerAddress {
	private String customerId;
	private String roadAddress;
	private String zonecode;
	private String dtl_addr;
	
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public String getRoadAddress() {
		return roadAddress;
	}
	public void setRoadAddress(String roadAddress) {
		this.roadAddress = roadAddress;
	}
	public String getZonecode() {
		return zonecode;
	}
	public void setZonecode(String zonecode) {
		this.zonecode = zonecode;
	}
	public String getDtl_addr() {
		return dtl_addr;
	}
	public void setDtl_addr(String dtl_addr) {
		this.dtl_addr = dtl_addr;
	}
	@Override
	public String toString() {
		return "CustomerAddress [customerId=" + customerId + ", roadAddress=" + roadAddress + ", zonecode=" + zonecode
				+ ", dtl_addr=" + dtl_addr + "]";
	}
	
	
}
