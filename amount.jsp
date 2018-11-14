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
    PreparedStatement pstmt=con.prepareStatement("select * from hall where h_id=?");
    pstmt.setString(1,eid);
    ResultSet rs=pstmt.executeQuery();
    if(!rs.next()){
        out.println("no records.");
    }
       else{
        %>
       
        
             
             <input id="amount"  value="<%=rs.getInt("h_amount")%>"  type="text" class=" form-control" size="20" disabled> 
              
       
       <%  session.setAttribute("hall_amount" ,rs.getInt("h_amount"));
       
       }
    
}catch(Exception e){
    
    
}

%>

 
