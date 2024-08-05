package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import bean.hoadonbean;
import bean.khachhangbean;
import dao.donhangdao;

/**
 * Servlet implementation class donhangController
 */
@WebServlet("/donhangController")
public class donhangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public donhangController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			HttpSession session = request.getSession();
			
			donhangdao dhdao = new donhangdao();
			String makh = request.getParameter("mkh");
			String MaKhach = request.getParameter("MaKhach");
			if(request.getAttribute("mkh") == null) {
				request.setAttribute("check", 0);
			}
			if(makh != null) {
				long mkh = Long.parseLong(makh);
				session.setAttribute("MaKhachHang", mkh);
				ArrayList<hoadonbean> dsdonhang = dhdao.DonHangDaMua(mkh);
				request.setAttribute("danhsachdonhang", dsdonhang); 
				request.setAttribute("check", 1);
			}
			
			long makh2 = 0;
			if(session.getAttribute("DN") != null){ 
	        	  khachhangbean khbean =(khachhangbean)session.getAttribute("DN");
	        	  makh2 = khbean.getMakh();
		  	}
			  if(request.getParameter("btct")!= null) { 
				  String Mahd =request.getParameter("MaHD");
				  long mahd = Long.parseLong(Mahd);
				  request.setAttribute("dsct", dhdao.DonHangchitiet(mahd));
				  request.setAttribute("check", 1);
				  }
			 if(request.getParameter("xemchuatt") != null) {
				 
				ArrayList<hoadonbean> dsdonhang = dhdao.DonHangChuaTT(makh2);
				request.setAttribute("danhsachdonhang", dsdonhang); 
				request.setAttribute("check", 1);
			 }
			 if(request.getParameter("xemdatt") != null) {
				 
				 ArrayList<hoadonbean> dsdonhang = dhdao.DonHangDaTT(makh2);
				 request.setAttribute("danhsachdonhang", dsdonhang); 
				 request.setAttribute("check", 1);
			 }
			
			RequestDispatcher rd = request.getRequestDispatcher("donhang.jsp");
			rd.forward(request, response);	
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
