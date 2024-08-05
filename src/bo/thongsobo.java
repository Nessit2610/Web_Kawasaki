package bo;

import java.util.ArrayList;

import bean.thongsobean;
import dao.thongsodao;

public class thongsobo {
	thongsodao tsdao = new thongsodao();
	ArrayList<thongsobean> ds;
	public ArrayList<thongsobean> getthongso(String mx) throws Exception {
		ds = tsdao.getthongso(mx);
		return ds;
	}
}
