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

import bean.xebean;
import bo.giohangbo;
import bo.xebo;

/**
 * Servlet implementation class giohangController
 */
@WebServlet("/giohangController")
public class giohangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public giohangController() {
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
			giohangbo ghb = new giohangbo();
			xebo xb = new xebo();
			String maxe = request.getParameter("maxe");
			String tenxe = request.getParameter("tenxe");
			String anh = request.getParameter("anh");
			String gia = request.getParameter("gia");
			String sl = "1";
			String themgio = request.getParameter("themgio");
			String Mathongso = request.getParameter("Mathongso");
			if(themgio != null) {
				ArrayList<xebean> ds = xb.getxetheomaxe(Mathongso);
				if(session.getAttribute("gh")==null){
					session.setAttribute("gh", ghb);
				}
				for(xebean s : ds) {
					ghb =(giohangbo)session.getAttribute("gh");
					ghb.Them(s.getMaxe(), s.getTenxe(), Long.parseLong("1"),s.getGia(), s.getAnh());
				}
				session.setAttribute("gh",ghb);
				response.sendRedirect("giohangController");
			}
			if(maxe != null && tenxe != null && anh != null && gia != null) {
				if(session.getAttribute("gh")==null){
					session.setAttribute("gh", ghb);
				}
				//Gian session: gh vao bien g
				ghb =(giohangbo)session.getAttribute("gh");
				ghb.Them(maxe,tenxe,Long.parseLong(sl),Long.parseLong(gia),anh );
				//luu bien vao session
				session.setAttribute("gh",ghb);
				response.sendRedirect("giohangController");				
			}
			//Controll chức năng 
			giohangbo g=(giohangbo)session.getAttribute("gh");
			//Bắt biến nút xóa
			String msXoa = request.getParameter("nutxoa");
			if(msXoa != null){
				g.xoa(msXoa);
			}
			//bắt biến checkbox
			String checkbox[] = request.getParameterValues("checkvar");
			if(checkbox != null ){
				for(String c : checkbox){
					g.xoa(c);
				}
			}
			//Bắt biến nút sửa
			String msSua = request.getParameter("nutsua");
			String slSua = request.getParameter(msSua);
			if(msSua != null & slSua != null){
				g.Sua(msSua, Long.parseLong(slSua));
			}
			//xoatatca
			String delall = request.getParameter("xoatatca");
			if(delall != null) {
				g.xoaall();
			}
			session.setAttribute("gh", g);
			//response.sendRedirect("HTgiohang.jsp"); 
			RequestDispatcher rd = request.getRequestDispatcher("giohang.jsp");
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
