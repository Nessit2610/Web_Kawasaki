package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import bean.khachhangbean;
import bo.dangnhapbo;
import bo.khachhangbo;
import dao.dangnhapdao;
import nl.captcha.Captcha;

/**
 * Servlet implementation class dangnhapController
 */
@WebServlet("/dangnhapController")
public class dangnhapController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangnhapController() {
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
			dangnhapbo dnbo = new dangnhapbo();
			
			//Check Đăng Nhập
			String  un = request.getParameter("txtun");
			String pass = request.getParameter("txtpass");
			String dx = request.getParameter("DangXuat");
			Captcha captcha = (Captcha) session.getAttribute(Captcha.NAME);
			
			if(dx != null ) {
				session.removeAttribute("DN");
				session.removeAttribute("DNS");
				session.removeAttribute("gh");
				session.removeAttribute("countdn");
				session.removeAttribute("capcha");
			
			}
			int countdn = 0;
			
			if(session.getAttribute("countdn")==null) {
				session.setAttribute("countdn", countdn);
			}
			else {
				countdn = (int)session.getAttribute("countdn");
			}
			//check captcha
			if((int)session.getAttribute("countdn")>=3) {
				String answer = request.getParameter("answer");
				if (captcha.isCorrect(answer)) {
					if(un != null && pass != null){
						khachhangbean khbean = new khachhangbo().CheckDn(un, pass);
						dangnhapdao dndao = new dangnhapdao();
						Boolean quyen = dndao.CheckQuyen(un, pass);		
						if(khbean != null && quyen == false){
							session.setAttribute("DN", khbean);
							session.setAttribute("mkh", khbean.getMakh());
							session.removeAttribute("countdn");
						}
						else if(khbean != null && quyen == true) {
							session.removeAttribute("countdn");
							response.sendRedirect("adminController");
							
						}else {
							session.setAttribute("DNS",	"Vui Lòng Thử Lại ! ");
							countdn +=1;
							session.setAttribute("countdn", countdn);
							
						}
					}	
				}
				else {
					session.setAttribute("capcha", "Captcha sai !");
				}
				
			}
			else {
				//check đăng nhập và quyền 
				
				if(un != null && pass != null){
					khachhangbean khbean = new khachhangbo().CheckDn(un, pass);
					dangnhapdao dndao = new dangnhapdao();
					Boolean quyen = dndao.CheckQuyen(un, pass);		
					if(khbean != null && quyen == false){
						session.setAttribute("DN", khbean);
						session.setAttribute("mkh", khbean.getMakh());
						session.removeAttribute("countdn");
					}
					else if(khbean != null && quyen == true) {
						session.removeAttribute("countdn");
						response.sendRedirect("adminController");
						
					}else {
						session.setAttribute("DNS",	"Vui Lòng Thử Lại ! ");
						countdn +=1;
						session.setAttribute("countdn", countdn);
						
					}
				}
				
			}
			
			//Check Đăng Ký
			String hotendk = request.getParameter("txthotendk");	
			String diachidk = request.getParameter("txtdiachidk");	
			String sdtdk = request.getParameter("txtsdtdk");	
			String emaildk = request.getParameter("txtemaildk");	
			String tendndk = request.getParameter("txtundk");	
			String passdk = request.getParameter("txtpassdk");
			if(hotendk != null && diachidk != null && sdtdk != null && emaildk != null && tendndk != null && passdk != null) {
				dnbo.DangKy(hotendk, diachidk, sdtdk, emaildk, tendndk, passdk);
			}
			RequestDispatcher rd = request.getRequestDispatcher("xeController");
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
