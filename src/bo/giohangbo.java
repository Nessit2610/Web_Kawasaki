package bo;

import java.util.ArrayList;

import bean.giohangbean;

public class giohangbo {
	public ArrayList<giohangbean> ds = new ArrayList<giohangbean>() ;
	public ArrayList<giohangbean> Them(String maxe, String tenxe, Long soluongmua, Long gia, String anh) throws Exception {
		int n = ds.size();
		for(int i = 0; i<n;i++) {
			if(ds.get(i).getMaxe().toLowerCase().trim().equals(maxe.toLowerCase().trim())) {
				long slm = ds.get(i).getSoluong()+soluongmua;
				ds.get(i).setSoluong(slm);
				long g = ds.get(i).getGia();
				long tt = slm*g;
				ds.get(i).setThanhtien(tt);
				return ds;
			} 
		}
		giohangbean ghb = new giohangbean(maxe, tenxe, anh, soluongmua, gia);
		ds.add(ghb);
		return ds;
	}
	public void Sua(String maxe, Long soluongmua) throws Exception {
		int n = ds.size();
		for(int i = 0; i<n;i++) {
			if(ds.get(i).getMaxe().toLowerCase().trim().equals(maxe.toLowerCase().trim())) {
				long slm = soluongmua;
				ds.get(i).setSoluong(slm);
				long g = ds.get(i).getGia();
				long tt = slm*g;
				ds.get(i).setThanhtien(tt);
				return;
			}
		}
	}
	public void xoa(String maxe) throws Exception {
		int n = ds.size();
		for(int i = 0; i<n;i++) {
			if(ds.get(i).getMaxe().toLowerCase().trim().equals(maxe.toLowerCase().trim())) {
				ds.remove(ds.get(i));
				return;
			}
		}
	}
	public void xoaall() {
		ds.clear();
		return;
	}
	public Long Tongtien() {
		int n = ds.size();
		long s = 0;
		for(int i =0 ; i < n;i++) {
			s =s + ds.get(i).getThanhtien();
		}
		return s;
	}
	public Long Tongsoluong() {
		int n = ds.size();
		long s = 0;
		for(int i =0 ; i < n;i++) {
			s =s + ds.get(i).getSoluong();
		}
		return s;
	}

}
