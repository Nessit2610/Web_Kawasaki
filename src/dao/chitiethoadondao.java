package dao;

import java.sql.PreparedStatement;

public class chitiethoadondao {
	public int themChiTietHD(String mx, String tenxe ,long slm, long mahd) throws Exception {
		ketnoi kn = new ketnoi();
		kn.ketnoi();
		String sql ="insert into ChitietHoaDon(maxe,tenxe,SoLuongMua,MaHoaDon,damua) values(?,?,?,?,0)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1,mx);
		cmd.setString(2, tenxe);
		cmd.setLong(3, slm);
		cmd.setLong(4, mahd);
		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}
	public int xacnhanct(long mahd) throws Exception {
		ketnoi kn = new ketnoi();
		kn.ketnoi();
		String sql ="update ChitietHoaDon set damua=1 where MaHoaDon=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, mahd);
		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}
	public int xacnhanhd(long mahd) throws Exception {
		ketnoi kn = new ketnoi();
		kn.ketnoi();
		String sql ="update HoaDon set damua=1 where MaHoaDon=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, mahd);
		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}
	public int xacnhan2(long machitiet) throws Exception {
		ketnoi kn = new ketnoi();
		kn.ketnoi();
		String sql ="update ChiTietHoaDon set damua=1 where MaChiTietHD=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, machitiet);
		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}
}
