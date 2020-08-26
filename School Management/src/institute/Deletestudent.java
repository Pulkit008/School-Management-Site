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
import database.Student;

/**
 * Servlet implementation class Deletestudent
 */
@WebServlet("/Deletestudent")
public class Deletestudent extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ta=request.getSession(false);
		Admin aob=(Admin)ta.getAttribute("aob");
		if(aob==null)
		{
			response.sendRedirect("adminlogin.jsp");
		}
		
		int rollno =  Integer.parseInt(request.getParameter("rollno"));
		
		ServletContext con=getServletContext();
		Database obj=(Database)con.getAttribute("obj");
		obj.deletestudent(rollno);
		
		RequestDispatcher rd=request.getRequestDispatcher("vieweditdeletestudent.jsp");
		rd.forward(request, response);
	}

}
