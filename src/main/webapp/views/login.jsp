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
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath }/views/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/views/css/style-responsive.css" rel="stylesheet" />


</head>

  <body class="login-body">

    <div class="container">

      <form class="form-signin" action="${pageContext.request.contextPath}/admin/process-login" method="post" modelAttribute="adminData">
        <h2 class="form-signin-heading">sign in now</h2>
        <div class="login-wrap">
            <input type="text" class="form-control" placeholder="Email ID" name="email" autofocus>
            <input type="password" class="form-control" placeholder="Password" name="password">
       <!--      <label class="checkbox">
                <input type="checkbox" value="remember-me"> Remember me
                <span class="pull-right">
                    <a data-toggle="modal" href="#myModal"> Forgot Password?</a>

                </span>
            </label> -->
            <button class="btn btn-lg btn-login btn-block" type="submit">Sign in</button>
            

        </div>

    

      </form>

    </div>



    <!-- js placed at the end of the document so the pages load faster -->
    <script src="${pageContext.request.contextPath }/views/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath }/views/js/bootstrap.bundle.min.js"></script>


  </body>
</html>
    