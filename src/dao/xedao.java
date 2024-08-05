package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import bean.xebean;

public class xedao {
	public ArrayList<xebean> getxe() throws Exception{
		ArrayList<xebean> ds = new ArrayList<xebean>();
		//ket noi csdl
		ketnoi kn = new ketnoi();
		kn.ketnoi();
		//tao cau lenh sql
		
		String sql = "select * from xe";
		// tao cau lenh
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		// thuc hien cau lenh
		ResultSet rs = cmd.executeQuery();
		//duyet rs dua vao ds 
		while(rs.next()) {
			 String maxe = rs.getString("maxe");
			 String tenxe = rs.getString("tenxe");;
			 long soluong = rs.getLong("soluong");
			 long gia = rs.getLong("gia");
			 String maloaixe = rs.getString("maloaixe");;
			 String anh = rs.getString("anh");;
			 ds.add(new xebean(maxe, tenxe, soluong, gia, maloaixe, anh));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public ArrayList<xebean> getxetheoml(String maloai) throws Exception{
		ArrayList<xebean> ds = new ArrayList<xebean>();
		//ket noi csdl
		ketnoi kn = new ketnoi();
		kn.ketnoi();
		//tao cau lenh sql
		
		String sql = "select * from xe where maloaixe = ?";
		// tao cau lenh
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, maloai);
		// thuc hien cau lenh
		ResultSet rs = cmd.executeQuery();
		//duyet rs dua vao ds 
		while(rs.next()) {
			 String maxe = rs.getString("maxe");
			 String tenxe = rs.getString("tenxe");;
			 long soluong = rs.getLong("soluong");
			 long gia = rs.getLong("gia");
			 String maloaixe = rs.getString("maloaixe");;
			 String anh = rs.getString("anh");;
			 ds.add(new xebean(maxe, tenxe, soluong, gia, maloaixe, anh));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public ArrayList<xebean> getxetheoten(String tx) throws Exception{
		ArrayList<xebean> ds = new ArrayList<xebean>();
		//ket noi csdl
		ketnoi kn = new ketnoi();
		kn.ketnoi();
		//tao cau lenh sql
		
		String sql = "select * from xe where tenxe like ?";
		// tao cau lenh
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, "%"+tx+"%");
		// thuc hien cau lenh
		ResultSet rs = cmd.executeQuery();
		//duyet rs dua vao ds 
		while(rs.next()) {
			 String maxe = rs.getString("maxe");
			 String tenxe = rs.getString("tenxe");;
			 long soluong = rs.getLong("soluong");
			 long gia = rs.getLong("gia");
			 String maloaixe = rs.getString("maloaixe");;
			 String anh = rs.getString("anh");;
			 ds.add(new xebean(maxe, tenxe, soluong, gia, maloaixe, anh));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public ArrayList<xebean> getxetheomaxe(String mx) throws Exception{
		ArrayList<xebean> ds = new ArrayList<xebean>();
		//ket noi csdl
		ketnoi kn = new ketnoi();
		kn.ketnoi();
		//tao cau lenh sql
		
		String sql = "select * from xe where maxe = ?";
		// tao cau lenh
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, mx);
		// thuc hien cau lenh
		ResultSet rs = cmd.executeQuery();
		//duyet rs dua vao ds 
		while(rs.next()) {
			String maxe = rs.getString("maxe");
			String tenxe = rs.getString("tenxe");;
			long soluong = rs.getLong("soluong");
			long gia = rs.getLong("gia");
			String maloaixe = rs.getString("maloaixe");;
			String anh = rs.getString("anh");;
			ds.add(new xebean(maxe, tenxe, soluong, gia, maloaixe, anh));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	
	
}
