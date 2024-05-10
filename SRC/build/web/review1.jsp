
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="algo.CipherHelper"%>
<%@page import="java.util.Random"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>
  <title>Fake Product</title>
  <!-- loader-->
  <link href="assets/css/pace.min.css" rel="stylesheet"/>
  <script src="assets/js/pace.min.js"></script>
  <!--favicon-->
  <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
  <!-- Vector CSS -->
  <link href="assets/plugins/vectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet"/>
  <!-- simplebar CSS-->
  <link href="assets/plugins/simplebar/css/simplebar.css" rel="stylesheet"/>
  <!-- Bootstrap core CSS-->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
  <!-- animate CSS-->
  <link href="assets/css/animate.css" rel="stylesheet" type="text/css"/>
  <!-- Icons CSS-->
  <link href="assets/css/icons.css" rel="stylesheet" type="text/css"/>
  <!-- Sidebar CSS-->
  <link href="assets/css/sidebar-menu.css" rel="stylesheet"/>
  <!-- Custom Style-->
  <link href="assets/css/app-style.css" rel="stylesheet"/>
  
</head>

<body class="bg-theme bg-theme1">
 
<!-- Start wrapper-->
 <div id="wrapper">
 
  <!--Start sidebar-wrapper-->
   <div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true">
     <div class="brand-logo">
      <a href="index.html">
       <img src="assets/images/logo-icon.png" class="logo-icon" alt="logo icon">
       <h5 class="logo-text">FakeProduct </h5>
     </a>
   </div>
   <ul class="sidebar-menu do-nicescrol">
      <li class="sidebar-header">MAIN NAVIGATION</li>
      <li>
        <a href="uhome.jsp">
          <i class="zmdi zmdi-view-dashboard"></i> <span>Home</span>
        </a>
      </li>

      <li>
        <a href="profile.jsp">
    <i class="fa fa-user" aria-hidden="true"></i> <span>Profile</span>
        </a>
      </li>

      <li>
        <a href="uproducts.jsp">
         <i class="fa fa-trash" aria-hidden="true"></i><span>View Products</span>
        </a>
      </li>


       <li>
        <a href="ureview.jsp" target="_blank">
          <i class="fa fa-star" aria-hidden="true"></i> <span>Review and Rating</span>
        </a>
      </li>
     <li>
        <a href="ufake.jsp" target="_blank">
          <i class="fa-solid fa-comments"></i><span>Fake Products  </span>
        </a>
      </li>
   
       <li>
        <a href="index.html" target="_blank">
          <i class="fa fa-sign-out" aria-hidden="true"></i> <span>Logout</span>
        </a>
      </li>
    </ul>
   
   </div>
   <!--End sidebar-wrapper-->

<!--Start topbar header-->
<header class="topbar-nav">
 <nav class="navbar navbar-expand fixed-top">
  <ul class="navbar-nav mr-auto align-items-center">
    <li class="nav-item">
      <a class="nav-link toggle-menu" href="javascript:void();">
       <i class="icon-menu menu-icon"></i>
     </a>
    </li>
 
  </ul>
     
 
</nav>
</header>
<!--End topbar header-->

<div class="clearfix"></div>
	
  <div class="content-wrapper">
    <div class="container-fluid">
<style>
    h2{
        font-size:25px;
        margin:60px;
/*        margin-left: 250px;*/
  
        text-align: center;
    }
    .bg-image{
        margin-left: 180px;
    }
</style>
<%

   
      String user=session.getAttribute("user").toString();
                   
                 Class.forName("com.mysql.jdbc.Driver");
                 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fakeproduct","root","root");
                
                      String sno=request.getParameter("sno");
                     String pid=request.getParameter("pid");
                     String pname=request.getParameter("pname");
                     String pcat=request.getParameter("pcat");
                       String pbrand=request.getParameter("pbrand");
                     String price=request.getParameter("price");
                     String spec=request.getParameter("spec");   
                 %>  
                           
      
        <h2>Give Review and Rating</h2>
<div class="col-lg-6" style=" margin-left:300px;">
        <div class="card" >
           <div class="card-body" >
           <hr>
           <form action="reaction.jsp" method="post" >
               <input type="hidden" name="price" value="<%=price%>">
               <input type="hidden" name="spec">
               <input type="hidden" name="user" value="<%=user%>">
           <div class="form-group">
            <label for="input-6">Product ID</label>
            <input type="text" class="form-control form-control-rounded" name="pid" value="<%=pid%>" readonly="">
           </div>
          
            <div class="form-group">
            <label for="input-6">Product Category</label>
            <input type="text" class="form-control form-control-rounded" name="pcat" value="<%=pcat%>" readonly="">
           </div>
          <div class="form-group">
            <label for="input-8">Product Brand</label>
            <input type="text" class="form-control form-control-rounded" name="pbrand" value="<%= pbrand%>"  required="">
           </div>
          <div class="form-group">
            <label for="input-8">Product Name</label>
            <input type="text" class="form-control form-control-rounded" name="pname" value="<%=pname%>"  required="">
           </div>
            <div class="form-group">
            <label for="input-8">Review</label>
            <input type="text" class="form-control form-control-rounded" name="review" value=""  required="">
           </div>   
              <div class="form-group">
                <label for="input-6">Rating</label>
            <select class="form-control form-control-rounded" name="rate">
            <option >Select Rating:</option>
    <option >5</option>
    <option >4</option>
    <option >3</option>
    <option >2</option>
    <option> 1</option>
                </select>
           </div>
           <div class="form-group py-2">
            
           </div>
           <div class="form-group">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <button type="submit" class="btn btn-light btn-round px-5"><i class="icon-lock"></i> Submit</button>
      
           </div>  
          </form>
         </div>
         </div>
 <div class="card mt-3">
  
 </div>  
	  
	<div class="row">
     <div class="col-12 col-lg-8 col-xl-8">
	    
	 </div>

     <div class="col-12 col-lg-4 col-xl-4">
       
     </div>
	</div>
	  

		  <div class="overlay toggle-menu"></div>

		
    </div>
  
    
    </div><!--End content-wrapper-->
   <!--Start Back To Top Button-->
    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <!--End Back To Top Button-->
	
	<!--Start footer-->
        <br>
        <br>
        <br>
        <br>
        <br>
         <br>
        <br>
        <br>
        <br>
        <br>
         <br>
        <br>
        <br>
        <br>
        <br>
         <br>
        <br>
        <br>
        <br>
        <br>
         <br>
        <br>
        <br>
        <br>
        <br>
	<footer class="footer">
      <div class="container">
        <div class="text-center">
          Copyright © 2022
        </div>
      </div>
    </footer>
	<!--End footer-->
	
  <!--start color switcher-->
   <div class="right-sidebar">
    
    <div class="right-sidebar-content">

      <p class="mb-0">Gaussion Texture</p>
      <hr>
      
      <ul class="switcher">
        <li id="theme1"></li>
        <li id="theme2"></li>
        <li id="theme3"></li>
        <li id="theme4"></li>
        <li id="theme5"></li>
        <li id="theme6"></li>
      </ul>

      <p class="mb-0">Gradient Background</p>
          <hr>
      
      <ul class="switcher">
        <li id="theme7"></li>
        <li id="theme8"></li>
        <li id="theme9"></li>
        <li id="theme10"></li>
        <li id="theme11"></li>
        <li id="theme12"></li>
		<li id="theme13"></li>
        <li id="theme14"></li>
        <li id="theme15"></li>
      </ul>
      
     </div>
   </div>
  <!--end color switcher-->
   
  </div><!--End wrapper-->

  <!-- Bootstrap core JavaScript-->
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/popper.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
	
 <!-- simplebar js -->
  <script src="assets/plugins/simplebar/js/simplebar.js"></script>
  <!-- sidebar-menu js -->
  <script src="assets/js/sidebar-menu.js"></script>
  <!-- loader scripts -->
  <script src="assets/js/jquery.loading-indicator.js"></script>
  <!-- Custom scripts -->
  <script src="assets/js/app-script.js"></script>
  <!-- Chart js -->
  
  <script src="assets/plugins/Chart.js/Chart.min.js"></script>
 
  <!-- Index js -->
  <script src="assets/js/index.js"></script>

  
</body>
</html>
