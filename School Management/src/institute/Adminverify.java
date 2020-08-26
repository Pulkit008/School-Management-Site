package institute;

import java.io.IOException;
import java.io.PrintWriter;

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
 * Servlet implementation class Adminverify
 */
@WebServlet("/Adminverify")
public class Adminverify extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String e=request.getParameter("email");
		String p=request.getParameter("password");
		ServletContext con=getServletContext();
		Database obj=(Database)con.getAttribute("obj");
		if( obj.adminlogin(e, p) )
		{
			Admin aob=obj.GetdetailAdmin();
			HttpSession ta=request.getSession();
			ta.setAttribute("aob", aob);
			response.sendRedirect("adminoption.jsp");
		}
		else
		{
			request.setAttribute("msg", "Email ID or Password not Match !");
			request.setAttribute("link", "adminlogin.jsp");
			request.setAttribute("bname", "Continue");
			request.setAttribute("color", "red");
		
			RequestDispatcher rd=request.getRequestDispatcher("msg.jsp");
			rd.forward(request, response);	
		}
	}

}
