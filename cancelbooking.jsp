<%@ page import ="java.sql.*" %>
<% String thisUser = (String) session.getAttribute("userid");%>
<%
int book_id=Integer.parseInt(request.getParameter("book_id"));
 
out.print(book_id);
try{
	
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srk","sunnyrk");  
       Statement st=con.createStatement();
       ResultSet rs1=st.executeQuery("SELECT b.status_id,s.status_id,s.day,s.month,s.year from booking b,status s where b.book_id='"+book_id+"' and b.status_id=s.status_id ");
       rs1.next();
       int day=rs1.getInt(3);
       int month=rs1.getInt(4);
       int year=rs1.getInt(5);
       ResultSet rs4=st.executeQuery("select * from customer where username='"+thisUser+"'");
       rs4.next();
      
       int cust_id=rs4.getInt(1);
       out.print(cust_id);
       out.print(day);
       out.print(month);
       out.print(year);
       int rs=st.executeUpdate("UPDATE (SELECT b.book_id,b.status,e.event_name,h.h_name,s.day,s.month,s.year FROM booking b,event_type e,hall h,status s where ((((((( b.cust_id='"+cust_id+"' and b.status=1) and s.status_id=b.status_id) and  h.h_id=s.hall_id) and s.day='"+day+"') and s.month='"+month+"' ) and s.year='"+year+"')and  b.event_id=e.event_id)) SET status=0");
       out.println(year);
      if( rs==1)
     
       {
          response.sendRedirect("profile.jsp");
       }
       
	    	 con.close();

          }
       catch(Exception e){
        e.printStackTrace();
    }

  
       %>
    