<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.io.* "%>
<%

   String username=request.getParameter("user");

	Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srk","sunnyrk");
    Statement st=con.createStatement();
   
    ResultSet rs=st.executeQuery("select * from customer where username='"+username+"'");
    if(rs.next()|| username==""){
    	out.println("<font color=red>");
    	out.println("Name already exist");
    	out.println("</font>");
        
    }
    else 
    	
    {
    	out.println("<font color=green>");
    			out.println("Available");
    			out.println("</font>");
    }
    rs.close();
    st.close();
    con.close();
    %>
    