<%@page import="database.Student"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="database.Admin"%>
<%@page import="database.Database"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Outlined" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css" media="screen,projection" />
    <link type="text/css" rel="stylesheet" href="css/form.css">
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>

<body>
    <%! Database obj;
    	Student s;
    	ArrayList<Student> ss;%>
    <%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //http 1.1
	response.setHeader("Pragma", "no-cache"); //http1.0
	response.setHeader("Expires", "0"); //proxies

    Admin aob =(Admin)session.getAttribute("aob");
    if(aob==null)
    {
    	response.sendRedirect("adminlogin.jsp");
    }
    obj=(Database)application.getAttribute("obj");%>
    
    <header>
    <nav>
        <div class="nav wrapper">
          <div class="container">
            <a href="" class="brand-logo center"><%=application.getInitParameter("instname")%></a>
            <a href="" class="sidenav-trigger show-on-large" data-target="slide-out"><i class="material-icons">menu</i></a>
            
              <a href="Adminlogout" class="right tooltipped" data-tooltip="Logout" data-position="bottom"><i class="material-icons">exit_to_app</i></a>
            
          </div>
        </div>
      </nav>
    
      <ul class="sidenav" id="slide-out">
    <li>
      <div class="user-view">
        <div class="background">
          <img src="img/m.jpg" alt="" class="responsive-img">
        </div>
        <a href="">
          <img src="user.png" alt="" class="circle">
        </a>
        <span class="white-text name">${aob.getName()}</span>
        <span class="white-text email">${aob.getEmail()}</span>
      </div>
    </li>
    <li>
      <a href="addadmin.jsp"><i class="material-icons">add</i>Add Admin</a>
    </li>
    <li>
      <a href="addstudent.jsp"><i class="material-icons">add</i>Add Student</a>
    </li>
    <li>
      <a href="vieweditdeletestudent.jsp"><i class="material-icons">toc</i>View Edit Delete Students</a>
    </li>
    <li>
      <a href="result.jsp"><i class="material-icons">featured_play_list</i>Result</a>
    </li>
    <li>
      <a href="Adminlogout"><i class="material-icons">exit_to_app</i>Logout</a>
    </li>
  </ul>
  </header>
	
	<main>
    <div class="part">
        <div class="row">
            <div class="col l12 m12 s12">
            <div class="card-panel center">
                <h4>Students List</h4>
                <table class="responsive-table centered highlight">
                <thead>
                    <tr>
                    <th>Roll No</th>
                    <th>Name</th>
                    <th>Physics</th>
                    <th>Chemistry</th>
                    <th>Maths</th>
                    <th>Edit</th>
                    <th>Delete</th>
                    </tr>
                </thead>
                
                <tbody>
                <%
                  ss=obj.getstudents();
                  for (int i=0; i<ss.size(); i++)
                  {
                	  s=ss.get(i);
                  %><tr>
                    <td><%=s.getRollno()%></td>
                    <td><%=s.getName()%></td>
                    <td><%=s.getPhysics()%></td>
                    <td><%=s.getChemistry()%></td>
                    <td><%=s.getMaths()%></td>
                    <td><a href="editstudent.jsp?editstudroll=<%=s.getRollno()%>" class="waves-effect waves-light btn-small green">Edit</a></td>
                    <td><a href="Deletestudent?rollno=<%=s.getRollno()%>" class="waves-effect waves-light btn-small red">Delete</a></td>
                    </tr><%
                  }
                  
                %>
                    
                </tbody>
                </table>
            </div>
            </div>
        </div>
    </div>
    </main>

    <footer class="footer-copyright center">
        &copy; <%=application.getInitParameter("developername")%>
    </footer>

    <!--JavaScript at end of body for optimized loading-->
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/materialize.min.js"></script>
    <script type="text/javascript" src="js/validation.js"></script>
    <script>
        $(document).ready(function () {
            $('.sidenav').sidenav();
        });
    </script>
</body>
</html>