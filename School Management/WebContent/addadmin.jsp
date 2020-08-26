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
                    <h3 class="orange-text">Admin Register</h3>
                    <form
                        onsubmit="return adminregistervalidate('aname','msg1','uname','msg2','email','msg3','maths')"
                        action="Adminregister" method="post">
                        <div class="input-field">
                            <i class="material-icons-outlined prefix">account_circle</i>
                            <label for="aname">Name</label>
                            <input id="aname" name="aname" type="text" onfocusout="namevalidation('aname', 'msg1')" />
                            <p id="msg1" class="msg"></p>
                        </div>
                        <div class="input-field">
                            <i class="material-icons-outlined prefix">account_circle</i>
                            <label for="uname">Username</label>
                            <input id="uname" name="uname" type="text" onfocusout="namevalidation('uname', 'msg2')" />
                            <p id="msg2" class="msg"></p>
                        </div>
                        <div class="input-field">
                            <i class="material-icons-outlined prefix">email</i>
                            <label for="email">E-mail ID</label>
                            <input id="email" name="email" type="email" onfocusout="emailvalidation('email', 'msg3')" />
                            <p id="msg3" class="msg"></p>
                        </div>
                        <div class="input-field">
                            <i class="material-icons-outlined prefix">vpn_key</i>
                            <label for="password">Password</label>
                            <input id="password" name="password" type="password"
                                onfocusout="passwordvalidation('password', 'msg4')" />
                            <p id="msg4" class="msg"></p>
                        </div>
                        <div class="input-field">
                            <i class="material-icons prefix">vpn_key</i>
                            <label for="cpassword">Confirm Password</label>
                            <input id="cpassword" name="cpassword" type="password"
                                onfocusout="cpasswordvalidation('password', 'cpassword', 'msg5')" />
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