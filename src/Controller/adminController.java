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
import dao.chitiethoadondao;
import dao.donhangdao;

/**
 * Servlet implementation class adminController
 */
@WebServlet("/adminController")
public class adminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminController() {
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
			chitiethoadondao ctdao = new chitiethoadondao();
			request.setAttribute("danhsachdonhang", dhdao.getAllDonHang());
			
			 if(request.getParameter("btct")!= null) { 
				  String Mahd =request.getParameter("MaHD");
				  long mahd = Long.parseLong(Mahd);
				  request.setAttribute("dsct", dhdao.DonHangchitiet(mahd));
			  }
			 String btnxacnhanhd = request.getParameter("btnxacnhanhd");
			  if(btnxacnhanhd != null) {
				  String Mahd =request.getParameter("MaHD");
				  long mahd = Long.parseLong(Mahd);
				  ctdao.xacnhanct(mahd);
				  ctdao.xacnhanhd(mahd);
				  request.setAttribute("danhsachdonhang", dhdao.getAllDonHang());
			  }
			  String btnxacnhanct = request.getParameter("btnxacnhanct");
			  if(btnxacnhanct != null) {
				  String mact = request.getParameter("Mact");
				  long Mact = Long.parseLong(mact);
				  ctdao.xacnhan2(Mact);
				  String Mahd =request.getParameter("Mahd");
				  long mahd = Long.parseLong(Mahd);
				  request.setAttribute("dsct", dhdao.DonHangchitiet(mahd));
			  }
			  
			RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
			rd.forward(request, response);	
		} catch (Exception e) {
			// TODO: handle exception
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
