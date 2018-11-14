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
    
        
   <!--  <script type="text/javascript">
    $(function () {
        $("#foodtype").click(function () {
            if ($(this).is(":checked")) {
                $("#showfoodtype").show();
            } else {
                $("#showfoodtype").hide();
            }
        });
    });
</script>-->
<!-- <script type="text/javascript">
    $(function () {
        $("#foodtype1").click(function () {
            if ($(this).is(":checked")) {
                $("#showfoodtype1").show();
            } else {
                $("#showfoodtype1").hide();
            }
        });
    });
</script>-->
    <!-- <script>
            $(document).ready(function(){
                 $("#venue").change(function(){
                     var value = $(this).val();
                     $.get("capacity.jsp",{q:value},function(capacity){
                      $("#capacity").html(capacity);
                     });
                 });
             });
        </script>-->
        
    
    
    
    <script language="javascript" type="text/javascript">
    var xmlHttp;  
    function showcity(str)  
    {  
      if(typeof XMLHttpRequest !=="undefined") {
    	  xmlHttp=new XMLHttpRequest();
      }
      else if (window.ActiveXobject) {
    	  xmlHttp=new ActiveXobject("Microsoft.XMLHTTP");
      }
      if(xmlHttp===null)
    	  {
    	  alert("Browser does not support XMLHTTP Request");
    	  return;
    	  }
      var url="city.jsp";
      url+="?count="+str;
      xmlHttp.onreadystatechange =cityChange;
      xmlHttp.open("GET",url,true);
      xmlHttp.send(null);
    }
    function cityChange(){
    	if(xmlHttp.readyState===4||xmlHttp.readyState==="complete") {
    		document.getElementById("city").innerHTML=xmlHttp.responseText;
    	}
    }
    
   
   
   
    function showCapacity(str)
    {
    	
    var xmlhttp;   
    if (str=="")
      {
      document.getElementById("txtHint").innerHTML="";
      return;
      }
    if (window.XMLHttpRequest)
      {// code for IE7+, Firefox, Chrome, Opera, Safari
      xmlhttp=new XMLHttpRequest();
      }
    else
      {// code for IE6, IE5
      xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
      }
    xmlhttp.onreadystatechange=function()
      {
      if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        document.getElementById("capacity").innerHTML=xmlhttp.responseText;
       
        
       
        }
      }
    xmlhttp.open("GET","capacity.jsp?q="+str,true);
    xmlhttp.send();
    }
    
    
    function showprice(str)
    {
    var xmlhttp;   
    if (str=="")
      {
      document.getElementById("txtHint").innerHTML="";
      return;
      }
    if (window.XMLHttpRequest)
      {// code for IE7+, Firefox, Chrome, Opera, Safari
      xmlhttp=new XMLHttpRequest();
      }
    else
      {// code for IE6, IE5
      xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
      }
    xmlhttp.onreadystatechange=function()
      {
      if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        document.getElementById("plateprice").innerHTML=xmlhttp.responseText;
       
        
       
        }
      }
    xmlhttp.open("GET","foodprice.jsp?q="+str,true);
    xmlhttp.send();
    }
    
    
    
    function decoramount(str)
    {
    var xmlhttp;   
    if (str=="")
      {
      document.getElementById("txtHint").innerHTML="";
      return;
      }
    if (window.XMLHttpRequest)
      {// code for IE7+, Firefox, Chrome, Opera, Safari
      xmlhttp=new XMLHttpRequest();
      }
    else
      {// code for IE6, IE5
      xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
      }
    xmlhttp.onreadystatechange=function()
      {
      if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        document.getElementById("decorprice").innerHTML=xmlhttp.responseText;
       
        
       
        }
      }
    xmlhttp.open("GET","dprice.jsp?q="+str,true);
    xmlhttp.send();
    }
    
    
    function enteramount(str)
    {
    var xmlhttp;   
    if (str=="")
      {
      document.getElementById("txtHint").innerHTML="";
      return;
      }
    if (window.XMLHttpRequest)
      {// code for IE7+, Firefox, Chrome, Opera, Safari
      xmlhttp=new XMLHttpRequest();
      }
    else
      {// code for IE6, IE5
      xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
      }
    xmlhttp.onreadystatechange=function()
      {
      if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        document.getElementById("enterprice").innerHTML=xmlhttp.responseText;
       
        
       
        }
      }
    xmlhttp.open("GET","eprice.jsp?q="+str,true);
    xmlhttp.send();
    }
    
    
    function showvenue(str)  
    {  
      if(typeof XMLHttpRequest !=="undefined") {
    	  xmlHttp=new XMLHttpRequest();
      }
      else if (window.ActiveXobject) {
    	  xmlHttp=new ActiveXobject("Microsoft.XMLHTTP");
      }
      if(xmlHttp===null)
    	  {
    	  alert("Browser does not support XMLHTTP Request");
    	  return;
    	  }
      var url="venue.jsp";
      url+="?count="+str;
      xmlHttp.onreadystatechange =venueChange;
      xmlHttp.open("GET",url,true);
      xmlHttp.send(null);
    }
    function venueChange(){
    	if(xmlHttp.readyState===4||xmlHttp.readyState==="complete") {
    		document.getElementById("venue").innerHTML=xmlHttp.responseText;
    		
    	}
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
<style >
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
<% String thisUser = (String) session.getAttribute("userid");%>
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
	</div>
        <br>
	<div class="container-fluid" style="background-color:#cf2d50;">
            <h3 class="w3layouts_head" style="margin-left:500px;" ><span>Booking Form</span></h3>
         
        </div>
       
        <br>
        
         
         <div class="container" style="width:600px;background-color:#cf2d50; " >
             <form method="get" action="booking.jsp" name="booking" >
              <div class="row" id="book">
                 <div class="col-md-5">

    
        <label> Event Category
        <span class="form-required">
            *
          </span>
        </label>
                 </div>
                 <div class="col-md-6">
                    
          <select class="form-dropdown form-control" name="category"   style="width:250px;" data-component="dropdown" required="">
            <option value="none" > Select Category </option>
            <%
            Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srk","sunnyrk");
            Statement stmt=con.createStatement();
            
           
            ResultSet rs9=stmt.executeQuery("select * from event_type ");
            while(rs9.next()){
            %>
            <option value="<%=rs9.getInt("event_id")%>"><%=rs9.getString("event_name")%></option>
            <%
            }           
            %>
              
          </select>
                 </div>
             </div>
                     
                 <div class="row"id="book">
                     <div class="col-md-5">
    
     
         <label>
          Event Date
          <span class="form-required">
            *
          </span>
        </label>
                     </div>
                     <div class="col-md-6" >
                
                         
                       <input  type="text" placeholder="      DD"  name="day" style="width:32%;height:35px;border-radius:5px;"  required>
                       <input  type="text"  placeholder="     MM"  name="month" style="width:32%;height:35px;border-radius:5px;"  required>
                       <input  type="text" placeholder="    YYYY" name="year"  style="width:32%;height:35px;border-radius:5px;" required>
                     
       

                     </div>
                 </div>
                 
                 <div class="row"id="book">
                     <div class="col-md-5">
    
        <label >
          Event State
          <span class="form-required">
            *
          </span>
        </label>
                     </div>
                     <div class="col-md-6">
                         <select class="form-dropdown form-control"  id="state" name="state" onchange="showcity(this.value)" style="width:250px;" data-component="dropdown" required="">
            <option value="none" > Select State </option>
            <%
           
            ResultSet rs=stmt.executeQuery("select * from state ");
            while(rs.next()){
            %>
            <option value="<%=rs.getString("state_id")%>"><%=rs.getString("state_name")%></option>
            <%
            }           
            %>
              
          </select>
                     </div>
                     </div>
                     
                     
                     <div class="row"id="book">
                     <div class="col-md-5">
    
        <label >
          Event Place
          <span class="form-required">
            *
          </span>
        </label>
                     </div>
                     <div class="col-md-6">
                         <select class="form-dropdown form-control"  id="city" name="city" onchange="showvenue(this.value)" style="width:250px;" data-component="dropdown">
            <option value="-1" > Select City </option>
            <option value="">Please Select a State</option>
            
              
          </select>
                     </div>
                     </div>
              
              
                 <div class="row"id="book">
                     <div class="col-md-5">
                         <label >
                            Venue 
                            <span class="form-required">
                              *
                            </span>
                          </label> 
                     </div>
                     <div class="col-md-6">
                         <select class="form-dropdown form-control" id="venue" name="venue" onchange="showCapacity(this.value) "   style="width:250px;" data-component="dropdown" required>
            <option  value="-1" > Select Venue </option>
            <option  value="">Please Select a State</option>
            
          </select>
                     </div>
                 </div>
              
                 <div class="container" id="capacity">
              
                 </div>
                 
                 
                 
                 
                 
           <!--    <div class="row" id="book">
                     <div class="col-md-5">
                         <label  >Food Type
                             <span>*</span>
                         </label>
                     </div>
                     <div class="col-md-6">
                        <label class="checkbox-inline" for="foodtype">
                            <input type="checkbox" id="foodtype"  ><b>Veg</b></label>
                            <label class="checkbox-inline" for="foodtype1">
                                <input type="checkbox" id="foodtype1"  ><b>Non-Veg</b></label>
                        
                     </div>
                 </div>-->
                 
               
               <div class="row"id="book">
                     <div class="col-md-5">
                         <label >
                                Food Item(veg/Non-Veg)
                               
                              </label>
                     </div>
                     <div class="col-md-6">
                         <select class="form-dropdown form-control"  id="veg" name="food_item" onchange="showprice(this.value)"  style="width:250px;" data-component="dropdown" required="">
            <option value="none" > Select Food Items </option>
            <%
            
           
             rs=stmt.executeQuery("select * from food_item ");
            while(rs.next()){
            %>
            <option value="<%=rs.getInt("ft_id")%>"><%=rs.getString("food_item")%></option>
            <%
            }           
            %>
              
          </select>
                     </div>
                
               
            </div>
                            
            <div class="container" id="plateprice">
              
                 </div>
                 
            
            <!--      <div class="container" id="showfoodtype1" style="width:500px;margin-left:10px;display:none">
                 <div class="row" id="book">
                     <div class="col-md-5">
                    
                         <label> Food Item(Non-Veg) </label>
                           
                     </div>
                     <div class="col-md-6" >
                 <input id="nv" type="text" class=" form-control" size="20"    disabled >
    
                     </div>
                 </div>
                 </div>
                 -->
                 
                 
                 
                
                 
                          <div class="row"id="book">
                     <div class="col-md-5">
                         <label  >
       No. of Plates
          <span class="form-required">
            *
          </span>
        </label>
                     </div>
                     <div class="col-md-6">
                         <input type="text" name="txt" class="txt form-textbox form-control" size="20"  data-component="textbox" required>
        
                     </div>
                 </div>
                 
    <div class="row" id="book">
                     <div class="col-md-5">
                         <label  >
       Food Amount
          
        </label>
                     </div>
                     <div class="col-md-6"><span id="sum"><b>0</b></span>
                        <!--   <input type="text" id="sum" class="form-textbox form-control" size="20" value="from database" data-component="textbox" disabled="">
        -->
                     </div>
                 </div>
                
                  <div class="row" id="book">
                     <div class="col-md-5">
                         <label>Decoration Type
                             <span>*</span>
                         </label>
                     </div>
                     <div class="col-md-6">
                       <select class="form-dropdown form-control"  id="veg" name="decor" onchange="decoramount(this.value)"  style="width:250px;" data-component="dropdown" required="">
            <option value="none" > Select Decor's Type </option>
            <%
            
           
             rs=stmt.executeQuery("select * from decor_type ");
            while(rs.next()){
            %>
            <option value="<%=rs.getInt("decor_id")%>"><%=rs.getString("decor_type")%></option>
            <%
            }           
            %>
              
          </select>
                        
                     </div>
                 </div>
                 
                  <div class="container" id="decorprice">
              
                 </div>
                 
                <!--  <div class="row"id="book">
                     <div class="col-md-5">
                         <label  >
       Decoration Amount
          
        </label>
                     </div>
                     <div class="col-md-6">
                         <input type="text"  class="form-textbox form-control" size="20" value="from database" data-component="textbox" disabled="">
        
                     </div>
                 </div>-->
                  <div class="row" id="book">
                     <div class="col-md-5">
                         <label>Entertainment Type
                             <span>*</span>
                         </label>
                     </div>
                     <div class="col-md-6">
                         <select class="form-dropdown form-control"  id="veg" name="enter" onchange="enteramount(this.value)"  style="width:250px;" data-component="dropdown" required="">
            <option value="none" > Select Entertainment Type </option>
            <%
            
           
             rs=stmt.executeQuery("select * from enter_item ");
            while(rs.next()){
            %>
            <option value="<%=rs.getInt("et_id")%>"><%=rs.getString("enter_type")%></option>
            <%
            }           
            %>
              
          </select>
                        
                     </div>
                 </div>
                 
                 <div class="container" id="enterprice">
              
                 </div>
                 
             <!--     <div class="row"id="book">
                     <div class="col-md-5">
                         <label  >
       Entertainment Amount
          
        </label>
                     </div>
                     <div class="col-md-6">
                         <input type="text"  class="form-textbox form-control" size="20" value="from database" data-component="textbox" disabled="">
        
                     </div>
                 </div>
                 -->
                
            
                 <div class="row" style="margin-top:40px;margin-bottom:30px;" >
                     <div class="col-md-5">
                      
                        
                             <button  type="submit" style="margin-left:130px;width:80px;font-size: 20px;" class="btn btn-success" data-component="button"  >
                                Book
                             </button>
                         
                     </div>
                     <div class="col-md-6" >
                         <button   type="button" style="margin-left:90px;width:80px;font-size: 20px;"  class="btn btn-success" data-component="button">
                                Cancel
                              </button>
                     </div>
                 </div>
       
             </form>
        </div>
                
            
<br>

		<div class="footer" >
		<div class="container-fluid"><a href="index.jsp">
			<img src="SR.jpg"  class="imageborder"></a>
			
			
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
                    <div ><b><font style="color: white;">© Copyright S R The Events Company</font></b></div><br class="clear" />
                    <a id="toTop" href="javascript:;"><i class="fa fa-angle-up"></i></a>
                </div>
            </div>
            </div>
            <script>
	$(document).ready(function(){

		
		$(".txt").each(function() {

			$(this).keyup(function(){
				calculateSum();
			});
		});

	});

	function calculateSum() {

		var sum = 1;
		//iterate through each textboxes and add the values
		$(".txt").each(function() {

			//add only if the value is number
			if(!isNaN(this.value) && this.value.length!=0) {
				sum *=parseFloat(this.value);
			}

		});
		//.toFixed() method will roundoff the final sum to 2 decimal places
		$("#sum").html(sum.toFixed(2));
	}
</script>
    
    
            
           

</body>

</html>
<%
    }
%>