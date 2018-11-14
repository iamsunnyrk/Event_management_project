<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%>
<a href='index.jsp'>Log out</a>

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
<!--  <link href="//fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
--><style >
    th
    {
    text-align:center;
    }
    td
    {
    text-align:center;
    }
	#book
	{
		
		padding-top: 20px;
                padding-left: 40px;
	}
        body
        { background-color: lightblue;
        }
        
        
</style>
</head>
<body >

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
                                                        <li class="m_nav_item " id="m_nav_item_1"> <a href="success.jsp"  class="link link--kumya" style><i class="fa fa-home" aria-hidden="true"></i><span data-letters="Back">Back</span></a></li>
                                                       
                                                        <li class="m_nav_item" id="moble_nav_item_5"> <a href="index.jsp" class="link link--kumya"  style><i class="fa fa-user" aria-hidden="true"></i><span data-letters="Log Out">Log Out</span></a></li>
                                         
                                                        
                                                </ul>
                                        </nav>
                                        </div>
				</div>
			</div> 
		
	<br>
	<br><script type="text/javascript" src="js/move-top.js"></script>
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

             



	
 <% String thisUser = (String) session.getAttribute("userid");%>
 
  <% 
  try{
	
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srk","sunnyrk");  
       Statement st=con.createStatement();
       ResultSet rs4=st.executeQuery("select * from customer where username='"+thisUser+"'");
       rs4.next();
       String username=rs4.getString(2);
       int cust_id=rs4.getInt(1);
     
       %>
	<div class="banner2" style="background:url(images/book.png);">
		<div class="container-fluid" style="height:150px;">
			
			<div class="header">
				<div class="agileits_w3layouts_logo">
					<h1><a href="success.jsp"><img src="SR.jpg"  class="imageborder" ></a></h1><br>
						</div>
                        </div>


				
				<div class="clearfix"> </div>
			</div>	
		</div>
	
        <br>
        <br>
        <div class="container-fluid" style="background-color:#cf2d50;">
            <h3 class="w3layouts_head" style="margin-left:500px;"; ><span>Profile</span></h3>
         
        </div>
        <br>
        
        <div class="container">
        <div class="row">
             <h3 class="w3layouts_head" ><span style="color:black;font-size:40px;"><%=username %></span></h3>
        </div>
        <div class="row">
         <h3 class="w3layouts_head" ><span style="color:crimson;font-size:30px;">@<%=thisUser %></span></h3>
        </div>
       <br>
        <div class="container-fluid" style="background-color:#cf2d50;">
            <h3 class="w3layouts_head" style="margin-left:400px;"; ><span>Events</span></h3>
         
        </div>
        <br>
        <div class="container">
  <h1>Booked Events</h1>
            <hr>
  <table class="table table-striped">
    <thead>
      <tr>
        <th>BOOKING ID</th>
        <th>EVENT</th>
        <th>VENUE</th>
        <th>DATE</th>
        <th></th>
      </tr>
    </thead>
    <tbody>
    <%
   
  ResultSet rs5=st.executeQuery("SELECT b.book_id,e.event_name,h.h_name,s.day,s.month,s.year FROM booking b,event_type e,hall h,status s where (((( b.cust_id='"+cust_id+"' and b.status=1) and s.status_id=b.status_id) and h.h_id=s.hall_id) and b.event_id=e.event_id)");
   while(rs5.next())
   {
    %>
      <tr>
        <td><%= rs5.getInt(1)%></td>
        <td><%= rs5.getString(2)%></td>
        <td><%= rs5.getString(3)%></td>
        <td><%= rs5.getString(4)%>/<%=rs5.getString(5)%>/<%=rs5.getString(6)%></td>
        <td  style="align:center;"><a href="cancel.jsp"  style="width:150px;font-size: 15px;" class="btn btn-success" role="button"  >
                                Cancel Booking
                             </a></td>
      
      <%
      }
      %>
      
    </tbody>
  </table>
  <br>
  <br>
  <h1>Canceled Events</h1>
  
            <hr>
            <table class="table table-striped" id="cancel">
    <thead>
      <tr>
        <th>BOOKING ID</th>
        <th>EVENT</th>
        <th>VENUE</th>
        <th>DATE</th>
        <th></th>
      </tr>
    </thead>
    <tbody>
    <%
   
  ResultSet rs6=st.executeQuery("SELECT b.book_id,e.event_name,h.h_name,s.day,s.month,s.year FROM booking b,event_type e,hall h,status s where (((( b.cust_id='"+cust_id+"' and b.status=0) and s.status_id=b.status_id) and h.h_id=s.hall_id) and b.event_id=e.event_id)");
   while(rs6.next())
   {
    %>
      <tr>
        <td><%= rs6.getInt(1)%></td>
        <td><%= rs6.getString(2)%></td>
        <td><%= rs6.getString(3)%></td>
        <td><%= rs6.getString(4)%>/<%=rs6.getString(5)%>/<%=rs6.getString(6)%></td>
          </tr>
   <% }
    con.close();
     
       }
       catch(Exception e){
        e.printStackTrace();
    }
   %>
      
      
    </tbody>
  </table>
  
</div>
<br>
<br>

        <br>
        </div>
      
        </body>
        </html>
        <%
       
   

    }
%>