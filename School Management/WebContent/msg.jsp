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
        nav,footer {
            background-image: linear-gradient(-20deg, #ff512f 0%, #f09819 100%);
        }
    </style>
</head>
<body>
<%! String msg;
	String msg2;
    String link;
    String bname;
    String color;%>
<%	
	msg=(String)request.getAttribute("msg");
	msg2=(String)request.getAttribute("msg2");
	link=(String)request.getAttribute("link");
	bname=(String)request.getAttribute("bname");
	color=(String)request.getAttribute("color");
	%>
	<header>
        <nav>
        <div class="nav-wrapper">
            <div class="container">
                <span class="brand-logo center"><%=application.getInitParameter("instname")%></span>
            </div>
        </div>
    </nav>
    </header>
    
    <main>
        <div class="row">
                <div class="card center" style="padding: 20px;margin: 50px;">
                    <h3 class="<%=color%>-text" style="padding-bottom: 40px"><%=msg %></h3>
                    <%
                    	if(msg2!=null)
                    	{
                    		%><p style="font-size: 20px;"><%=msg2%></p><%
                    	}%>
                    <%if(link!=null)
                    	{
                    	%><a href="<%=link%>" class="btn waves-effect orange waves-light"><%=bname%></a><% 
                    	}%>
                </div>
        </div>
    </main>
    
    <footer class="footer-copyright center">
        &copy; <%=application.getInitParameter("developername")%>
    </footer>
</body>
</html>