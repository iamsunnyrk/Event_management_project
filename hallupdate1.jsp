<%@ page import ="java.sql.*" %>
  
<%


int state = Integer.parseInt(request.getParameter("state"));
int city = Integer.parseInt(request.getParameter("city"));
int hall = Integer.parseInt(request.getParameter("venue"));;
int amount=Integer.parseInt(request.getParameter("amount"));
int capacity=Integer.parseInt(request.getParameter("capacity"));

try{
	
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srk","sunnyrk");  
       Statement st=con.createStatement();
      
      
        	
    
    	 int rowcount=st.executeUpdate("update hall set capacity='"+capacity+"',amount='"+amount+"' where hall_id='"+hall+"')");
    	  
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
    