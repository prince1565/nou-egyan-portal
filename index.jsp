<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>e-gyan</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="js/bootstrap.bundle.js"></script>
</head>
<body>
    
   <!-- top row contact and email start -->
    <div class="row col-sm-12" style="background-color: rgb(120, 13, 13);  border-bottom: 2px dotted yellow;">
            <div class="col-sm-6">
                <h6  style="color: white; text-align: center;">+91 7080102007 &nbsp; &nbsp; nouegyanhelp@gmail.com</h6>
            </div>
            <div class="col-sm-6">
                <h6 style="color: white; text-align: center;">Tue Sep 19 2023 18:06:13 GMT+0530 (India Standard Time) </h6>
            </div>
    </div>
    <!-- top row contact and email end -->
    <!-- for admission block start -->
    <div class="row col-sm-12 py-2" style="background-color:rgb(120, 13, 13); border-bottom: 2px dotted yellow;">
        
            <h5 style="text-align: center; color: white;">For Admission and Examination related query, Kindly call on University helpline Numbers 9341508580,9341508577,0612-2201013 & 0612-2206916</h5>
    </div>
    <!-- for admission block end -->

    <!-- logo section start -->
    <div class=" row col-sm-12 bg-light ">
        <div class="row bg-light">
            <div class="col-sm-1 logo-img mx-auto">
            <img src="img/logo1.png" class="img-fluid my-3 w-75">
            </div>
            <div class="col-sm-6">
            <div class="text-area  mt-3">
            <h4>NOU e-Gyan PORTAL</h4>
            <h6>(A Concept by Nalanda Open University)</h6>
            </div>
            </div>
            <div class="col-sm-4">
                <img src="img/instalogo.png" class="img-fluid my-3 mx-1 p-1" style="height:2rem; border-radius: 50%; border: 1px solid rgb(212, 57, 57);">
                <img src="img/facebooklogo.png" class="img-fluid my-3 mx-1  p-1" style="height:2rem; border-radius: 50%; border: 1px solid rgb(212, 57, 57);">
                <img src="img/youtubelogo.webp" class="img-fluid my-3 mx-1  p-1" style="height:2rem; border-radius: 50%; border: 1px solid rgb(212, 57, 57);">
                <img src="img/linkedlogo.webp" class="img-fluid my-3 mx-1 p-1" style="height:2rem; border-radius: 50%; border: 1px solid rgb(212, 57, 57);">
                <img src="img/twitterlogo.png" class="img-fluid my-3 mx-1  p-1" style="height:2rem; border-radius: 50%; border: 1px solid rgb(212, 57, 57);">
            </div>
            </div>
            </div>
    </div>
    <!-- logo section end -->
    <!-- slider section start -->
    <div class="row col-sm-12 slider" style=" width: 100%;height: 500px;background-image:url('img/noeb.jpg'); background-size: 100% 100%;">
      <div class="row col-sm-12" style="background: linear-gradient(rgba(24, 24, 24, 0.5),rgba(28, 27, 27, 0.5));">
        <div class="col-sm-6 ps-5">
          <h1 class="pt-4" style="display:inline-block;" >WELCOME</h1>
          <h1 class="pt-4" style="color: rgb(236, 207, 65);display: inline-block;">STUDENTS</h1>
        </div>
        <div class="col-sm-6">
          <nav class="navbar navbar-expand-lg navbar-dark pt-4">
            <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav mx-auto me-0">
            <li class="nav-item dropdown">
              <li class="nav-item">
                <a class="nav-link text-light" style="font-size: 3vh;" href="index.jsp"><i class="bi bi-book-half"></i> Home</a>
                </li>
        
            </li>
            <li class="nav-item">
            <a class="nav-link text-light" style="font-size: 3vh;" href="aboutus.jsp"><i class="bi bi-book-half"></i> About Us</a>
            </li>
            <li class="nav-item">
            <a class="nav-link text-light" style="font-size: 3vh;" href="contactus.jsp"><i class="bi bi-textarea-t"></i> Contact Us</a></a>
            </li>
            <li class="nav-item">
            <a class="nav-link text-light" style="font-size: 3vh;" href="login.jsp"><i class="bi bi-mortarboard-fill"></i> Login </a></a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-light" style="font-size: 3vh;" href="registration.jsp"><i class="bi bi-book-half"></i> Register</a>
              </li>
            </ul>
            </div>
            </div>
            </nav>
        </div>
      </div>
      <div><br><br><br><br><br><br>
      <h6 class="px-5" style="color: white; text-align: right; ">Get Educated</h6>
      <h1 class="px-5"  style="text-align: right; color:rgb(246, 135, 17)">From Our Content</h1>
       <h1 class="px-5"  style="text-align: right; color:rgb(246, 135, 17)" >For Distance Learning</h1>
       <h6 class="px-5" style="text-align: right; color:rgb(246, 135, 17)">NOU-e-Gyan PORTAL, CONCEPT BY NALANDA OPEN UNIVERSITY</h6>
    </div>
  </div>
    <!-- slider section end -->

    <!-- slider section start -->
   

    <div class="row col-sm-12 my-3" style="background-color: rgb(237, 192, 108);">
      <marquee scrollamount="12" onmousemove="this.stop()" onmouseout="this.start()">
      <div class="row col-sm-12 my-3">
        <%
            DbManager dm=new DbManager();
            String query="select * from news";
            ResultSet rs=dm.select(query);
            
            while(rs.next())
            {
                %>
            <div class="col-sm-4  ">
                <h6 class=" px-5 py-2"style="background-color: rgb(201, 76, 19); color: white; text-align: center"><b>News:</b> &nbsp; &nbsp;  <%=rs.getString("newstext")%>
                    <br>
                    <b>Posted Date:</b> &nbsp; &nbsp;<%=rs.getString("posteddate")%>
                </h6> 
            </div>
          <%
                  
            }
        %>
          
          
        
        
    </div>
    </marquee>
  </div>
    <!-- slider section end -->
    <!-- about section start -->
     
    <div class="row bg-light col-sm-12">
        <div class="col-sm-7 p-4 mx-auto">
            <h2 class="p-5"style="text-align: center;">ABOUT NOU e-GYAN PORTAL</h2>
            <p><b>Nalanda Open University</b> welcomes all our students, faculties & study centres to the very new & innovative online study portal <b> NOU e-Gyan</b>. The portal is a unique initiative by Hon'ble Vice-Chancellor <b>Prof. (Dr.) K C Sinha</b>, which aims at providing online study material to the students of NOU.<br><br>

                The portal is accessible from any hook and corner of the world if the system allows the permission to its users. It is also fully secured and accessible 24 x 7 to its authorised users. It will resolve the academic issues such as E-content Distribution, Delivery, Tracking, Assessment, Progress Monitoring & Controlling of all stakeholders of the system i.e. students, teachers, study centre administrators as well as Nalanda Open University Admins when they are at a distance.
                
                </p>
        </div>
        <div class="col-sm-4 h-100 mx-auto my-auto">
            <img src="img/stp.jpg" class="w-100 "  alt="">
        </div>
        
    </div>

    <!-- about section end -->

    <!-- card section start -->
    <div class="col-sm-12" style="background-image: url('img/bg.jpg');background-repeat: no-repeat; background-attachment: fixed;width:100%;background-size: 100% 100%;">
    <div class="row col-sm-10 my-5 mx-auto">
        <h2 class="p-4 mx-4" style="color: rgb(107, 16, 16);">USERS OF THE PORTAL</h2>
        <div class="row mb-5 row-cols-1 row-cols-md-4 g-3">

          <div class="col mx-auto p-2"style= "box-shadow: 0px 0px 10px 10px rgba(222, 220, 220, 0.443); border-radius: 6px;  border: 10px transparent;">
            <div class="card p-4">
              <p class="card-text">The university admin can login to monitor the portal, provide access to authorised stake holders & upload study material.</p>
              
              <div class="card-body mx-auto w-100">
                  <button type="button " class="btn btn-danger w-100 mt-5">University Admin</button>
                </div>
            </div>
          </div>

          <div class="col mx-auto p-2"style= "box-shadow: 0px 0px 10px 10px rgba(222, 220, 220, 0.443); border-radius: 6px;  border: 10px transparent;">
            <div class="card p-4">
              <p class="card-text">The study centres authorised personnel can login to track students progress, enroll students, schedule assignments & generate reports.</p>
              <div class="card-body mx-auto w-100">
                  <button type="button " class="btn btn-danger w-100 mt-4">Study Center</button>
                </div>
            </div>
          </div>

          <div class="col mx-auto p-2"style= "box-shadow: 0px 0px 10px 10px rgba(222, 220, 220, 0.443); border-radius: 6px;  border: 10px transparent;">
            <div class="card p-4 ">
              <p class="card-text">The university enrolled students can login to view the notification by university, access the e-contents, give assignments & track thier progress report.</p>
              <div class="card-body mx-auto w-100">
                  <button type="button " class="btn btn-danger w-100 mt-4">Nou Students</button>
                </div>
            </div>
          </div>
          </div>
    </div>
  </div>
    <!-- card section end -->

    <!-- student services start -->
    <div class="row col-sm-10 mx-auto my-5">
        <h2 style="color: rgb(114, 9, 9);" class="m-4">STUDENT SERVICES</h2><br>

        <div class="row row-cols-1 row-cols-md-4 g-3">
            <div class="col">
              <div class="card h-100">
                <img src="img/s1.jpg" class="card-img-top" alt="...">
                <div class="card-body mx-auto w-100">
                    <button type="button " class="btn btn-danger w-100">Login</button>
                  </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100">
                <img src="img/s2.jpg" class="card-img-top" alt="...">
                <div class="card-body mx-auto w-100">
                    <button type="button " class="btn btn-danger w-100">Dashboard</button>
                  </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100">
                <img src="img/s3.jpg" class="card-img-top" alt="...">
                <div class="card-body mx-auto w-100">
                    <button type="button " class="btn btn-danger w-100">Self Learning Material</button>
                  </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100">
                <img src="img/s4.jpg" class="card-img-top" alt="...">
                <div class="card-body mx-auto w-100">
                    <button type="button " class="btn btn-danger w-100">e-Books</button>
                  </div>
              </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="img/s55.avif" style=" height:69%;" class="card-img-top" alt="..." >
                  <div class="card-body mx-auto w-100 ">
                    <button type="button " class="btn btn-danger w-100 mt-5">Self-Assessment Tools</button>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card h-100">
                  <img src="img/s6.jpg" class="card-img-top" alt="...">
                  <div class="card-body mx-auto w-100">
                    <button type="button " class="btn btn-danger w-100">Performance</button>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card h-100">
                  <img src="img/s7.jpg" class="card-img-top" alt="...">
                  <div class="card-body mx-auto w-100">
                    <button type="button " class="btn btn-danger w-100">Feedback</button>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card h-100">
                  <img src="img/s8.jpg" class="card-img-top" alt="...">
                  <div class="card-body mx-auto w-100">
                    <button type="button " class="btn btn-danger w-100">Courses-Catalogue</button>
                  </div>
                </div>
              </div>
          </div>
    </div>
    <!-- student services end -->

    <!-- administrative setup start -->
    <div class="col-sm-12" style="background-color: lightgray;">
    <div class="row col-sm-9 mx-auto">
        <h2 style="color: rgb(114, 9, 9);" class="mt-5">ADMINISTRATIVE SETUP</h2><br>

        <div class="row row-cols-1 row-cols-md-4 g-3 mb-5">
            <div class="col">
              <div class="card h-100">
                <img src="img/pf1.jpg" class="card-img mx-auto mt-5" alt="..." style="border-radius: 50%; height:10vw; width:10vw;">
                <div class="card-body mx-auto">
                    <h6 class="mt-3" style="color: rgb(114, 19, 19);">Prof. (Dr.) K. C. Sinha</h6>
                    <p>VICE CHANCELLOR</p>
                  </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100">
                <img src="img/pf2.jpg" class="card-img-top mx-auto mt-5" alt="..." style="border-radius: 50%; height:10vw; width:10vw;">
                <div class="card-body mx-auto">
                    <h6 class="mt-3" style="color: rgb(114, 19, 19);">Prof. (Dr.) Sanjoy Kumar</h6>
                    <p>PRO VICE CHANCELLOR</p>
                  </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100">
                <img src="img/pf3.jpeg" class="card-img-top mx-auto mt-5" alt="..." style="border-radius: 50%; height:10vw; width:10vw;">
                <div class="card-body mx-auto">
                    <h6 class="mt-3" style="color: rgb(114, 19, 19);">Dr. Md. Habibur Rahman</h6>
                    <p>REGISTRAR</p>
                  </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100">
                <img src="img/pf4.jpg" class="card-img-top mx-auto mt-5" alt="..." style="border-radius: 50%; height:10vw; width:10vw;">
                <div class="card-body mx-auto">
                    <h6 class="mt-3" style="color: rgb(114, 19, 19);">Dr. Neelam Kumari</h6>
                    <p>REGISTRAR (Exam)</p>
                  </div>
              </div>
            </div>
        </div>
    </div>
</div>
    <!-- aminstrative setup end -->

    <!--our courses start -->
    <div class="row col-sm-12 my-5">
      <div class="col-sm-7 mx-auto">
        <h2 style="color: rgb(114, 9, 9);" class="mt-5">OUR COURSES</h2><br>
      </div>
      <div class="col-sm-2">
        <button type="button" class="btn btn-warning mt-5" style="color: white;">View all Courses</button>
      </div>
    </div>

    <div class="row col-sm-10 mx-auto" >
    <div class="row col-sm-3 mx-auto mb-5 p-3"; style= "box-shadow: 0px 0px 10px 10px rgba(222, 220, 220, 0.443); border-radius: 6px;  border: 10px transparent;" >
      <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="card" style="width: 18rem;">
              <img src="img/cid.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-text m-3"> Ceritificate in Interior Design</h5>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="card" style="width: 18rem;">
              <img src="img/bba.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-text m-3">Bchelor of Business Administrators</h5>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="card" style="width: 18rem;">
              <img src="img/bca.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-text m-3"> Bchaelor of Computer Application</h5>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="card" style="width: 18rem;">
              <img src="img/pgdfm.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-text m-3">PG Diploma in financial managment</h5>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="row col-sm-3 mx-auto mb-5 p-3" style= "box-shadow: 0px 0px 10px 10px rgba(222, 220, 220, 0.443); border-radius: 6px;  border: 10px transparent;">
      <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="card" style="width: 18rem;">
              <img src="img/bba.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-text m-3"> Ceritificate in Interior Design</h5>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="card" style="width: 18rem;">
              <img src="img/bca.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-text m-3">Bchaelor of Business Administrators</h5>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="card" style="width: 18rem;">
              <img src="img/pgdfm1.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-text m-3"> Bchaelor of Computer Application</h5>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="card" style="width: 18rem;">
              <img src="img/cid.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-text m-3">PG Diploma in financial managment</h5>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="row col-sm-3 mx-auto mb-5 p-3" style= "box-shadow: 0px 0px 10px 10px rgba(222, 220, 220, 0.443); border-radius: 6px;  border: 10px transparent;">
      <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="card" style="width: 18rem;">
              <img src="img/bca.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-text m-3"> Ceritificate in Interior Design</h5>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="card" style="width: 18rem;">
              <img src="img/pgdfm1.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-text m-3">Bchaelor of Business Administrators</h5>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="card" style="width: 18rem;">
              <img src="img/bba.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-text m-3"> Bchaelor of Computer Application</h5>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="card" style="width: 18rem;">
              <img src="img/bca.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-text m-3">PG Diploma in financial managment</h5>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
  </div>
    <!-- our courses end -->

    

    <jsp:include page="footer.jsp"/>
</body>
</html>





