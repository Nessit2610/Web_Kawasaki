package bo;

import bean.khachhangbean;
import dao.khachhangdao;

public class khachhangbo {
	public khachhangbean CheckDn(String tendn, String mk) throws Exception{
		khachhangdao khdao = new khachhangdao();
		return khdao.CheckDn(tendn, mk);
	}
}
