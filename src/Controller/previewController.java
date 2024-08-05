package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.xebo;

/**
 * Servlet implementation class previewController
 */
@WebServlet("/previewController")
public class previewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public previewController() {
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
			String ml = request.getParameter("ml");
			String txttk = request.getParameter("txttk");
			xebo xbo = new xebo();
			request.setAttribute("dsxe", xbo.getxe());
			if(ml != null) {
				request.setAttribute("dsxe", xbo.getxetheoml(ml));
				request.setAttribute("dongxe", ml);
			}
			if(txttk !=null) {
				request.setAttribute("dsxe", xbo.getxetheoten(txttk));
				request.setAttribute("dongxe", txttk);
			}
			RequestDispatcher rd = request.getRequestDispatcher("preview.jsp");
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
