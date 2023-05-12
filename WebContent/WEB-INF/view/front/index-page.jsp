<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "form" uri="http://www.springframework.org/tags/form"%> 
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html lang="sr">
<head>
    <!-- Meta Tags -->
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport">
    <!-- Author -->
    <meta name="author" content="City Climber">
    <!-- Description -->
    <meta name="description" content="City Climber izvodi visinske radove, alpinisticke radove u Beogradu i na Novom Beogradu">
    <!-- Page Title -->
    <title> City Climber | Visinski radovi </title>
    <!-- Favicon -->
    <link href="vendor/img/favicon.ico" rel="icon">
    <!-- Bundle -->
    <link rel="stylesheet" href="vendor/css/bundle.min.css">
    <!-- Revolution Slider CSS Files -->
    <link rel="stylesheet" href="vendor/css/revolution-settings.min.css">
    <!-- Plugin Css -->
    <link href="vendor/css/LineIcons.min.css" rel="stylesheet">
    <link href="vendor/css/jquery.fancybox.min.css" rel="stylesheet">
    <link href="vendor/css/owl.carousel.min.css" rel="stylesheet">
    <link href="vendor/css/wow.css" rel="stylesheet">
    <link rel="stylesheet" href="vendor/css/cubeportfolio.min.css">
    <link href="css/line-awesome.min.css" rel="stylesheet">
    <!-- Style Sheet -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
</head>

<body data-spy="scroll" data-target=".navbar" data-offset="90">

<!-- Start Loader -->
<div class="loader" id="loader-fade">
    <div class="dot-container">
        <div class="dot dot-1"></div>
        <div class="dot dot-2"></div>
        <div class="dot dot-3"></div>
    </div>
    <svg xmlns="http://www.w3.org/2000/svg" version="1.1">
        <defs>
            <filter id="goo">
                <feGaussianBlur in="SourceGraphic" stdDeviation="10" result="blur" />
                <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 21 -7"/>
            </filter>
        </defs>
    </svg>
</div>
<!-- End Loader -->

<!-- Start Header -->
<header>
    <!--Navigation-->
    <nav class="navbar navbar-top-default navbar-expand-lg navbar-simple nav-line">
        <ul class="mb-0 top-info">
            <li class="c-links d-none d-lg-block"><a href="tel:+381 61 659 2012"><p style= "font-size:40px;font-weight:bold">+381 61 659 2012 <p></a></li>
           </ul>
          
        <div class="container">
         <!--a href="index-page" title="Logo" class="logo">
                <!--Logo Default-->
                <!--img src="images/logo10.png" alt="logo" class="logo-dark"></a-->
            <!--Nav Links-->
            <div class="collapse navbar-collapse" id="megaone">
                <div class="navbar-nav ml-auto">
                    <a class="nav-link active scroll" href="index-page#home-banner" style="font-weight:bold">City Climber</a>
                    <a class="nav-link scroll" href="index-page#services-sec" style="font-weight:bold">Visinski radovi</a>
                    <a class="nav-link scroll" href="index-page#portfolio-area" style="font-weight:bold">Usluge</a>
                    <a class="nav-link scroll" href="index-page#contact" style="font-weight:bold">Kontakt</a>
                </div>
            </div>
            <!--Side Menu Button-->
            <a href="javascript:void(0)" class="sidemenu_btn" id="sidemenu_toggle">
                <span></span>
                <span></span>
                <span></span>
            </a>
        </div>
        <!--Social Icons-->
        <div class="nav-social text-white d-flex justify-content-center">
            <ul class="social-icons-simple">
                <li><a class="facebook-text-hvr" href="javascript:void(0)"><i class="fab fa-facebook-f"></i> </a> </li>
                <li><a class="instagram-text-hvr" href="javascript:void(0)"><i class="fab fa-instagram"></i> </a> </li>
                
            </ul>
        </div>
    </nav>
    <!--Side Nav-->
    <div class="side-menu hidden">
        <div class="inner-wrapper">
            <span class="btn-close" id="btn_sideNavClose"><i></i><i></i></span>
            <nav class="side-nav w-100">
                <ul class="navbar-nav">
                    <li class="nav-item">
                      <a class="nav-link active scroll" href="index-page#home-banner">City Climber</a>
                    </li>
                    <li class="nav-item">
                  <a class="nav-link scroll" href="index-page#services-sec">Visinski radovi</a>
                        
                    </li>
                    <li class="nav-item">
                        <a class="nav-link scroll" href="index-page#portfolio-area">Usluge</a>
                    </li>
                   
                    <li class="nav-item">
                        <a class="nav-link scroll" href="index-page#contact">Kontakt</a>
                    </li>
                </ul>
            </nav>

            <div class="side-footer text-white w-100">
                <ul class="social-icons-simple">
                    <li><a class="facebook-text-hvr" href="javascript:void(0)"><i class="fab fa-facebook-f"></i></a></li>
                   
                    <li><a class="instagram-text-hvr" href="javascript:void(0)"><i class="fab fa-instagram"></i></a></li>
                </ul>
                <p class="text-white">&copy; 2022 City Climber Made With Love by <span class="d-inline d-lg-block"> City Climber</span></p>
            </div>
        </div>
    </div>
    <a id="close_side_menu" href="javascript:void(0);"></a>
    <!-- End side menu -->
</header>
<!-- End Header -->

<!-- Start Banner -->
  
 
<section class="banner-area" id="home-banner">
   
  <div class="container">
    <div class="row center-content">
      <div class="col-12 col-md-10 col-lg-6 offset-md-1 offset-lg-6">
        <div class="green-box">
          <div class="box-content">
            <h1 class="wow fadeInUp" data-wow-delay="1.2s">Visinski radovi</h1>
            <h1 class="wow fadeInUp" data-wow-delay="1.6s">City Climber </h1><br>
            <h1 class="wow fadeInUp" data-wow-delay="1.6s"> Beograd</h1><br>
            <h1 class="wow fadeInUp" data-wow-delay="1.4s">+381 61 659 2012</h1><br>
            <a href="index-page#contact" class="scroll button wow fadeInUp" data-wow-delay="2s"><i class="las la-angle-right"></i>Kontakt</a>
          </div>
        </div>
      </div>
    </div>
  </div>
 <div class="banner-image">
  <img src="images/banner.jpg" alt="">
  </div>
</section>
 
<!-- End Banner -->

<!-- Start Services -->
<section class="services-sec" id="services-sec">
    <div class="container">
        <div class="row">
            <div class="col-12 col-lg-5">
                <div class="heading-area">
                    <h4 class="heading wow slideInLeft">&#x160ta su <span><strong></strong> Visinski radovi?</strong> </span></h4>
                </div>
            </div>
         <c:forEach var="vr" items="${vr}">
            <div class="col-12 col-lg-7">
                <div class="image-holder wow slideInRight">
                    <img src="${vr.slika}" alt="service-img">
                </div>
            </div>
            <div class="col-12 padding-top-half">
                <ul class="services-boxes">
                    <!-- Service-1 -->
                    <li class="service-card left wow slideInLeft">
                        <div class="icon-holder"><i class="lni lni-bulb"></i></div>
                        <p class="text">${vr.text1}</p>
                    </li>
                    <!-- Service-2 -->
                    <li class="service-card right d-block text-center wow slideInRight">
                        <div class="icon-holder"><i class="lni lni-briefcase"></i></div>
                        <p class="text">${vr.text2}</p>
                    </li>
                    <!-- Service-3 -->
                    <li class="service-card left icon-right text-center text-lg-right wow slideInLeft">
                        <p class="text order-2 order-lg-1">${vr.text3}</p>
                        <div class="icon-holder order-1 order-lg-2"><i class="lni lni-heart"></i></div>
                    </li>
                </ul>
            </div>
            </c:forEach>
        </div>
    </div>
</section>
<!-- End Services -->

<!-- Start Portfolio -->
<section class="portfolio" id="portfolio-area">
    <div id="project-sec" class="project-sec">
        <div class="projects owl-carousel owl-theme no-gutters">
            <!-- Item-1 -->
            
            <c:forEach var="item" items="${items}"> >
            <div class="item project-area">
                <div class="project-img order-1">
                    <img src="${item.slika}" alt="images">
                </div>
                <div class="container">
                    <div class="project-detail text-center text-lg-left order-2">
                        <div class="row no-gutters">
                            <div class="col-12 offset-md-12 col-lg-6 animate-fade">
                                <div class="black-box">
                                <h6 class="project-heading" style= "font-size:28px">${item.naslov } </h6>
                                <p class="project-text">${item.text }</p>
                                <a href="${item.linkurl}" class="btn btn-medium btn-rounded btn-white">${item.link}</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </c:forEach>
            
         
        </div>
        <!-- Nav Arrows -->
        <div class="project-links-left d-none d-md-block">
            <a class="customPrevBtn"><i class="las la-angle-left"></i></a>
        </div>
        <div class="project-links-right d-none d-md-block">
            <a class="customNextBtn"><i class="las la-angle-right"></i></a>
        </div>

    </div>
</section>
<!-- End Portfolio -->



<!-- Start Contact -->
<section class="contact-sec" id="contact">
    <div class="container expand-container">
        <div class="row align-items-center">
            <div class="col-12 col-md-12 col-lg-5 wow slideInLeft" data-wow-delay=".5s">
                <div class="heading-area">
                    <h4 class="heading">Imate pitanja? <span class="d-block">Pi&#x160ite nam ili pozovite</span></h4>
                </div>
                <div class="contact-details">
                    <ul>
                        <li><i aria-hidden="true" class="las la-paper-plane"></i><a href="mailto:cityclimber011@gmail.com">cityclimber011@gmail.com</a></li>
                        <li><i aria-hidden="true" class="las la-phone"></i><span><a href="tel:+381 61 659 2012">+381 61 659 2012</a></span></li>
                        <li><i aria-hidden="true" class="las la-map-marker"></i> Beograd</li>
                      </ul>
                      
                </div>
                  </div>
                <div class="col-12 col-md-12 col-lg-7 wow slideInRight" data-wow-delay=".5s">
                   
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d181139.3549168362!2d20.282514667490318!3d44.8154032883584!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x475a7aa3d7b53fbd%3A0x1db8645cf2177ee4!2sBelgrade!5e0!3m2!1sen!2srs!4v1667399648822!5m2!1sen!2srs" width="600" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
          
            </div>
            
        </div>
        
  
    
</section>

<!-- End Contact -->

<!-- Start Scroll Top -->
<div class="go-top"><i class="fas fa-angle-up"></i><i class="fas fa-angle-up"></i></div>
<!-- End Scroll Top -->

<!-- JavaScript -->
<script src="vendor/js/bundle.min.js"></script>
<!-- Plugin Js -->
<script src="vendor/js/morphext.min.js"></script>
<script src="vendor/js/jquery.appear.js"></script>
<script src="vendor/js/jquery.fancybox.min.js"></script>
<script src="vendor/js/owl.carousel.min.js"></script>
<script src="vendor/js/wow.min.js"></script>
<script src="vendor/js/jquery.cubeportfolio.min.js"></script>

<!-- CUSTOM JS -->
<script src="vendor/js/contact_us.js"></script>
<script src="js/script.js"></script>

</body>
</html>