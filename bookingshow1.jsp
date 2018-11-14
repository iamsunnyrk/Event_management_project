<%@ page import ="java.sql.*" %>
<html lang="en">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">  
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker.css" rel="stylesheet">  
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>  
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.js"></script> </head>
   
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>S R | The Events Company</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="keywords" content="Events Planning Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
                Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script> 
 
    
<script type="application/x-javascript" >
    addEventListener("load", function() { 
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar(){ 
        window.scrollTo(0,1);
        } 
    </script>
    </head>
<body >
<div class="container-fluid">
    <div class="row" >

    	<div class="col-md-2" style="background-color:crimson;height:100%;">
            <div class="logo" style="margin-top:20px;" >
                <a href="admin.jsp" ><img src="SR.jpg"  style="height:100px;width:150px;" > 
                    </a>
            </div>
            <ul class="nav nav-tabs">
                <li class="active">
                    <a href="admin.jsp" style="border-radius:0px;">
                      
                     <p style="font-size:15px;font-style:sans-serif;color:black;" ><B>ADMINISTRATION</B></p>
                    </a>
                </li><br>
								<li>
										<a data-toggle="tab" data-target="#show">
												
												<p style="font-size:15px;font-style:sans-serif;color:black;" ><b>SHOW BOOKINGS</b></p>
										</a>
								</li>
							      <li>
                    <a data-toggle="tab" data-target="#cust">
                      
                        <p style="font-size:15px;font-style:sans-serif;color:black;" ><b>CUSTOMERS</b></p>
                    </a>
                </li>
               
						
								
            </ul>
    	</div>
    
   
    
    <div  class="col-md-8">







<% 
int date=Integer.parseInt(request.getParameter("date"));
int month=Integer.parseInt(request.getParameter("month"));
int year=Integer.parseInt(request.getParameter("year"));

  try{
	
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srk","sunnyrk");  
       Statement st=con.createStatement();
       ResultSet rs4=st.executeQuery("select b.cust_id,b.book_id,e.event_name,h.h_name,f.food_item,enter.enter_type,d.decor_type from booking b,event_type e,hall h,food_item f,enter_item enter,decor_type d,status s,food_status fs where ((((((((s.day='"+date+"' and s.month='"+month+"' and s.year='"+year+"') and s.status_id=b.status_id)and s.hall_id=h.h_id ) and fs.fs_id=b.fs_id) and b.decor_id=d.decor_id)and b.enter_id=enter.et_id ) and fs.ft_id=f.ft_id )   and b.event_id=e.event_id)");
      
       
       
     
       %>
          <div class="container">
  <h1>Customer Information</h1>
            <hr>
  <table class="table table-striped">
    <thead>
      <tr>
        <th>CUST_ID</th>
        <th>BOOK ID</th>
        <th>EVENT</th>
        <th>VENUE</th>
        <th>FOOD ITEM</th>
        <th>ENTER TYPE</th>
        <th>DECOR TYPE</th>
        
      </tr>
    </thead>
    <tbody>
    <%
   
   while(rs4.next())
   {
    %>
      <tr >
        <td><%= rs4.getInt(1)%></td>
        <td><%= rs4.getInt(2)%></td>
        <td><%= rs4.getString(3)%></td>
        <td><%= rs4.getString(4)%></td>
        <td><%=rs4.getString(5)%></td>
        <td><%=rs4.getString(5) %></td>
        <td><%=rs4.getString(7)%></td>
        
      
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
  </div>
  </div>
  </body>
  </html>
       