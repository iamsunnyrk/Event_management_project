<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%

try{
    
    int cust=Integer.parseInt(request.getParameter("cust"));
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srk","sunnyrk");
    PreparedStatement pstmt=con.prepareStatement("select * from customer where cust_id=?");
    pstmt.setInt(1,cust);
    ResultSet rs=pstmt.executeQuery();
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
   
   while(rs.next())
   {
    %>
      <tr >
        <td><%= rs.getInt(1)%></td>
        <td><%= rs.getString(2)%></td>
        <td><%= rs.getString(3)%></td>
        <td><%= rs.getInt(4)%></td>
        <td><%=rs.getString(5)%></td>
        <td><%=rs.getString(7)%></td>
        
      
      <% 
        
        
    	  
       
       }
    
}catch(Exception e){
    
    
}

%>

 
