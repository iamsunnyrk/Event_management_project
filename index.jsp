<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<% session.invalidate(); %>
<html lang="en">
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>S R | The Events Company</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="keywords" content="Events Planning Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
                Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
    addEventListener("load", function() { 
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar(){ 
        window.scrollTo(0,1);
        } 
</script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<link href="css/font-awesome.css" rel="stylesheet"> 
<link href="//fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<style >
#call
{
	text-align: left;
}
body
{
	background-color: lightblue;
}
#btn1:hover {
    background-color:#cf2d50;
    opacity: 1;
}
#btn1 {
    position: absolute;
    top: 50%;
    left: 50%;
    font-family: serif;
    transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    background-color:grey;
    color: white;
    font-size: 25px;
    padding: 12px 24px;
    border: none;
    cursor: pointer;
    border-radius: 5px;
    text-align: center;
    opacity: 0.7;
}
</style>
</head>
    <body>
	<div class="banner">
		<div class="container-fluid">
			<div class="w3_agile_menu">
				<div class="agileits_w3layouts_nav">
					<div id="toggle_m_nav">
						<div id="m_nav_menu" class="m_nav">
							<div class="m_nav_ham w3_agileits_ham" id="m_ham_1"></div>
							<div class="m_nav_ham" id="m_ham_2"></div>
							<div class="m_nav_ham" id="m_ham_3"></div>
						</div>
					</div>
					<div id="m_nav_container" class="m_nav wthree_bg">
                                        <nav class="menu menu--sebastian">
                                                <ul id="m_nav_list" class="m_nav menu__list">
                                                        <li class="m_nav_item active" id="m_nav_item_1"> <a href="index.html" class="link link--kumya"><i class="fa fa-home" aria-hidden="true"></i><span data-letters="Home">Home</span></a></li>
                                                        <li class="m_nav_item" id="moble_nav_item_2"> <a href="#event" class="link link--kumya"><i class="fa fa-calendar-check-o" aria-hidden="true"></i><span data-letters="Events">Events</span></a></li>
                                                        <li class="m_nav_item" id="moble_nav_item_3"> <a href="about.jsp" class="link link--kumya"><i class="fa fa-info-circle" aria-hidden="true"></i><span data-letters="About Us">About Us</span></a></li>
                                                       <!-- <li class="m_nav_item" id="moble_nav_item_6"> <a href="#contactus" class="link link--kumya" data-toggle="modal" style><i class="fa fa-envelope-o" aria-hidden="true"></i><span data-letters="Contact Us" >Contact Us</span></a></li>
                                                       -->
                                                        <li class="m_nav_item" id="moble_nav_item_5"> <a href="#admin" class="link link--kumya" data-toggle="modal" style><i class="fa fa-user" aria-hidden="true"></i><span data-letters="Login">Admin</span></a></li>
                                                       
                                                       <li class="m_nav_item" id="moble_nav_item_5"> <a href="#signin" class="link link--kumya" data-toggle="modal" style><i class="fa fa-user" aria-hidden="true"></i><span data-letters="Sign in">Sign in</span></a></li>
                                                        
                                                        <li class="m_nav_item" id="moble_nav_item_5"> <a href="#signup" class="link link--kumya" data-toggle="modal" style><i class="fa fa-user" aria-hidden="true"></i><span data-letters="Sign up">Sign up </span></a></li>
                                         
                                                        
                                                </ul>
                                        </nav>
                                        </div>
				</div>
			</div> 
		<!--  <div class="header">
		<div class="agileits_w3layouts_logo">
		<h1><a href="index.html"><img src="SR.jpg"  class="imageborder" > </a></h1> -->
					
				 <!-- </div>
				< </div> 
				<div class="clearfix"> </div>-->
			
			  
			</div>
		
  
  <div  class="carousel slide" data-ride="carousel"  >
   

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="images/event2.jpg" alt="Los Angeles" style="height:600px;width:100%;">
        <div class="carousel-caption">
          <h1>S R | The Events Planner</h1>
          <p>Lets Professionals Run Your Event</p>
        </div>
      </div>
      
      <div class="item">
        <img src="images/event8.jpg" alt="Los Angeles" style="height:600px;width:100%">
        <div class="carousel-caption">
          <h1>S R | The Events Planner</h1>
          <p>Lets Professionals Run Your Event</p>
        </div>
      </div>
      
     

      <div class="item">
        <img src="images/event3.jpg" alt="Chicago" style="height:600px;width:100%;">
        <div class="carousel-caption">
          <h1>Sunny RK</h1>
          <p>Lets Professionals Run Your Event</p>
        </div>
      </div>
    
     
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
     
    </ol>
  </div>
</div>

			
			
			
			
			
	<div class="banner-bottom">
		<div class="container" id="event">
			<h3 class="w3layouts_head" style="font-size: 40px;">Welcome to our <span>Events</span></h3>
			<div class="w3ls_banner_bottom_grids">
				<div class="col-md-4 agileits_banner_bottom_grid_left">
					<a href="#birth"><div class="agileinfo_banner_bottom_grid_l_grid">
						<i class="fa fa-birthday-cake" aria-hidden="true"></i>
					</div></a>
					<h4 style="font-size: 35px;">Birthdays</h4>
				</div>
				<div class="col-md-4 agileits_banner_bottom_grid_left">
					<a href="#wed"><div class="agileinfo_banner_bottom_grid_l_grid">
						<i class="fa fa-heart-o" aria-hidden="true"></i>
					</div></a>
					<h4 style="font-size: 35px;">Weddings</h4>
				</div>
				<div class="col-md-4 agileits_banner_bottom_grid_left">
					<a href="#other"><div class="agileinfo_banner_bottom_grid_l_grid">
						<i class="fa fa-snowflake-o" aria-hidden="true"></i>
					</div></a>
					<h4 style="font-size: 35px;">Others</h4>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
   <div class="container">
				<div class="quicklinks-agile-info-top" id="birth">
					<div class="col-md-6 agile-info-top-left">
						<div class="w3agile_special_deals_grid_left_grid">
							<img src="images/2.jpg" class="img-responsive" alt=""><a href="#signin"  data-toggle="modal" style><i class="fa fa-user" aria-hidden="true"></i>
							<button class="btn" id="btn1">BOOK</button></a>
						</div>
					</div>
					<div class="col-md-6 agile-info-top-right">
						<h4 style="font-size: 45px;color: yellow;">Birthday Parties</h4>
							<li><i class="fa fa-arrow-right" aria-hidden="true"></i><font style="color: white;font-size: 30px;" >Party Locations</font></li>
							<li><i class="fa fa-arrow-right" aria-hidden="true"></i><font style="color: white;font-size: 30px;" >Catering & Food</font>></li>
							<li><i class="fa fa-arrow-right" aria-hidden="true"></i><font style="color: white;font-size: 30px;" >Music & Entertainment</font>></li>
							<li><i class="fa fa-arrow-right" aria-hidden="true"></i><font style="color: white;font-size: 30px;" >Balloons & Flowers Decoration</font>></li>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="quicklinks-agile-info-top" id="wed">
					<div class="col-md-6 agile-info-top-right ece">
							<h4 style="font-size: 45px;color: yellow;">Wedding Parties</h4>
								<li><i class="fa fa-arrow-right" aria-hidden="true"></i><font style="color: white;font-size: 30px;" >Catering & Food</font></li>
								<li><i class="fa fa-arrow-right" aria-hidden="true"></i><font style="color: white;font-size: 30px;" >Music & Entertainment</font></li>
								<li><i class="fa fa-arrow-right" aria-hidden="true"></i><font style="color: white;font-size: 30px;" >Ceremony Locations</font></li>
								<li><i class="fa fa-arrow-right" aria-hidden="true"></i><font style="color: white;font-size: 30px;" >Balloons & Flowers Decoration</font></li>
					</div>
					<div class="col-md-6 agile-info-top-left">
						<div class="w3agile_special_deals_grid_left_grid">
							<img src="images/1.jpg" class="img-responsive" alt="">
							<a href="#signin"  data-toggle="modal" style><i class="fa fa-user" aria-hidden="true"></i>
							<button class="btn" id="btn1">BOOK</button></a>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="quicklinks-agile-info-top" id="other">
					<div class="col-md-6 agile-info-top-left">
						<div class="w3agile_special_deals_grid_left_grid">
							<img src="images/9.jpg" class="img-responsive" alt="">
							<a href="#signin"  data-toggle="modal" style><i class="fa fa-user" aria-hidden="true"></i>
							<button class="btn" id="btn1">BOOK</button></a>
						</div>
					</div>
					<div class="col-md-6 agile-info-top-right">
						<h4 style="font-size: 45px;color: yellow;">Other Events</h4>
							<li><i class="fa fa-arrow-right" aria-hidden="true"></i><font style="color: white;font-size: 30px;" >Locations & Venues</font></li>
							<li><i class="fa fa-arrow-right" aria-hidden="true"></i><font style="color: white;font-size: 30px;" >Catering & Food</font></li>
							<li><i class="fa fa-arrow-right" aria-hidden="true"></i><font style="color: white;font-size: 30px;" >Music & Entertainment</font></li>
							<li><i class="fa fa-arrow-right" aria-hidden="true"></i><font style="color: white;font-size: 30px;" >Decoration</font></li>
					</div>	
					<div class="clearfix"> </div>
				</div>
		</div>
	<br>
	<br>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
	<script type="text/javascript" src="js/main.js"></script>
	<script src="js/bootstrap.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {		
			$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
<!--<div id="contactus" class="modal fade" role="dialog">
                <div class="modal-dialog" >
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Enquiry</h4>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group" >
                                    <label class="control-label" for="user" style="padding-left: 20px;">
                                        Enter Name
                                    </label>
                                    <div class="input-group" style="padding: 5px 20px 5px 20px; " >
                                        <div class="input-group-addon">
                                            <span class="glyphicon glyphicon-user"></span>
                                        </div>
                                        <input class="form-control" id="username" name="username" type="text" required/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label style="padding-left: 20px;">

                                        Enter Email
                                    </label>
                                    <div class="input-group" style="padding: 5px 20px 5px 20px; ">
                                        <div class="input-group-addon">
                                            <span class="glyphicon glyphicon-envelope"></span>
                                        </div>
                                        <input class="form-control" id="username" name="username" type="email" required/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label style="padding-left: 20px;">

                                        Enter Phone No.
                                    </label>
                                    <div class="input-group" style="padding: 5px 20px 5px 20px; ">
                                        <div class="input-group-addon">
                                            <span class="glyphicon glyphicon-earphone"></span>
                                        </div>
                                        <input class="form-control" id="username" name="username" type="text" required/>
                                    </div>
                                </div>

                                <div class="form-group" >
                                    <label style="padding-left: 20px;">

                                        Enter Comments
                                    </label>
                                    <div class="input-group" style="padding: 5px 20px 5px 20px; ">
                                        <div class="input-group-addon">
                                            <span class="glyphicon glyphicon-comment"></span>
                                        </div>
                                        <textarea   class="form-control" id="username" name="username"  required ></textarea>
                                    </div>
                                </div>


                                <button type="submit" class="btn btn-success btn-block">Submit</button>

                            </form>

                        </div>

                        <div class="modal-footer">
                      <label id="call" >Call us:9893117553</label>
                        </div>

                    </div>

                </div>
            </div>-->
            <div class="footer">
		<div class="container-fluid"><a href="index.jsp">
			<img src="SR.jpg" class="imageborder"></a>
			
				<div class="agileits_w3three_nav_right">
					<ul class="agileits_social_list">
						<li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						<li><a href="#" class="agile_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
						<li><a href="#" class="w3_agile_youtube"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
						<li><a href="#" class="w3_agile_instagram"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			
			
		</div>
	</div>
<div class="footer_bar  ppb_wrapper " style="background-color: #cf2d50;">

                <div class="footer_bar_wrapper " >
                    <div ><b><font style="color: white;">� Copyright S R The Events Company</font></b></div><br class="clear" />
                    <a id="toTop" href="javascript:;"><i class="fa fa-angle-up"></i></a>
                </div>
            </div>
      
            <div id="admin" class="modal fade" >
                <div class="modal-dialog" >
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Login</h4>
                        </div>
                        <div class="modal-body">
                            <form action="one.jsp" method="post">
                                <div class="form-group" >
                                    <label class="control-label" for="user" style="padding-left: 20px;">
                                        Username
                                    </label>
                                    <div class="input-group" style="padding: 5px 20px 5px 20px; " >
                                        <div class="input-group-addon">
                                            <span class="glyphicon glyphicon-user"></span>
                                        </div>
                                        <input class="form-control" id="username" name="user" type="text" required/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label style="padding-left: 20px;">

                                        Password
                                    </label>
                                    <div class="input-group" style="padding: 5px 20px 5px 20px; ">
                                        <div class="input-group-addon">
                                            <span class="glyphicon glyphicon-envelope"></span>
                                        </div>
                                        <input class="form-control" id="password" name="pass" type="password" required/>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-success btn-block">Submit</button>

                            </form>

                        </div>
                        
                    </div>

                </div>
            </div>
             <div id="signin" class="modal fade" >
                <div class="modal-dialog" >
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Login</h4>
                        </div>
                        <div class="modal-body">
                            <form action="two.jsp" method="post">
                                <div class="form-group" >
                                    <label class="control-label" for="user" style="padding-left: 20px;">
                                        Username
                                    </label>
                                    <div class="input-group" style="padding: 5px 20px 5px 20px; " >
                                        <div class="input-group-addon">
                                            <span class="glyphicon glyphicon-user"></span>
                                        </div>
                                        <input class="form-control" id="username" name="user" type="text" required/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label style="padding-left: 20px;">

                                        Password
                                    </label>
                                    <div class="input-group" style="padding: 5px 20px 5px 20px; ">
                                        <div class="input-group-addon">
                                            <span class="glyphicon glyphicon-envelope"></span>
                                        </div>
                                        <input class="form-control" id="password" name="pass" type="password" required/>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-success btn-block">Submit</button>

                            </form>

                        </div>
                        <div class="modal-footer">
                        	Create a new account... <a href="#signup" class="link link--kumya" data-toggle="modal"><button type="submit" class="btn btn-success" >Sign Up</button></a>
                        </div>
                    </div>

                </div>
            </div>
            
            <div id="signup" class="modal fade" role="dialog">
                <div class="modal-dialog" >
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Sign Up</h4>
                        </div>
                        <div class="modal-body">
                            <form action="register.jsp" method="post">
                            	<div class="form-group" >
                                    <label class="control-label" for="user" style="padding-left: 20px;">
                                       Full Name
                                    </label>
                                    <div class="input-group" style="padding: 5px 20px 5px 20px; " >
                                        <div class="input-group-addon">
                                           <span class="glyphicon glyphicon-user"></span>
                                        </div>
                                        <input class="form-control" id="name" name="name" type="text" required/>
                                    </div>
                                </div>
                                <div class="form-group" >
                                    <label class="control-label" for="user" style="padding-left: 20px;">
                                       Username
                                    </label>
                                    <div class="input-group" style="padding: 5px 20px 5px 20px; " >
                                        <div class="input-group-addon">
                                           <span class="glyphicon glyphicon-user"></span>
                                        </div>
                                        <input class="form-control" id="name" name="user" type="text" required/>
                                    </div>
                                </div>
                                <div class="form-group" >
                                    <label class="control-label" for="user" style="padding-left: 20px;">
                                        password
                                    </label>
                                    <div class="input-group" style="padding: 5px 20px 5px 20px; " >
                                        <div class="input-group-addon">
                                           <span class="glyphicon glyphicon-lock"></span>
                                        </div>
                                        <input class="form-control" id="name" name="pass" type="password" required/>
                                    </div>
                                </div>

                                <div class="form-group" >
                                    <label class="control-label" for="user" style="padding-left: 20px;">
                                        Email Id
                                    </label>
                                    <div class="input-group" style="padding: 5px 20px 5px 20px; " >
                                        <div class="input-group-addon">
                                            <span class="glyphicon glyphicon-envelope"></span>
                                        </div>
                                        <input class="form-control" id="username" name="email" type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label style="padding-left: 20px;">

                                        Mobile No.
                                    </label>
                                    <div class="input-group" style="padding: 5px 20px 5px 20px; ">
                                        <div class="input-group-addon">
                                            <span class="glyphicon glyphicon-earphone"></span>
                                        </div>
                                        <input class="form-control" id="mobile" name="mobile" type="number" required/>
                                    </div>
                                </div>
                                <div class="form-group" >
                                    <label class="control-label" for="user" style="padding-left: 20px;">
                                       City
                                    </label>
                                    <div class="input-group" style="padding: 5px 20px 5px 20px; " >
                                        <div class="input-group-addon">
                                           <span class="glyphicon glyphicon-globe"></span>
                                        </div>
                                        <input class="form-control" id="city" name="city" type="text" required/>
                                    </div>
                                </div>
                               
                                <button type="submit" class="btn btn-success btn-block">Submit</button>

                            </form>

                        </div>
                        <div class="modal-footer">
                        </div>
                    </div>

                </div>
            </div>

</body>
</html>
