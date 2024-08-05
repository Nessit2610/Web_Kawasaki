package bo;

import java.util.ArrayList;

import bean.xebean;
import dao.xedao;

public class xebo {
	xedao xdao = new xedao();
	ArrayList<xebean> ds;
	public ArrayList<xebean> getxe() throws Exception{
		ds = xdao.getxe();
		return ds;
	}
	public ArrayList<xebean> getxetheoml(String maloai) throws Exception{
		ds = xdao.getxetheoml(maloai);
		return ds;
	}
	public ArrayList<xebean> getxetheoten(String tx) throws Exception{
		ds = xdao.getxetheoten(tx);
		return ds;
	}
	
	public ArrayList<xebean> getxetheomaxe(String mx) throws Exception{
		ds = xdao.getxetheomaxe(mx);
		return ds;
	}
	
}
