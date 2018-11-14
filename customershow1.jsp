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
                    <a data-toggle="tab" data-target="#admin" style="border-radius:0px;">
                      
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
int cust=Integer.parseInt(request.getParameter("cust"));
  try{
	
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srk","sunnyrk");  
       Statement st=con.createStatement();
       ResultSet rs4=st.executeQuery("select * from customer where cust_id='"+cust+"'");
      
       
       
     
       %>
          <div class="container">
  <h1>Customer Information</h1>
            <hr>
  <table class="table table-striped">
    <thead>
      <tr>
        <th>CUST_ID</th>
        <th>NAME</th>
        <th>CITY</th>
        <th>MOBILE</th>
        <th>EMAIL</th>
        <th>USERNAME</th>
      </tr>
    </thead>
    <tbody>
    <%
   
   while(rs4.next())
   {
    %>
      <tr >
        <td><%= rs4.getInt(1)%></td>
        <td><%= rs4.getString(2)%></td>
        <td><%= rs4.getString(3)%></td>
        <td><%= rs4.getString(4)%></td>
        <td><%=rs4.getString(5)%></td>
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
       