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
    PreparedStatement pstmt=con.prepareStatement("select * from state where state_id=?");
    pstmt.setString(1,eid);
    ResultSet rs=pstmt.executeQuery();
    if(!rs.next()){
        out.println("no records.");
    }
       else{
        %>
       
        <TABLE>
            <tr>
                <td>StateID:</td>
                <td>Statename:</td>
                
            </tr>
            <tr>
                <td><input type="text" name="" value="<%=rs.getString(1)%>"></td>
                <td><input type="text" name="" value="<%=rs.getString(2)%>"></td>
               
            </tr>
        </TABLE>
       
       
       <%
       }
    
}catch(Exception e){
    
    
}

%>

 
