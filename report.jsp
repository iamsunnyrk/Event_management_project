<%@page import ="java.sql.*" %>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%>
Your Booking is Confirmed...Enjoy!!!
<a href='index.jsp'>Log out</a>
<% int eid=(Integer)session.getAttribute("event_id");%>
<% int h_id=(Integer)session.getAttribute("h_id");%>
<% int day=(Integer)session.getAttribute("day");%>
<% int month=(Integer)session.getAttribute("month");%>
<% int year=(Integer)session.getAttribute("year");%>
<% String user_id=(String)session.getAttribute("userid");%>

<%
   
   try{
	
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srk","sunnyrk");  
       Statement st=con.createStatement();
       ResultSet rs2=st.executeQuery("select * from status where hall_id='"+h_id+"' and day='"+day+"' and month='"+month+"' and year='"+year+"' ");
       rs2.next();
       int s_id=rs2.getInt(1);
       ResultSet rs=st.executeQuery("select * from booking where status_id='"+s_id+"'");
       rs.next();
       int book_id=rs.getInt(1);
       String book_by=rs.getString(2);
       String book_no=rs.getString(3); 
       int book_amount=rs.getInt(4);
       session.setAttribute("b_id",book_id);
       
       ResultSet rs4=st.executeQuery("select * from customer where username='"+user_id+"'");
       rs4.next();
       String username=rs4.getString(2);
       session.setAttribute("name", username);
       ResultSet rs1=st.executeQuery("select * from hall where h_id='"+h_id+"'");
       rs1.next();
       String venue=rs1.getString(2);
       int city=rs1.getInt(5);
       session.setAttribute("h_id",venue);
       ResultSet rs5=st.executeQuery("select * from city where city_id='"+city+"'");
       rs5.next();
       String c_name=rs5.getString(3);
       session.setAttribute("city",c_name);
       ResultSet rs3=st.executeQuery("select * from event_type where event_id='"+eid+"'");
       rs3.next();
       String event=rs3.getString(2);
       session.setAttribute("event_name",event);
       %>

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

body
{
	background-color: lightblue;
}

</style>
</head>

<body >

	<div class="banner2" style="background:url(images/book.png);">
		<div class="container-fluid" style="height:350px;">
			
			<div class="header">
				<div class="agileits_w3layouts_logo">
					<h1><a href="success.jsp"><img src="SR.jpg"  class="imageborder" ></a></h1><br>
						</div>
                        </div>


				
				<div class="clearfix"> </div>
			</div>	
		</div>

        <br>
	<div class="container-fluid" style="background-color:#cf2d50;">
            <h3 class="w3layouts_head" ><span>Booking Confirmation</span></h3>
         
        </div>
       
        <br>
      
      <div class="container" >
         <div class="row" id="book" >
             <div class="col">
         <h3 class="w3layouts_head" >  <span style="color:crimson;">  Congratulations <%=username%></span></h3>  
				      
             
             
             </div>
             
             
         </div>
         <div class="row">
         <div class="col">
        <h6 class="w3layouts_head" >  <span style="color:black;font-size:40px;">  Booking Confirmed!!!</span></h6>  
         </div>
         </div>
         <div class="row">
            <div class="col">
              
           <h6 class="w3layouts_head"  >  <span style="color:black;font-size:20px;">   BOOKING ID : 
          
               <%=book_id %></span></h6>
            </div>
         </div>
         <div class="row">
            <div class="col">
              
           <h6 class="w3layouts_head" >  <span style="color:black;font-size:20px;"> BOOKING NO :<%=book_no %></span></h6>
            </div>
         </div>
         <div class="row">
            <div class="col">
              
          <h6 class="w3layouts_head" >  <span style="color:black;font-size:20px;"> CASH BY :<%=book_by %></span></h6>
            </div>
         </div>
         <div class="row">
            <div class="col">
              
           <h6 class="w3layouts_head" >  <span style="color:black;font-size:20px;">TOTAL AMOUNT :<%=book_amount %></span></h6>
            </div>
         </div>
         <div class="row">
            <div class="col">
              
           <h6 class="w3layouts_head" >  <span style="color:black;font-size:20px;">DATE :<%=day %>-<%=month %>-<%=year %></span></h6>
            </div>
         </div>
         <div class="row">
            <div class="col">
              
           <h6 class="w3layouts_head" >  <span style="color:black;font-size:20px;">VENUE :<%=venue %></span></h6>
            </div>
         </div>
          <div class="row">
            <div class="col">
              
         <h6 class="w3layouts_head" >  <span style="color:black;font-size:20px;">  EVENT :<%=event %></span></h6>
            </div>
         </div>
         
         
        <div class="row" style="margin-top:40px;margin-bottom:30px;" >
                     <div class="col">
                      
                        
                             <a href="success.jsp"  style="margin-left:400px;width:400px;font-size: 20px;" class="btn btn-success" role="button"  >
                                GO BACK TO HOME PAGE
                             </a>
                         
                     </div>
                     
                 </div>
         
      </div>
         
</body>
</html>
 <%con.close();
     
       }
       catch(Exception e){
        e.printStackTrace();
    }

  
       %>
    
  
  <%   

    }
%>