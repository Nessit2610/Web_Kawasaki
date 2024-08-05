package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.dangnhapbean;

public class dangnhapdao {
	public ArrayList<dangnhapbean> getdn() throws Exception {
		ArrayList<dangnhapbean> ds = new ArrayList<dangnhapbean>();
		//ket noi csdl
				ketnoi kn = new ketnoi();
				kn.ketnoi();
				//tao cau lenh sql
				
				String sql = "select * from DangNhap ";
				// tao cau lenh
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
				// thuc hien cau lenh
				ResultSet rs = cmd.executeQuery();
				//duyet rs dua vao ds 
				while(rs.next()) {
					String tdn = rs.getString("TenDangNhap");
					String mk = rs.getString("MatKhau");
					Boolean q = rs.getBoolean("Quyen");
					ds.add(new dangnhapbean(tdn,mk,q));
				}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public void DangKy(String hotendk,	String diachidk ,String sdtdk,String emaildk,String tendndk,String passdk) throws Exception {
		ketnoi kn = new ketnoi();
		kn.ketnoi();
		String sql = "insert into KhachHang(hoten,diachi,sodt,email,tendn,pass) values(?,?,?,?,?,?)";
		PreparedStatement cmd = ketnoi.cn.prepareStatement(sql);
		cmd.setString(1, hotendk);
		cmd.setString(2, diachidk);
		cmd.setString(3, sdtdk);
		cmd.setString(4, emaildk);
		cmd.setString(5, tendndk);
		cmd.setString(6, passdk);
		cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
}
	public void DangKy2(String tendndk,String passdk) throws Exception {
		ketnoi kn = new ketnoi();
		kn.ketnoi();
		String sql = "insert into DangNhap(TenDangNhap,MatKhau,Quyen) values(?,?,?)";
		PreparedStatement cmd = ketnoi.cn.prepareStatement(sql);
		cmd.setString(1, tendndk);
		cmd.setString(2, passdk);
		cmd.setBoolean(3, false);
		cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
	}
	public boolean CheckQuyen(String tendn, String mk) throws Exception{
		boolean quyen = false;
		ketnoi kn = new ketnoi();
		kn.ketnoi();
		String sql = "select Quyen from DangNhap where TenDangNhap = ? and MatKhau = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, tendn );
		cmd.setString(2, mk );
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			quyen = rs.getBoolean("Quyen");
		}
		rs.close();
		kn.cn.close();
		return quyen;
	}
}
