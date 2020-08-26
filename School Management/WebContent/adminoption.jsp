<%@page import="database.Student"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="database.Database"%>
<%@page import="database.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <script type="text/javascript" src="js/loader.js"></script>
  <!--Import Google Icon Font-->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <!--Import materialize.css-->
  <link type="text/css" rel="stylesheet" href="css/materialize.min.css" media="screen,projection" />

  <!--Let browser know website is optimized for mobile-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <style>
  	body {
    display: flex;
    min-height: 100vh;
    flex-direction: column;
    }

	main {
  	flex: 1 0 auto;
	}
    nav,
    footer {
      background-image: linear-gradient(-20deg, #ff512f 0%, #f09819 100%);
    }
  </style>
</head>
<body>
<%! Database obj;
	ArrayList<Student> ss;
	Student s;%>
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
  <nav class="blue">
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
        <span class="white-text name" style="font-size: 18px">${aob.getName()}</span>
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
  <!--Topper Students-->
  <div class="row">
    <div class="col l12 m12 s12">
      <div class="card-panel center">
        <h4>Topper Students / Avove 90%</h4>
        <table>
          <thead>
            <tr>
              <th>Roll No</th>
              <th>Name</th>
              <th>Physics</th>
              <th>Chemistry</th>
              <th>Maths</th>
              <th>Percentage</th>
            </tr>
          </thead>
          <tbody>
            <%
                  float per;
                  ss=obj.getstudents();
                  for (int i=0; i<ss.size(); i++)
                  {
                	  s=ss.get(i);
                	  per = (s.getChemistry()+s.getMaths()+s.getPhysics())/3;
                	  if (per>=90){
                		  
                  %><tr>
                    <td><%=s.getRollno()%></td>
                    <td><%=s.getName()%></td>
                    <td><%=s.getPhysics()%></td>
                    <td><%=s.getChemistry()%></td>
                    <td><%=s.getMaths()%></td>
                    <td><%=per %></td>
                    </tr><%
                	  }
                  }
                  
                %>
          </tbody>
        </table>
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
  <script>

    $(document).ready(function () {
      $('.sidenav').sidenav();
      $('.tooltipped').tooltip();
    });

  </script>
</body>

</html>