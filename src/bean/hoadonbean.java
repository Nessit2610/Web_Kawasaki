package bean;

import java.util.Date;

public class hoadonbean {
	private long MaHoaDon;
	private long MaKhachHang;
	private Date NgayMua;
	private boolean damua;
	public long getMaHoaDon() {
		return MaHoaDon;
	}
	public void setMaHoaDon(long maHoaDon) {
		MaHoaDon = maHoaDon;
	}
	public long getMaKhachHang() {
		return MaKhachHang;
	}
	public void setMaKhachHang(long maKhachHang) {
		MaKhachHang = maKhachHang;
	}
	public Date getNgayMua() {
		return NgayMua;
	}
	public void setNgayMua(Date ngayMua) {
		NgayMua = ngayMua;
	}
	public boolean isDamua() {
		return damua;
	}
	public void setDamua(boolean damua) {
		this.damua = damua;
	}
	public hoadonbean(long maHoaDon, long maKhachHang, Date ngayMua, boolean damua) {
		super();
		MaHoaDon = maHoaDon;
		MaKhachHang = maKhachHang;
		NgayMua = ngayMua;
		this.damua = damua;
	}
	public hoadonbean() {
		super();
		// TODO Auto-generated constructor stub
	}
}
