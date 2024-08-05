package bo;

import dao.chitiethoadondao;

public class chitiethoadonbo {
	chitiethoadondao ctdao = new chitiethoadondao();
	public int themChiTietHD(String mx, String tenxe ,long slm, long mahd) throws Exception {
		int kq = 0;
		kq = ctdao.themChiTietHD(mx, tenxe, slm, mahd);
		return kq;
	}
}
