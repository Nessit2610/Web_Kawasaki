package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;


import bean.chitiethoadonbean;
import bean.hoadonbean;



public class donhangdao {
	public ArrayList<hoadonbean> DonHangDaMua(long makh) throws Exception {
		ArrayList<hoadonbean> ds = new ArrayList<hoadonbean>();
		ketnoi kn = new ketnoi();
		kn.ketnoi();
		String sql = "select * from HoaDon where makh = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1,makh );
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			long mahd = rs.getLong("MaHoaDon");
			long makhachhang = rs.getLong("makh");
			Date ngaymua = rs.getDate("NgayMua");
			boolean damua = rs.getBoolean("damua");
			ds.add(new hoadonbean(mahd, makhachhang, ngaymua, damua));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public ArrayList<hoadonbean> DonHangDaTT(long makh) throws Exception {
		ArrayList<hoadonbean> ds = new ArrayList<hoadonbean>();
		ketnoi kn = new ketnoi();
		kn.ketnoi();
		String sql = "select * from HoaDon where makh = ? and damua = 1 ";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1,makh );
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			long mahd = rs.getLong("MaHoaDon");
			long makhachhang = rs.getLong("makh");
			Date ngaymua = rs.getDate("NgayMua");
			boolean damua = rs.getBoolean("damua");
			ds.add(new hoadonbean(mahd, makhachhang, ngaymua, damua));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public ArrayList<hoadonbean> DonHangChuaTT(long makh) throws Exception {
		ArrayList<hoadonbean> ds = new ArrayList<hoadonbean>();
		ketnoi kn = new ketnoi();
		kn.ketnoi();
		String sql = "select * from HoaDon where makh = ? and damua = 0 ";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1,makh );
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			long mahd = rs.getLong("MaHoaDon");
			long makhachhang = rs.getLong("makh");
			Date ngaymua = rs.getDate("NgayMua");
			boolean damua = rs.getBoolean("damua");
			ds.add(new hoadonbean(mahd, makhachhang, ngaymua, damua));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public ArrayList<chitiethoadonbean> DonHangchitiet(long madh) throws Exception {
		ArrayList<chitiethoadonbean> ds = new ArrayList<chitiethoadonbean>();
		ketnoi kn = new ketnoi();
		kn.ketnoi();
		String sql = "select * from ChitietHoaDon where MaHoaDon = ? ";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1,madh );
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			 long MaCTHD = rs.getLong("MaChiTietHD");
			 String maxe = rs.getString("maxe");
			 String tenxe = rs.getString("tenxe");
			 long SoLuongMua = rs.getLong("SoLuongMua");
			 long mahd = rs.getLong("MaHoaDon");
			 boolean damua = rs.getBoolean("damua");
			 ds.add(new chitiethoadonbean(MaCTHD, maxe, tenxe, SoLuongMua, mahd, damua) );
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public ArrayList<hoadonbean> getAllDonHang() throws Exception {
		ArrayList<hoadonbean> ds = new ArrayList<hoadonbean>();
		ketnoi kn = new ketnoi();
		kn.ketnoi();
		String sql = "select * from HoaDon";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			long mahd = rs.getLong("MaHoaDon");
			long makhachhang = rs.getLong("makh");
			Date ngaymua = rs.getDate("NgayMua");
			boolean damua = rs.getBoolean("damua");
			ds.add(new hoadonbean(mahd, makhachhang, ngaymua, damua));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
}
