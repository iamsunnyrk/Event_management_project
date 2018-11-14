<%@ page import ="java.sql.*" %>
  
<%


int state = Integer.parseInt(request.getParameter("state"));
int city = Integer.parseInt(request.getParameter("city"));
String hall = (String)request.getParameter("hall");;
int amount=Integer.parseInt(request.getParameter("amount"));
int capacity=Integer.parseInt(request.getParameter("capacity"));

try{
	
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srk","sunnyrk");  
       Statement st=con.createStatement();
      
      
        	
    
    	 int rowcount=st.executeUpdate("insert into hall values (hall_seq.nextval,'"+hall+"','"+capacity+"','"+amount+"','"+city+"')");
    	  
    	      if(rowcount==1)
             { 
                 response.sendRedirect("addhall.jsp");
              }
              
    	    	 con.close();
     
       }
       catch(Exception e){
        e.printStackTrace();
    }

  
       %>
    