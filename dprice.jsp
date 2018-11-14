<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%

try{
    
    String eid=request.getParameter("q");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srk","sunnyrk");
    PreparedStatement pstmt=con.prepareStatement("select * from decor_type where decor_id=?");
    pstmt.setString(1,eid);
    ResultSet rs=pstmt.executeQuery();
    if(rs.next()){
       
    
    	   %>
    	   <div class="container" style="width:500px;margin-left:10px;" >
    	    <div class="row"id="book">
                     <div class="col-md-5">
                         <label >
                                Decor Price
                               
                              </label>
                     </div>
                     <div class="col-md-6"  div id="div1">
                   
                 <input id="capacity" name="txt"  type="text" class="txt form-control" value="<%=rs.getString(3)%>" size="20" disabled>
                </div>
                 
                 
                 </div>
                 </div>
        
       
                 
        
        
    	  
       <%
       }
    
}catch(Exception e){
    
    
}

%>

 
