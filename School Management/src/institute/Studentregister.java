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
 * Servlet implementation class Studentregister
 */
@WebServlet("/Studentregister")
public class Studentregister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ta=request.getSession(false);
		Admin aob=(Admin)ta.getAttribute("aob");
		if(aob==null)
		{
			response.sendRedirect("adminlogin.jsp");
		}
		
		String name = request.getParameter("sname");
		int s1 = Integer.parseInt(request.getParameter("physics"));
		int s2 = Integer.parseInt(request.getParameter("chemistry"));
		int s3= Integer.parseInt(request.getParameter("maths"));
		
		Student s= new Student();
		s.setName(name);
		s.setPhysics(s1);
		s.setChemistry(s2);
		s.setMaths(s3);
		
		ServletContext con=getServletContext();
		Database obj=(Database)con.getAttribute("obj");
		obj.insert(s);
		request.setAttribute("msg", "Registration Successful\nRoll No. = "+s.getRollno());
		request.setAttribute("link", "adminoption.jsp");
		request.setAttribute("bname", "Continue");
		request.setAttribute("color", "green");
		
		RequestDispatcher rd=request.getRequestDispatcher("msg.jsp");
		rd.forward(request, response);
	}

}
