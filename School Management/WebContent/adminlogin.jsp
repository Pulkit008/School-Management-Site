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
    <style type="text/css">
    	body {
    display: flex;
    min-height: 100vh;
    flex-direction: column;
}

main {
  flex: 1 0 auto;
}
    </style>
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>

<body>
	<header>
    <nav>
        <div class="nav-wrapper">
            <div class="container">
                <a href="" class="brand-logo"><%=application.getInitParameter("instname")%></a>
                <a href="" class="sidenav-trigger" data-target="slide-out"><i class="material-icons">menu</i></a>
                <ul class="right hide-on-small-and-down hide-on-med-and-down">
                    <li><a href="index.jsp">HOME</a></li>
                    <li><a href="about.jsp">ABOUT</a></li>
                    <li><a href="contact.jsp">CONTACT</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <ul class="sidenav" id="slide-out">
        <li><a href="index.jsp" class="center">HOME</a></li>
        <li><a href="about.jsp" class="center">ABOUT</a></li>
        <li><a href="contact.jsp" class="center">CONTACT</a></li>
    </ul>
    
    </header>
    
    <main>
    <div class="part">

        <div class="row">
            <div class="col l4 m3"></div>
            <div class="col l4 m6 s12">
                <div class="card center">
                    <h3 class="orange-text">Admin Login</h3>
                    <form onsubmit="return adminvalidate('email','msg1','password','msg2')" action="Adminverify"
                        method="post">
                        <div class="input-field">
                            <i class="material-icons-outlined prefix">account_circle</i>
                            <label for="email">E-mail ID</label>
                            <input id="email" type="text" name="email" onfocusout="emailvalidation('email','msg1')">
                            <p id="msg1" class="msg"></p>
                        </div>
                        <div class="input-field">
                            <i class="material-icons-outlined prefix">vpn_key</i>
                            <label for="password">Password</label>
                            <input id="password" type="password" name="password"
                                onfocusout="passwordvalidation('password','msg2')" />
                            <p id="msg2" class="msg"></p>
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
        });
    </script>
</body>

</html>