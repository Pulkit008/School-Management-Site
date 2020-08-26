package institute;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Adminlogout
 */
@WebServlet("/Adminlogout")
public class Adminlogout extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession ta=request.getSession(false);
		ta.removeAttribute("aob");
		ta.invalidate();
		request.setAttribute("msg", "Logout Successful");
		request.setAttribute("link", "index.jsp");
		request.setAttribute("bname", "Home Page");
		request.setAttribute("color", "green");
		
		RequestDispatcher rd=request.getRequestDispatcher("msg.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession ta=request.getSession(false);
		ta.removeAttribute("aob");
		ta.invalidate();
		request.setAttribute("msg", "Logout Successful");
		request.setAttribute("link", "index.jsp");
		request.setAttribute("bname", "Home Page");
		request.setAttribute("color", "green");
		
		RequestDispatcher rd=request.getRequestDispatcher("msg.jsp");
		rd.forward(request, response);
	}

}
