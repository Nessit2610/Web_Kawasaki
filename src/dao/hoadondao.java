package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;

public class hoadondao {
	public int themhoadon(long makh) throws Exception {
		ketnoi kn = new ketnoi();
		kn.ketnoi();
		String sql ="insert into HoaDon(makh,NgayMua,damua) values(?,?,0)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makh);
		Date n1 = new Date(); // lay ngay trong may ra 
		SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
		String tam = dd.format(n1); // doi ngay ra chuoi
		Date n2 = dd.parse(tam);// doi chuoi ra ngay ulti
		cmd.setDate(2, new java.sql.Date(n2.getTime()));// doi ngay ulti ra ngay sql
		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}
	public long  maxhd() throws Exception {
		ketnoi kn =  new ketnoi();
		kn.ketnoi();
		String sql = "select max(MaHoaDon) as maxhd from HoaDon";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		long max = 0;
		if(rs.next()) {
			max = rs.getLong("maxhd");
		}
		rs.close();
		kn.cn.close();
		return max;
	}
}
