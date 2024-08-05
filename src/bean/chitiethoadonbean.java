package bean;

public class chitiethoadonbean {
	private long macthd;
	private String maxe;
	private String tenxe;
	private long soluongmua;
	private long mahoadon;
	private boolean damua;
	public chitiethoadonbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public chitiethoadonbean(long macthd, String maxe, String tenxe, long soluongmua, long mahoadon, boolean damua) {
		super();
		this.macthd = macthd;
		this.maxe = maxe;
		this.tenxe = tenxe;
		this.soluongmua = soluongmua;
		this.mahoadon = mahoadon;
		this.damua = damua;
	}
	public long getMacthd() {
		return macthd;
	}
	public void setMacthd(long macthd) {
		this.macthd = macthd;
	}
	public String getMaxe() {
		return maxe;
	}
	public void setMaxe(String maxe) {
		this.maxe = maxe;
	}
	public String getTenxe() {
		return tenxe;
	}
	public void setTenxe(String tenxe) {
		this.tenxe = tenxe;
	}
	public long getSoluongmua() {
		return soluongmua;
	}
	public void setSoluongmua(long soluongmua) {
		this.soluongmua = soluongmua;
	}
	public long getMahoadon() {
		return mahoadon;
	}
	public void setMahoadon(long mahoadon) {
		this.mahoadon = mahoadon;
	}
	public boolean isDamua() {
		return damua;
	}
	public void setDamua(boolean damua) {
		this.damua = damua;
	}
	
}
