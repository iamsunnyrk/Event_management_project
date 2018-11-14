<%@ page import ="java.sql.*" %>
  
<%

String city = (String)request.getParameter("city");

int state_id=Integer.parseInt(request.getParameter("state"));


try{
	
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srk","sunnyrk");  
       Statement st=con.createStatement();
      
        	
    
    	 int rowcount=st.executeUpdate("insert into city values (city_seq.nextval,'"+state_id+"','"+city+"')");
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
    