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
	  ResultSet rs;%>
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

        <a href="Adminlogout" class="right tooltipped" data-tooltip="Logout" data-position="bottom"><i
            class="material-icons">exit_to_app</i></a>

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
            <div class="col l4 m3"></div>
            <div class="col l4 m6 s12">
                <div class="card center">
                    <h3 class="orange-text">Student Register</h3>
                    <form
                        onsubmit="return studentregistervalidate('sname','msg2','physics','msg3','chemistry','msg4','maths')"
                        action="Studentregister" method="post">
                        <div class="input-field">
                            <i class="material-icons-outlined prefix">account_circle</i>
                            <label for="sname">Name</label>
                            <input id="sname" name="sname" type="text" onfocusout="namevalidation('sname', 'msg2')" />
                            <p id="msg2" class="msg"></p>
                        </div>
                        <div class="input-field">
                            <i class="material-icons-outlined prefix">library_books</i>
                            <label for="physics">Physics</label>
                            <input id="physics" name="physics" type="number"
                                onfocusout="marksvalidation('physics', 'msg3')">
                            <p id="msg3" class="msg"></p>
                        </div>
                        <div class="input-field">
                            <i class="material-icons-outlined prefix">library_books</i>
                            <label for="chemistry">Chemistry</label>
                            <input id="chemistry" name="chemistry" type="number"
                                onfocusout="marksvalidation('chemistry', 'msg4')">
                            <p id="msg4" class="msg"></p>
                        </div>
                        <div class="input-field">
                            <i class="material-icons-outlined prefix">library_books</i>
                            <label for="maths">Maths</label>
                            <input id="maths" name="maths" type="number"
                                onfocusout="marksvalidation('maths', 'msg5')">
                            <p id="msg5" class="msg"></p>
                        </div>
                        
                        <br><br>
                        <button class="btn waves-effect orange waves-light" type="submit" name="action">Submit
                        </button>
                    </form><br><br>
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
      $('select').formSelect();
    });
  </script>
</body>

</html>