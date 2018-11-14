<%@ page import="java.sql.*"%>
<% 
String n=request.getParameter("val"); 

try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srk","sunnyrk");  
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from hall where h_city=n");
    while(rs.next())
    {
    	out.print(rs.getString(2));
    }
}catch(Exception e){
    e.printStackTrace();
}
    
%>  