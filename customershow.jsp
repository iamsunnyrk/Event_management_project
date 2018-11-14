<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>S R | The Events Company</title>

</head>
<script>

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
xmlhttp.open("GET","cust.jsp?q="+str,true);
xmlhttp.send();
}

</script>
<body>
 
<form action="customershow1.jsp" method="get">
                                                               
                                    <div class="row">

                                        <div class="col">
                                            
					                                            <div class="form-group">
					                                                <label>CUST ID</label> :
					                                                <input type="text" name="cust" class="form-control" placeholder="Cust_id" required>
					                                                 </div>
			                                            </div>
			                                        </div>
	                                        
                                  
                                      
				                                 
                                      
				                                    
				                                  
                                
                                 
                                    <button type="submit" class="btn btn-success" onclick="show()"   style="margin-left:20px;">Show</button>
                                 </a>
                                    <div class="clearfix"></div>
                                   

                                    </form>
                                   
                                    
                           <div class="container" id="capacity">
              
                 </div>
                           
                                    
                         
               
               
               
               
               
               
                                    
                                 
</body>
</html>