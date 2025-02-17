package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import bean.giohangbean;
import bean.khachhangbean;
import bo.chitiethoadonbo;
import bo.giohangbo;
import dao.hoadondao;

/**
 * Servlet implementation class xacnhanController
 */
@WebServlet("/xacnhanController")
public class xacnhanController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xacnhanController() {
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
			String xn = request.getParameter("DatHangBut");
			if(xn != null) {
				hoadondao hddao = new hoadondao();
				khachhangbean kh = (khachhangbean)session.getAttribute("DN");
				// them vao hoa don
				hddao.themhoadon(kh.getMakh());
				long maxhd = hddao.maxhd();
				
				// them vao chi tiet
				giohangbo gh = (giohangbo)session.getAttribute("gh");
				chitiethoadonbo ctbo = new chitiethoadonbo();
				for(giohangbean h : gh.ds) {
					ctbo.themChiTietHD(h.getMaxe(), h.getTenxe(),h.getSoluong(), maxhd);
				}
				session.removeAttribute("gh");
				response.sendRedirect("xeController");	
			}
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
