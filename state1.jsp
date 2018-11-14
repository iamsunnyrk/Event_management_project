<%@ page import ="java.sql.*" %>
  
<%



String state=request.getParameter("state");


try{
	
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srk","sunnyrk");  
       Statement st=con.createStatement();
      
        	
    
    	 int rowcount=st.executeUpdate("insert into state values (state_seq.nextval,'"+state+"')");
    	  
    	      if(rowcount==1)
             { 
                 response.sendRedirect("addstate.jsp");
              }
              
    	    	 con.close();
     
       }
       catch(Exception e){
        e.printStackTrace();
    }

  
       %>
    