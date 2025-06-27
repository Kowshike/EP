<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Managing App</title>
 <link rel="stylesheet" href="css/home.css" />
   <link rel="stylesheet" href="css/bootstrap.min.css">
     
</head>
<jsp:include page="navbar.jsp"></jsp:include>
<body>
 <section class="banner_main">
         <div id="banner1" class="carousel slide banner_slide" data-ride="carousel">
            <ol class="carousel-indicators">
               <li data-target="#banner1" data-slide-to="0" class="active"></li>
               <li data-target="#banner1" data-slide-to="1"></li>
               <li data-target="#banner1" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
               <div class="carousel-item active">
                  <div class="container-fluid">
                     <div class="carousel-caption">
                        <div class="row">
                           <div class="col-md-7 col-lg-5">
                              <div class="text-bg">
                                 <h1>Employee Managing App</h1>
                                 <span>Streamline HR operations and enhance productivity with our intuitive employee management system.</span>
                                 <a class="read_more" href="#">Contact Us</a>
                              </div>
                           </div>
                           <div class="col-md-12 col-lg-7">
                              <div class="row">
                                 <div class="col-md-6">
                                    <div class="ban_track">
                                       <figure><img src="data:image/jpeg;base64,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" alt="#"/></figure>
                                    </div>
                                 </div>
                                 <div class="col-md-6">
                                    <form class="transfot" action="track">
                                       <div class="col-md-12">
                                          <span>Services</span>
                                          <h3>Check Your Details</h3>
                                       </div>
                                       <div class="col-md-12">
                                          
                                       </div>
                                       <div class="col-md-12">
                                        
                                       </div>
                                       <div class="col-md-12">
                                       
                                       </div>
                                       <div class="col-md-12">
                                          <input class="transfot_form" placeholder="" type="text" name="orderid">
                                       </div>
                                       <div class="col-md-12">
                                          <input type="submit" value="Check" class="get_now"/>
                                       </div>
                                    </form>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="carousel-item">
                  <div class="container-fluid">
                     <div class="carousel-caption">
                        <div class="row">
                           <div class="col-md-7 col-lg-5">
                              <div class="text-bg">
                                 <h1>Best Logistic Company</h1>
                                 <span>Streamline HR operations and enhance productivity with our intuitive employee management system.</span>
                                 <a class="read_more" href="#">Contact Us</a>
                              </div>
                           </div>
                           <div class="col-md-12 col-lg-7">
                              <div class="row">
                                 <div class="col-md-6">
                                    <div class="ban_track">
                                       <figure><img src="images/track.png" alt="#"/></figure>
                                    </div>
                                 </div>
                                 <div class="col-md-6">
                                    <form class="transfot">
                                       <div class="col-md-12">
                                          <span>Services</span>
                                          <h3>Get Your Data</h3>
                                       </div>
                                       <div class="col-md-12">
                                          
                                       </div>
                                       <div class="col-md-12">
                                        
                                       </div>
                                       <div class="col-md-12">
                                       
                                       </div>
                                       <div class="col-md-12">
                                          <input class="transfot_form" placeholder="Order Id" type="text" name="Order Id">
                                       </div>
                                       <div class="col-md-12">
                                          <button class="get_now">Track</button>
                                       </div>
                                    </form>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="carousel-item">
                  <div class="container-fluid">
                     <div class="carousel-caption">
                        <div class="row">
                           <div class="col-md-7 col-lg-5">
                              <div class="text-bg">
                                 <h1>AKV APP</h1>
                                 <span>Streamline HR operations and enhance productivity with our intuitive employee management system.</span>
                                 <a class="read_more" href="#">Contact Us</a>
                              </div>
                           </div>
                           <div class="col-md-12 col-lg-7">
                              <div class="row">
                                 <div class="col-md-6">
                                    <div class="ban_track">
                                       <figure><img src="images/track.png" alt="#"/></figure>
                                    </div>
                                 </div>
                                 <div class="col-md-6">
                                    <form class="transfot">
                                       <div class="col-md-12">
                                          <span>Services</span>
                                          <h3>Get Your Data</h3>
                                       </div>
                                       <div class="col-md-12">
                                          
                                       </div>
                                       <div class="col-md-12">
                                        
                                       </div>
                                       <div class="col-md-12">
                                       
                                       </div>
                                       <div class="col-md-12">
                                          <input class="transfot_form" placeholder="EMP-ID" type="text" name="Order Id">
                                       </div>
                                       <div class="col-md-12">
                                          <button class="get_now">Track</button>
                                       </div>
                                    </form>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a class="carousel-control-prev" href="#banner1" role="button" data-slide="prev">
            <i class="fa fa-angle-left" aria-hidden="true"></i>
            </a>
            <a class="carousel-control-next" href="#banner1" role="button" data-slide="next">
            <i class="fa fa-angle-right" aria-hidden="true"></i>
            </a>
         </div>
      </section>
      <!-- end banner -->
      
      
      
      <!-- choose section -->
      <div class="choose">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage">
                     <h2>Why Choose Us</h2>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-md-5">
                  <div class="choose_box">
                     <i><img src="images/why1.png" alt="#"/></i>
                     <h3>Our Vission</h3>
                     <p>The main vision of the project is to create a comprehensive and efficient employee management system that enables seamless operations for handling and utilizing employees' data to optimize workforce productivity, enhance decision-making, and foster a positive work environment.</p>
                   
                    <a class="read_more" href="#"></a>
                    
                  </div>
              
            </div>
         </div>
      </div>
      <!-- end choose section -->
      <!-- contact section -->
      <div id="contact" class="contact">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage">
                     <h2>Requst A call  for You</h2>
                  </div>
               </div>
            </div>
         </div>
         <div class="con_bg">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-md-5">
                     <form id="request" class="main_form">
                        <div class="row">
                           <div class="col-md-12 ">
                              <input class="contactus" placeholder="Name" type="type" name="Name"> 
                           </div>
                           <div class="col-md-12">
                              <input class="contactus" placeholder="Email" type="type" name="Email"> 
                           </div>
                           <div class="col-md-12">
                              <input class="contactus" placeholder="Phone Number" type="type" name="Phone Number">                          
                           </div>
                           <div class="col-md-12">
                              <input class="contactusmess" placeholder="Message" type="type" Message="Name">
                           </div>
                           <div class="col-md-12">
                              <button class="send_btn">Send</button>
                           </div>
                        </div>
                     </form>
                  </div>
                  <div class="col-md-7">
                     <div class="co_tru">
<figure>
  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQmtO_0zxUtzUoksgsWP9XjymiFlg-B11nYA&usqp=CAU" alt="#" />
</figure>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end contact section -->
      <!--  footer -->
      <footer>
         <div class="footer bottom_cross1">
            <div class="container">
               <div class="row">
                  <div class="col-md-4">
                     <ul class="location_icon">
                        <li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i></a> Address : KLU <br> Vaddeswaram 
                        </li>
                        <li><a href="#"><i class="fa fa-phone" aria-hidden="true"></i></a>Phone :  709300886</li>
                        <li><a href="#"><i class="fa fa-envelope" aria-hidden="true"></i></a>Email : AVK management@gmail.com</li>
                     </ul>
                     <form class="bottom_form">
                        <h3>Newsletter</h3>
                        <input class="enter" placeholder="Enter your email" type="text" name="Enter your email">
                        <button class="sub_btn">subscribe</button>
                     </form>
                  </div>
                  <div class="col-md-8">
                     <div class="map">
                        <figure><img src="images/map.png" alt="#"/></figure>
                     </div>
                  </div>
               </div>
            </div>
            <div class="copyright">
               <div class="container">
                  <div class="row">
                     <div class="col-md-12">
                        <p>© 2023 EP HACKATHON TEAM-21</a></p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </footer>
        <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
      <script>
         function openNav() {
           document.getElementById("mySidepanel").style.width = "250px";
         }
         
         function closeNav() {
           document.getElementById("mySidepanel").style.width = "0";
         }
      </script>
</body>
</html>