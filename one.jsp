<%@ page import="java.sql.*"%>
<%
    String usname=request.getParameter("user");
    String passw = request.getParameter("pass");
    try{
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srk","sunnyrk");  
       Statement st=con.createStatement();
       ResultSet rs=st.executeQuery("select *from login");
     
       while(rs.next())
       {
            String s1=rs.getString(1);
            String s2=rs.getString(2);
            session.setAttribute("userid", s1);
           if( usname.equals(s1) && passw.equals(s2))
            {
            response.sendRedirect("admin.html");
            break;
            }
          
            
        }
       
           response.sendRedirect("index.html");
       
    }catch(Exception e){
        e.printStackTrace();
    }
    
  
       %>
    