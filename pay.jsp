<%@page import ="java.sql.*" %>

<% int e_price=(Integer)session.getAttribute("eamount");%>
<% int d_price=(Integer)session.getAttribute("damount");%>
<% int h_price=(Integer)session.getAttribute("hamount");%>
<% int f_price=(Integer)session.getAttribute("famount");%>
<% int total=e_price+d_price+h_price+f_price; %>
<% int cust=(Integer)session.getAttribute("c_id");%>
<% int enter=(Integer)session.getAttribute("e_id");%>
<% int decor=(Integer)session.getAttribute("d_id");%>
<% int food_id=(Integer)session.getAttribute("ft_id");%>
<% int eid=(Integer)session.getAttribute("event_id");%>
<% int h_id=(Integer)session.getAttribute("h_id");%>
<% int day=(Integer)session.getAttribute("day");%>
<% int month=(Integer)session.getAttribute("month");%>
<% int year=(Integer)session.getAttribute("year");%>

 
<%
   String pay_type=(String)request.getParameter("payby");
   String pay_no=(String)request.getParameter("payno");
   try{
	
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srk","sunnyrk");  
       Statement st=con.createStatement();
       ResultSet rs1=st.executeQuery("select * from food_status where ft_id='"+food_id+"'" );
       rs1.next();
       int fs_id=rs1.getInt(1);
       session.setAttribute("fsid",fs_id);
       
     ResultSet rs=st.executeQuery("select * from account" );
     rs.next();
       
      
      	int accid=rs.getInt(1);
      	
      	session.setAttribute("acc_id",accid);
      
     
      	
        ResultSet rs2=st.executeQuery("select * from status where hall_id='"+h_id+"' and day='"+day+"' and month='"+month+"' and year='"+year+"' ");
        rs2.next();
     int status_id=rs2.getInt(1);
        
      
       
     	out.println(accid);
       
        out.println(cust);
        out.println(enter);
        out.println(fs_id);
        out.println(decor);
        out.println(eid);
        
        
      //  session.setAttribute("status",status_id);
       int rowcount=st.executeUpdate("insert into booking values(seq_booking.nextval,'"+pay_type+"','"+pay_no+"','"+total+"','"+accid+"','"+cust+"','"+enter+"','"+fs_id+"','"+decor+"','"+eid+"','"+status_id+"',1)");
    	        
                  if(rowcount==1)
                  {  response.sendRedirect("report.jsp");
                    
                  }
                  else
                  {
                	  %>
                	  alert("database error");
                	  
               <%  response.sendRedirect("payment.jsp");
               }

    	    	 con.close();
     
       }
       catch(Exception e){
        e.printStackTrace();
    }

  
       %>
    