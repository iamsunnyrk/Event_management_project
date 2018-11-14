
<%@page import ="java.sql.*" %>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
alert("You are not logged in");<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%>
<a href='index.jsp'>Log out</a>
<!DOCTYPE html>
<html lang="en">
<head>
<title>S R | The Events Company</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" charset="utf-8">
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<style>
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
<!-- banner -->
<% int e_price=(Integer)session.getAttribute("eamount");%>
<% int d_price=(Integer)session.getAttribute("damount");%>
<% int h_price=(Integer)session.getAttribute("hamount");%>
<% int f_price=(Integer)session.getAttribute("famount");%>
<% int total=e_price+d_price+h_price+f_price; %>
 


	<div class="banner2" style="background:url(images/payment.jpg);">
		<div class="container-fluid" style="height:300px;">
			

			<div class="header">
				<div class="agileits_w3layouts_logo">
					<h1><a href="success.jsp"><img src="SR.jpg" width="40%" class="imageborder" ></a></h1><br>
                                </div>
				</div>
				

				
				<div class="clearfix"> </div>
			</div>	
			
		</div>
	</div>
        <br>

        <div class="container-fluid" style="background-color:#cf2d50;">
            <h3 class="w3layouts_head" ><span>Payment Form</span></h3>
         
        </div>
       
        <br>
        
         
         <div class="container" style="width:600px;background-color:#cf2d50; " >
             <form method="get" action="pay.jsp">
                 
             <div class="row" id="book">
                 <div class="col-md-5">

    
        <label> Payment By
        <span class="form-required">
            *
          </span>
        </label>
                 </div>
                 <div class="col-md-6">
                     <select class="form-dropdown form-control" name="payby" style="width:250px;" data-component="dropdown"required>
            <option value="" > Select Payment Mode </option>
            <option value="Credit Card"> Credit/Debit Card </option>
            <option value="Internet Banking"> Internet Banking </option>
          </select>
                 </div>
             </div>
                     
                 <div class="row"id="book">
                     <div class="col-md-5">
    
     
         <label>
          Card/IB No.
          <span class="form-required">
            *
          </span>
        </label>
                     </div>
                     <div class="col-md-6">
                         
                         <input type="text" name="payno" class="form-control" required="">

                     </div>
                 </div>
                 
                 
                  <div class="row"id="book"style="margin-bottom:30px;">
                     <div class="col-md-5">
                         <label > Entertainment Amount </label>
     
                     </div>
                     <div class="col-md-6"><span><b></b></span>
                         <input type="text" class="form-control"  size="20" value="<%=e_price %>" data-component="textbox" disabled="">
     
                     </div>
                 </div>
                 
                 
                  <div class="row"id="book"style="margin-bottom:30px;">
                     <div class="col-md-5">
                         <label > Decor Amount </label>
     
                     </div>
                     <div class="col-md-6">
                         <input type="text" class="form-control"  size="20" value="<%=d_price %>" data-component="textbox" disabled="">
     
                     </div>
                 </div>
                 
                 
                  <div class="row"id="book"style="margin-bottom:30px;">
                     <div class="col-md-5">
                         <label > Food Amount </label>
     
                     </div>
                     <div class="col-md-6">
                         <input type="text" class="form-control"  size="20" value="<%=f_price %>" data-component="textbox" disabled="">
     
                     </div>
                 </div>
                 
                 
                  <div class="row"id="book"style="margin-bottom:30px;">
                     <div class="col-md-5">
                         <label > Venue Amount </label>
     
                     </div>
                     <div class="col-md-6">
                         <input type="text" class="form-control"  size="20" value="<%=h_price %>" data-component="textbox" disabled="">
     
                     </div>
                 </div>
                 
                 
     
        
                 <div class="row"id="book">
                     <div class="col-md-5">
                         <label > Total Amount </label>
     
                     </div>
                     <div class="col-md-6">
                         <input type="text"  class="form-control"  size="20"  value="<%= total %>" data-component="textbox" disabled="">
     
                     </div>
                 </div>
     
                 <div class="row" style="margin-top:40px;margin-bottom:30px;" >
                     <div class="col-md-5">
                         <button  type="submit" style="margin-left:130px;width:70px;" class="btn btn-success" data-component="button">
                                Pay
                              </button>
                     </div>
                     <div class="col-md-6" >
                         <button  type="submit" style="margin-left:90px;height:35px;width:70px;"  class="btn btn-success" data-component="button">
                                Cancel
                              </button>
                     </div>
                 </div>
                
             </form>
          </div>
<br>
	<!--
		<div class="container">
			<h3 class="w3layouts_head"><span>Payment</span></h3>
			<br>
         
			


<form method="post">

			 <li class="form-line jf-required" data-type="control_textbox" id="id_5">
        <label class="form-label form-label-top form-label-auto" id="label_5" for="input_5">
          Date of Event
          <span class="form-required">
            *
          </span>
        </label>
       
          <input type="text" id="input_5" name="q5_dateOf5" data-type="input-textbox" class="form-textbox validate[required]" size="20" value="" placeholder=" " data-component="textbox" required="">
        
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_5">
        <label class="form-label form-label-top form-label-auto" id="label_6" for="input_6">
          Time of Event
          <span class="form-required">
            *
          </span>
        </label>
        
          <input type="text" id="input_6" name="q6_timeOf6" data-type="input-textbox" class="form-textbox validate[required]" size="20" value="" placeholder=" " data-component="textbox" required="">
        
      </li>
      <li class="form-line" data-type="control_dropdown" id="id_5">
        <label class="form-label form-label-top form-label-auto" id="label_8" for="input_8"> Select Artist </label>
       
          <select class="form-dropdown" id="input_8" name="q8_selectArtist" style="width:150px;" data-component="dropdown">
            <option value="">  </option>
            <option value="Corey Barksdale"> Corey Barksdale </option>
            <option value="R.O.E."> R.O.E. </option>
          </select>
       
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_5">
        <label class="form-label form-label-top" id="label_7" for="input_7">
          Description of Event
          <span class="form-required">
            *
          </span>
        </label>
       
          <input type="text" id="input_7" name="q7_descriptionOf" data-type="input-textbox" class="form-textbox validate[required]" size="90" value="" placeholder=" " data-component="textbox" required="">
       
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_5">
        <label class="form-label form-label-top form-label-auto" id="label_9" for="input_9">
          Promoter's Name
          <span class="form-required">
            *
          </span>
        </label>
     
          <input type="text" id="input_9" name="q9_promotersName" data-type="input-textbox" class="form-textbox validate[required]" size="20" value="" placeholder=" " data-component="textbox" required="">
        
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_5">
        <label class="form-label form-label-top form-label-auto" id="label_10" for="input_10">
          Venue Name &amp; Address
          <span class="form-required">
            *
          </span>
        </label>
     
          <input type="text" id="input_10" name="q10_venueName" data-type="input-textbox" class="form-textbox validate[required]" size="20" value="" placeholder=" " data-component="textbox" required="">
      
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_5">
        <label class="form-label form-label-top form-label-auto" id="label_11" for="input_11">
          Venue Capacity
          <span class="form-required">
            *
          </span>
        </label>
       
          <input type="text" id="input_11" name="q11_venueCapacity" data-type="input-textbox" class="form-textbox validate[required]" size="20" value="" placeholder=" " data-component="textbox" required="">
       
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_5">
        <label class="form-label form-label-top form-label-auto" id="label_12" for="input_12">
          Expected Attendance
          <span class="form-required">
            *
          </span>
        </label>
       
          <select class="form-dropdown" id="input_14" name="q14_typeOf" style="width:150px;" data-component="dropdown">
            <option value="">  </option>
            <option value="Solo Performance"> Solo Performance </option>
            <option value="Full Band"> Full Band </option>
          </select>
       
      </li>
      <li class="form-line jf-required" data-type="control_textbox" id="id_5">
        <label class="form-label form-label-top form-label-auto" id="label_13" for="input_13">
          Set Time (in minutes)
          <span class="form-required">
            *
          </span>
        </label>
     
          <input type="text" id="input_13" name="q13_setTime13" data-type="input-textbox" class="form-textbox validate[required]" size="20" value="" placeholder=" " data-component="textbox" required="">
       
      </li>
      <li class="form-line" data-type="control_textbox" id="id_5">
        <label class="form-label form-label-top form-label-auto" id="label_15" for="input_15"> Contact Person </label>
      
          <input type="text" id="input_15" name="q15_contactPerson" data-type="input-textbox" class="form-textbox" size="20" value="" placeholder=" " data-component="textbox">
        
      </li>
      <li class="form-line" data-type="control_textbox" id="id_5">
        <label class="form-label form-label-top form-label-auto" id="label_16" for="input_16"> Contact Email </label>
      
          <input type="text" id="input_16" name="q16_contactEmail16" data-type="input-textbox" class="form-textbox" size="20" value="" placeholder=" " data-component="textbox">
        
      </li>
      <li class="form-line" data-type="control_textbox" id="id_5">
        <label class="form-label form-label-top form-label-auto" id="label_17" for="input_17"> Contact Number </label>
     
          <input type="text" id="input_17" name="q17_contactNumber" data-type="input-textbox" class="form-textbox" size="20" value="" placeholder=" " data-component="textbox">
       
      </li>
      <li class="form-line" data-type="control_textbox" id="id_5">
        <label class="form-label form-label-top form-label-auto" id="label_18" for="input_18"> Offer Amount </label>
      
          <input type="text" id="input_18" name="q18_offerAmount" data-type="input-textbox" class="form-textbox" size="20" value="" placeholder=" " data-component="textbox">
       
      <div class="form-description" style="display: none;"><div class="form-description-arrow"></div><div class="form-description-arrow-small"></div><div class="form-description-content">Please keep in mind transportation and lodging.</div></div></li>
      <li class="form-line" data-type="control_radio" id="id_5">
        <label class="form-label form-label-top form-label-auto" id="label_19" for="input_19"> Will this event be recorded? </label>
       
          <div class="form-multiple-column" data-columncount="2" data-component="radio">
            <span class="form-radio-item">
              <span class="dragger-item">
              </span>
              <input type="radio" class="form-radio" id="input_19_0" name="q19_willThis" value="Yes">
              <label id="label_input_19_0" for="input_19_0"> Yes </label>
            </span>
            <span class="form-radio-item">
              <span class="dragger-item">
              </span>
              <input type="radio" class="form-radio" id="input_19_1" name="q19_willThis" value="No">
              <label id="label_input_19_1" for="input_19_1"> No </label>
            </span>
          </div>
        
      </li>
     
          <div style="margin-left:156px;" class="form-buttons-wrapper">
            <button id="input_2" type="submit" class="btn btn-success" data-component="button">
              Submit
            </button>
          </div>
          <br>
        
     

</div>

</form>-->
		
		
		<div class="footer" >
		<div class="container-fluid"><a href="index.jsp">
			<img src="SR.jpg"   class="imageborder"></a>
			
		
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
</body>
</html>
<%
    }
%>