package cos.pojoclass;

public class UpdateOrderBean {
	  int adorderid;
	
	float dueprice;
	String paymentmode;
    String orderstatus;
	public float getDueprice() {
		return dueprice;
	}
	public void setDueprice(float dueprice) {
		this.dueprice = dueprice;
	}
	public String getPaymentmode() {
		return paymentmode;
	}
	public void setPaymentmode(String paymentmode) {
		this.paymentmode = paymentmode;
	}
	public String getOrderstatus() {
		return orderstatus;
	}
	public void setOrderstatus(String orderstatus) {
		this.orderstatus = orderstatus;
	}
	public int getAdorderid() {
		return adorderid;
	}
	public void setAdorderid(int adorderid) {
		this.adorderid = adorderid;
	}
}
