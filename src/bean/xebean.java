package bean;

public class xebean {
	private String maxe;
	private String tenxe;
	private long soluong;
	private long gia;
	private String maloaixe;
	private String anh;
	public xebean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public xebean(String maxe, String tenxe, long soluong, long gia, String maloaixe, String anh) {
		super();
		this.maxe = maxe;
		this.tenxe = tenxe;
		this.soluong = soluong;
		this.gia = gia;
		this.maloaixe = maloaixe;
		this.anh = anh;
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
	public long getSoluong() {
		return soluong;
	}
	public void setSoluong(long soluong) {
		this.soluong = soluong;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public String getMaloaixe() {
		return maloaixe;
	}
	public void setMaloaixe(String maloaixe) {
		this.maloaixe = maloaixe;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	@Override
	public String toString() {
		return "xebean [maxe=" + maxe + ", tenxe=" + tenxe + ", soluong=" + soluong + ", gia=" + gia + ", maloaixe="
				+ maloaixe + ", anh=" + anh + "]";
	}
	
}
