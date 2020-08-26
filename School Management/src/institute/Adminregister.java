package institute;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.Admin;
import database.Database;

/**
 * Servlet implementation class Adminregister
 */
@WebServlet("/Adminregister")
public class Adminregister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ta=request.getSession(false);
		Admin aob=(Admin)ta.getAttribute("aob");
		if(aob==null)
		{
			response.sendRedirect("adminlogin.jsp");
		}
		
		String name = request.getParameter("aname");
		String username = request.getParameter("uname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		Admin a = new Admin();
		a.setUsername(username);
		a.setName(name);
		a.setEmail(email);
		a.setPassword(password);
		
		ServletContext con=getServletContext();
		Database obj=(Database)con.getAttribute("obj");
		obj.insertadmin(a);
		
		request.setAttribute("msg", "Admin Record added Successful");
		request.setAttribute("link", "adminoption.jsp");
		request.setAttribute("bname", "Continue");
		request.setAttribute("color", "green");
		
		RequestDispatcher rd=request.getRequestDispatcher("msg.jsp");
		rd.forward(request, response);
	}

}
