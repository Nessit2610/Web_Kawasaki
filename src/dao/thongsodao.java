package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.thongsobean;

public class thongsodao {
	public ArrayList<thongsobean> getthongso(String mx) throws Exception {
		ArrayList<thongsobean> ds = new ArrayList<thongsobean>();
		ketnoi kn = new ketnoi();
		kn.ketnoi();
		String sql = "select * from ThongSoChiTiet where Maxe=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, mx);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			String maxe = rs.getString("Maxe");
			String tenxe = rs.getString("TenXe");
			String dungtich = rs.getString("Dungtich");
			String hopso = rs.getString("Hopso");
			String loaidongco = rs.getString("Loaidongco");
			String congnghe = rs.getString("Congnghe");
			String chieucao = rs.getString("Chieucao");
			String trongluong = rs.getString("Trongluong");
			String baohanh = rs.getString("Baohang");
			ds.add(new thongsobean(maxe, tenxe, dungtich, hopso, loaidongco, congnghe, chieucao, trongluong, baohanh));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	
}
