<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>S R | The Events Company</title>
<script>

    
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
    </script>
</head>
<body>
<form  method="get" action="halladd1.jsp">
                                                               
                                    <div class="row">

                                        <div class="col">
                                      
					                                            <div class="form-group">
					                                                <label>STATE</label>
					                                                <select class="form-dropdown form-control" name="state" onchange="showcity(this.value)"  style="width:250px;" data-component="dropdown" required="">
														            <option value="none" > Select State </option>
														            <%
														            Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
														            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srk","sunnyrk");
														            Statement stmt=con.createStatement();
														            
														           
														            ResultSet rs9=stmt.executeQuery("select * from state ");
														            while(rs9.next()){
														            %>
														            <option value="<%=rs9.getInt("state_id")%>"><%=rs9.getString("state_name")%></option>
														            <%
														            }           
														            %>
														              
														          </select>  </div>
			                                            </div>
			                                        </div>
	                                        
                                  
                                      
									               <div class="row">
                                                       <div class="col">
				                                            <div class="form-group">
				                                                <label >CITY</label>
				                                                <select class="form-dropdown form-control"  id="city" name="city"  style="width:250px;" data-component="dropdown">
													            <option value="-1" > Select City </option>
													            <option value="">Please Select a State</option>
													            
													              
													          </select>  </div>
				                                        </div>
				                                    </div>

				                                    <div class="row">
				                                        <div class="col">
				                                            <div class="form-group">
				                                                <label>HALL NAME</label>
				                                                <input type="text" name="hall" class="form-control">
				                                                  </div>
				                                        </div>
				                                        
				                                    </div>
				                                    <div class="row">
				                                        <div class="col">
				                                            <div class="form-group">
				                                                <label>AMOUNT</label>
				                                                <input type="text" name="amount" class="form-control" placeholder=" Hall Name" required>
				                                            </div>
				                                        </div>
				                                        
				                                    </div>
				                                    <div class="row">
				                                        <div class="col">
				                                            <div class="form-group">
				                                                <label>CAPACITY</label>
				                                                <input type="text" class="form-control" name="capacity" placeholder=" Hall Name" required>
				                                            </div>
				                                        </div>
				                                        
				                                    </div>

                                 
                                    <button type="submit" class="btn btn-success"   style="margin-left:20px;">Add Hall</button>
                                 
                                    <div class="clearfix"></div>
                                   

                                    </form>

</body>
</html>