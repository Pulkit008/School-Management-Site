<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
  <html>
    <head>
        <style>
            nav{
                background-image: linear-gradient(-20deg, #ff512f 0%, #f09819 100%);
            }
            footer{
                background-image: linear-gradient(-20deg, #ff512f 0%, #f09819 100%);
            }
            .card-panel{
                opacity: 0.8;
            }
            .part1{
                background: url(img/ae.jpg);
                background-position: center;
                background-size: cover;
                min-height: 500px;
            }
            .part2{
                background: url(img/g.jpg);
                background-position: center;
                background-size: cover;
                min-height: 500px;
            }
            .part3{
                background: url(img/b.jpg);
                background-position: center;
                background-size: cover;
                min-height: 500px;
            }
        </style>
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>

    <body>
        <nav>
            <div class="nav-wrapper">
                <div class="container">
                    <a href="#" class="brand-logo"><%=application.getInitParameter("instname")%></a>
                    <a href="" class="sidenav-trigger" data-target="slide-out"><i class="material-icons">menu</i></a>
                    <ul class="right hide-on-small-and-down hide-on-med-and-down">
                        <li><a href="about.jsp">ABOUT</a></li>
                        <li><a href="contact.jsp">CONTACT</a></li>
                        <li><a href="adminlogin.jsp">ADMIN</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <ul class="sidenav" id="slide-out">
            <li><a href="about.jsp" class="center">ABOUT</a></li>
            <li><a href="contact.jsp" class="center">CONTACT</a></li>
            <li><a href="adminlogin.jsp" class="center">ADMIN</a></li>
        </ul>

        <!--signup login-->
        <div class="part1">
                <h1 class="center red-text" style="padding-top: 140px;margin-top: 0px;">Learn | Develop | Skills</h1>
            <div class="center">
                <a href="" class="btn orange accent-3 black-text">Know More</a>
                <a href="adminlogin.jsp" class="btn orange accent-3 black-text">Login</a>
            </div>
        </div>

        <!--art of thinking-->
        <div class="part2">
            <div class="card-panel" style="padding: 2px;">
                <h3 class="center">Teach Art of Thinking</h3>
            </div>

            <div class="row">
                <div class="col l4 m4 s12">
                    <div class="card-panel hoverable">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, distinctio in cumque exercitationem necessitatibus odit esse dolore magnam repellat minus voluptatem accusamus perspiciatis iure delectus voluptatibus natus pariatur. Sit pariatur ratione deleniti delectus ad qui distinctio. Voluptatem tenetur rem ipsum. Recusandae velit, dignissimos aspernatur atque inventore minus laboriosam pariatur amet.
                    </div>
                </div>
                <div class="col l4 m4 s12">
                    <div class="card-panel hoverable">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, distinctio in cumque exercitationem necessitatibus odit esse dolore magnam repellat minus voluptatem accusamus perspiciatis iure delectus voluptatibus natus pariatur. Sit pariatur ratione deleniti delectus ad qui distinctio. Voluptatem tenetur rem ipsum. Recusandae velit, dignissimos aspernatur atque inventore minus laboriosam pariatur amet.
                    </div>
                </div>
                <div class="col l4 m4 s12">
                    <div class="card-panel hoverable">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, distinctio in cumque exercitationem necessitatibus odit esse dolore magnam repellat minus voluptatem accusamus perspiciatis iure delectus voluptatibus natus pariatur. Sit pariatur ratione deleniti delectus ad qui distinctio. Voluptatem tenetur rem ipsum. Recusandae velit, dignissimos aspernatur atque inventore minus laboriosam pariatur amet.
                    </div>
                </div>
            </div>
        </div>

        <!--courses-->
        <div class="part3">

                <div class="card-panel" style="padding: 2px;">
                    <h3 class="center">Courses</h3>
                </div>
    
                <div class="row">
                    <div class="col l2 m4 s12">
                        <div class="card hoverable">
                            <div class="card-image">
                                <img src="img/c1.png" alt="">
                                <span class="card-title" style="font-weight: bolder">C Language</span>
                            </div>
                            <div class="card-content">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet voluptas provident eveniet reprehenderit architecto nobis impedit, recusandae enim dignissimos ab sunt itaque! Rem adipisci vero asperiores voluptate illum a provident?
                            </div>
                        </div>
                    </div>
                    <div class="col l2 m4 s12">
                            <div class="card hoverable">
                                <div class="card-image">
                                    <img src="img/c2.png" alt="">
                                    <span class="card-title" style="font-weight: bolder">C++ Language</span>
                                </div>
                                <div class="card-content">
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet voluptas provident eveniet reprehenderit architecto nobis impedit, recusandae enim dignissimos ab sunt itaque! Rem adipisci vero asperiores voluptate illum a provident?
                                </div>
                            </div>
                    </div>
                    <div class="col l2 m4 s12">
                            <div class="card hoverable">
                                <div class="card-image">
                                    <img src="img/java1.png" alt="">
                                    <span class="card-title" style="font-weight: bolder">Java</span>
                                </div>
                                <div class="card-content">
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet voluptas provident eveniet reprehenderit architecto nobis impedit, recusandae enim dignissimos ab sunt itaque! Rem adipisci vero asperiores voluptate illum a provident?
                                </div>
                            </div>
                    </div>
                    <div class="col l2 m4 s12">
                            <div class="card hoverable">
                                <div class="card-image">
                                    <img src="img/java2.png" alt="">
                                    <span class="card-title" style="font-weight: bolder">Java Advance</span>
                                </div>
                                <div class="card-content">
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet voluptas provident eveniet reprehenderit architecto nobis impedit, recusandae enim dignissimos ab sunt itaque! Rem adipisci vero asperiores voluptate illum a provident?
                                </div>
                            </div>
                    </div>
                    <div class="col l2 m4 s12">
                            <div class="card hoverable">
                                <div class="card-image">
                                    <img src="img/python.png" alt="">
                                    <span class="card-title" style="font-weight: bolder">Python</span>
                                </div>
                                <div class="card-content">
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet voluptas provident eveniet reprehenderit architecto nobis impedit, recusandae enim dignissimos ab sunt itaque! Rem adipisci vero asperiores voluptate illum a provident?
                                </div>
                            </div>
                    </div>
                    <div class="col l2 m4 s12">
                            <div class="card hoverable">
                                <div class="card-image">
                                    <img src="img/ds.png" alt="">
                                    <span class="card-title" style="font-weight: bolder">Data Structures</span>
                                </div>
                                <div class="card-content">
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet voluptas provident eveniet reprehenderit architecto nobis impedit, recusandae enim dignissimos ab sunt itaque! Rem adipisci vero asperiores voluptate illum a provident?
                                </div>
                            </div>
                    </div>
                </div>
        </div>

        <footer class="page-footer">
            <div class="row">
                <div class="col l4 s12">
                    <div class="card-panel">
                        <h4 class="center orange-text">About Us</h4>
                        <span class="black-text">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae at earum minima tenetur quibusdam. Soluta quisquam quis nemo esse dolore.</span>
                    </div>
                </div>
                <div class="col l4 s12">
                    <div class="card-panel">
                            <h5 class="center orange-text">Links</h5>
                            <div class="collection">
                                <a href="" class="collection-item red-text">HOME</a>
                                <a href="" class="collection-item red-text">PROJECTS</a>
                                <a href="" class="collection-item red-text">NEWS</a>
                            </div>
                    </div>
                </div>
                <div class="col l4 s12">
                        <div class="card-panel">
                                <h4 class="center orange-text">Visit Us</h4>
                                <span class="black-text">Lorem, ipsum dolor sit amet.</span>
                        </div>
                </div>
            </div>
            <div class="footer-copyright">
                <div class="container">
                        &copy; <%=application.getInitParameter("developername")%>
                </div>
            </div>
        </footer>

      <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="js/jquery.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
      <script>
          $(document).ready(function(){
               $('.parallax').parallax();
               $('.sidenav').sidenav();
          });
      </script>
    </body>
  </html>

