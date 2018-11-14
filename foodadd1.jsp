<%@ page import ="java.sql.*" %>
  
<%



String food=(String)request.getParameter("food");
int amount=Integer.parseInt(request.getParameter("amount"));


try{
	
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srk","sunnyrk");  
       Statement st=con.createStatement();
      
        	
    
    	 int rowcount=st.executeUpdate("insert into food_item values (food_item_seq.nextval,'"+food+"','"+amount+"')");
    	  
    	      if(rowcount==1)
             { 
                 response.sendRedirect("addfood.jsp");
              }
              
    	    	 con.close();
     
       }
       catch(Exception e){
        e.printStackTrace();
    }

  
       %>
    