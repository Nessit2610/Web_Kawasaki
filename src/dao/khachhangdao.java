package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import bean.khachhangbean;

public class khachhangdao {
	public khachhangbean CheckDn(String tendn, String mk) throws Exception{
		khachhangbean khbean = null;
		ketnoi kn = new ketnoi();
		kn.ketnoi();
		String sql = "select * from KhachHang where tendn = ? and pass = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, tendn );
		cmd.setString(2, mk );
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			long makh = rs.getLong("makh");
			String hoten = rs.getString("hoten");
			String diachi= rs.getString("diachi");
			String sodt= rs.getString("sodt");
			String email= rs.getString("email");
			khbean = new khachhangbean(makh,hoten, diachi,sodt,email,tendn,mk);
		}
		rs.close();
		kn.cn.close();
		return khbean;
	}
}
