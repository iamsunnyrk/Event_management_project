<%@ page import ="java.sql.*" %>
  
<%



String type=(String)request.getParameter("type");
int amount=Integer.parseInt(request.getParameter("amount"));


try{
	
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srk","sunnyrk");  
       Statement st=con.createStatement();
      
        	
    
    	 int rowcount=st.executeUpdate("insert into enter_item values (enter_item_seq.nextval,'"+type+"','"+amount+"')");
    	  
    	      if(rowcount==1)
             { 
                 response.sendRedirect("addequip.jsp");
              }
              
    	    	 con.close();
     
       }
       catch(Exception e){
        e.printStackTrace();
    }

  
       %>
    