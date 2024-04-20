<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="img/favicon.html">

    <title>Panchayat Post</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath }/views/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/views/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="${pageContext.request.contextPath }/views/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/views/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/views/css/owl.carousel.css" type="text/css">

    <!--right slidebar-->
    <link href="${pageContext.request.contextPath }/views/css/slidebars.css" rel="stylesheet">

    <!-- Custom styles for this template -->

    <link href="${pageContext.request.contextPath }/views/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/views/css/style-responsive.css" rel="stylesheet" />

  </head>

  <body class="light-sidebar-nav">

  <section id="container">
      <!--header start-->
      <header class="header white-bg">
              <div class="sidebar-toggle-box">
                  <i class="fa fa-bars"></i>
              </div>
            <!--logo start-->
            <a href="index-2.html" class="logo">Panchayat<span>Post</span></a>
            <!--logo end-->
          
            <div class="top-nav ">
                <!--search & user info start-->
                <ul class="nav pull-right top-menu">
                    
                    <!-- user login dropdown start-->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <img alt="" src="${ pageContext.request.contextPath }/views/img/avatar1_small.jpg">
                            <span class="username">Jhon Doue</span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu extended logout dropdown-menu-right">
                            <div class="log-arrow-up"></div>
                            <li><a href="#"><i class=" fa fa-suitcase"></i>Profile</a></li>
                            <li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
                            <li><a href="#"><i class="fa fa-bell-o"></i> Notification</a></li>
                            <li><a href="login.html"><i class="fa fa-key"></i> Log Out</a></li>
                        </ul>
                    </li>
                  
                    <!-- user login dropdown end -->
                </ul>
                <!--search & user info end-->
            </div>
        </header>
      <!--header end-->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
                  <li>
                      <a class="active" href="${ pageContext.request.contextPath}/admin/dashboard">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a href="${ pageContext.request.contextPath}/admin/user" >
                          <i class="fa fa-laptop"></i>
                          <span>User</span>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-book"></i>
                          <span>Subscription</span>
                      </a>
                     
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cogs"></i>
                          <span>Slider</span>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Theme Samples</span>
                      </a>
                  </li>
                    <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Festivals</span>
                      </a>
                  </li>
                    <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Greetings</span>
                      </a>
                  </li>
                    <li class="sub-menu">
                      <a href="${ pageContext.request.contextPath}/admin/category" >
                          <i class="fa fa-tasks"></i>
                          <span>Categories</span>
                      </a>
                  </li>
                <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Posts</span>
                      </a>
                  </li>
                 <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Frames</span>
                      </a>
                  </li>

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
              <!--state overview start-->
              <div class="row state-overview">
                  <div class="col-lg-3 col-sm-6">
                      <section class="card">
                          <div class="symbol terques">
                              <i class="fa fa-user"></i>
                          </div>
                          <div class="value">
                              <h1 class="count">
                                  0
                              </h1>
                              <p>New Users</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="card">
                          <div class="symbol red">
                              <i class="fa fa-tags"></i>
                          </div>
                          <div class="value">
                              <h1 class=" count2">
                                  0
                              </h1>
                              <p>Sales</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="card">
                          <div class="symbol yellow">
                              <i class="fa fa-shopping-cart"></i>
                          </div>
                          <div class="value">
                              <h1 class=" count3">
                                  0
                              </h1>
                              <p>New Order</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="card">
                          <div class="symbol blue">
                              <i class="fa fa-bar-chart-o"></i>
                          </div>
                          <div class="value">
                              <h1 class=" count4">
                                  0
                              </h1>
                              <p>Total Profit</p>
                          </div>
                      </section>
                  </div>
              </div>
              <!--state overview end-->

          
            

          </section>
      </section>
      <!--main content end-->

     
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="${pageContext.request.contextPath }/views/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath }/views/js/bootstrap.bundle.min.js"></script>
    <script class="include" type="text/javascript" src="${pageContext.request.contextPath }/views/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="${pageContext.request.contextPath }/views/js/jquery.scrollTo.min.js"></script>
    <script src="${pageContext.request.contextPath }/views/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/views/js/jquery.sparkline.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/views/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
    <script src="${pageContext.request.contextPath }/views/js/owl.carousel.js" ></script>
    <script src="${pageContext.request.contextPath }/views/js/jquery.customSelect.min.js" ></script>
    <script src="${pageContext.request.contextPath }/views/js/respond.min.js" ></script>

    <!--right slidebar-->
    <script src="${pageContext.request.contextPath }/views/js/slidebars.min.js"></script>

    <!--common script for all pages-->
    <script src="${pageContext.request.contextPath }/views/js/common-scripts.js"></script>

    <!--script for this page-->
    <script src="${pageContext.request.contextPath }/views/js/sparkline-chart.js"></script>
    <script src="${pageContext.request.contextPath }/views/js/easy-pie-chart.js"></script>
    <script src="${pageContext.request.contextPath }/views/js/count.js"></script>

  <script>

      //owl carousel

      $(document).ready(function() {
          $("#owl-demo").owlCarousel({
              navigation : true,
              slideSpeed : 300,
              paginationSpeed : 400,
              singleItem : true,
			  autoPlay:true

          });
      });

      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

      $(window).on("resize",function(){
          var owl = $("#owl-demo").data("owlCarousel");
          owl.reinit();
      });

  </script>

  </body>
</html>
