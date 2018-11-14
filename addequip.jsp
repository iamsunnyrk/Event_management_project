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
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<style>
a
{
border-radius:0px;
}
label
{
margin-top:20px;
margin-left:20px;
}
input
{
margin-top:20px;
margin-left:20px;
}




body
{
	background-color: lightblue;
}


</style>
</head>
    <body>
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
                                                        <li class="m_nav_item active" id="m_nav_item_1"> <a  class="link link--kumya"><i class="fa fa-home" aria-hidden="true"></i><span data-letters="Admin Panel">Admin Panel</span></a></li>
                                                       
                                                        <li class="m_nav_item" id="moble_nav_item_5"> <a href="index.html" class="link link--kumya"  style><i class="fa fa-user" aria-hidden="true"></i><span data-letters="Log Out">Log Out</span></a></li>
                                         
                                                        
                                                </ul>
                                        </nav>
                                        </div>
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

                </div>
            </div>






<div class="container-fluid">
    <div class="row" >

    	<div class="col-md-2" style="background-color:crimson;height:100%;">
           
            <div class="logo" style="margin-top:25px;">
                <a href="admin.html" ><img src="SR.jpg"  style="height:100px;width:150px;" > 
                    </a>
            </div>
            <ul class="nav nav-tabs">
                <li>
                    <a  href="admin.html"  style="border-radius:0px;">
                      
                     <p style="font-size:15px;font-style:sans-serif;color:black;" ><B>ADMINISTRATION</B></p>
                    </a>
                </li>
								 <li class="active">
										<a data-toggle="tab" data-target="#add">
												
												<p style="font-size:15px;font-style:sans-serif;color:black;" ><b>ADD EQUIPMENTS</b></p>
										</a>
								</li>
							      <li>
                    <a data-toggle="tab" data-target="#update">
                      
                        <p style="font-size:15px;font-style:sans-serif;color:black;" ><b>UPDATE EQUIPMENTS</b></p>
                    </a>
                </li>
               
								<!--  <li>
                    <a data-toggle="tab" data-target="#cancel">
                       
                        <p style="font-size:15px;style:sans-serif;color:black;" ><b>CANCEL BOOKINGS</b></p>
                    </a>
                </li>
								<li>
										<a data-toggle="tab" data-target="#profile">
												
												<p style="font-size:15px;style:sans-serif;color:black;" ><b>PROFILE</b></p>
										</a>
								</li> -->
            </ul>
    	</div>
    
       <div class="col-md-8" style="margin-left:50px;background:crimson;">
         <div class="tab-content">

                          <div  id="add" class="tab-pane fade in active"> 
                               <jsp:include page="equipadd.html"/>
                                </div>
                                <div id="update" class="tab-pane fade">
                                <jsp:include page="equipupdate.html"/>
                                </div>
           
               </div>
               </div>
               </div>
               
               </div>
                   
                    </body>
                    </html>