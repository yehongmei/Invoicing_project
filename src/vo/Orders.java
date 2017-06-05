package vo;

public class Orders {
	private int oid;
	private String ocode;
	private int customerid;
	private int  merchandiseid;
	private String cname;
	private String mname;
	private String ename;
	private int oamount;
	public int getOamount() {
		return oamount;
	}
	public void setOamount(int oamount) {
		this.oamount = oamount;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	private int merchandisenumber;
	private String orderdata;
	private int employeeid;
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getOcode() {
		return ocode;
	}
	public void setOcode(String ocode) {
		this.ocode = ocode;
	}

	
	public int getCustomerid() {
		return customerid;
	}
	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}
	public int getMerchandiseid() {
		return merchandiseid;
	}
	public void setMerchandiseid(int merchandiseid) {
		this.merchandiseid = merchandiseid;
	}
	public int getEmployeeid() {
		return employeeid;
	}
	public void setEmployeeid(int employeeid) {
		this.employeeid = employeeid;
	}
	public int getMerchandisenumber() {
		return merchandisenumber;
	}
	public void setMerchandisenumber(int merchandisenumber) {
		this.merchandisenumber = merchandisenumber;
	}
	public String getOrderdata() {
		return orderdata;
	}
	public void setOrderdata(String orderdata) {
		this.orderdata = orderdata;
	}


}
