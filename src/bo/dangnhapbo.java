package bo;

import java.util.ArrayList;

import bean.dangnhapbean;
import dao.dangnhapdao;

public class dangnhapbo {
	dangnhapdao dndao = new dangnhapdao();
	ArrayList<dangnhapbean> ds;
	public ArrayList<dangnhapbean> getdn() throws Exception {
		ds = dndao.getdn();
		return ds;
	}
	public int checkdn(String tnd, String mk, ArrayList<dangnhapbean> ds) {
		int check = 0;
		for(dangnhapbean dnb : ds) {
			if(dnb.getTenDangNhap().toString().equals(tnd) && dnb.getMatKhau().toString().equals(mk)) {
				check = 1;
			}
		}
		return check;
	}
	public void DangKy(String hotendk,	String diachidk ,String sdtdk,String emaildk,String tendndk,String passdk) throws Exception {
		dndao.DangKy(hotendk, diachidk, sdtdk, emaildk, tendndk, passdk);
		dndao.DangKy2(tendndk, passdk);
	}
}
