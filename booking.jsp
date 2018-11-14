<%@ page import ="java.sql.*" %>
  
<%
String username=(String)session.getAttribute("userid");
int day = Integer.parseInt(request.getParameter("day"));
int month = Integer.parseInt(request.getParameter("month"));
int year = Integer.parseInt(request.getParameter("year"));;
int category=Integer.parseInt(request.getParameter("category"));
int city=Integer.parseInt(request.getParameter("city"));
int venue=Integer.parseInt(request.getParameter("venue"));
int food_item=Integer.parseInt(request.getParameter("food_item"));
int no_plates=Integer.parseInt(request.getParameter("txt"));
int decor=Integer.parseInt(request.getParameter("decor"));
int enter=Integer.parseInt(request.getParameter("enter"));
session.setAttribute("day",day);
session.setAttribute("month",month);
session.setAttribute("year",year);

try{
	
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srk","sunnyrk");  
       Statement st=con.createStatement();
       ResultSet rs3=st.executeQuery("select * from decor_type where decor_id='"+decor+"'");
         rs3.next();
        	int d_amount=rs3.getInt(3);
        	//out.print(d_amount);
        	session.setAttribute("damount",d_amount);
        	session.setAttribute("d_id",decor);
        	ResultSet rs5=st.executeQuery("select * from hall where h_id='"+venue+"'");
            rs5.next();
           	int h_amount=rs5.getInt(4);
           	//out.print(h_amount);
           	session.setAttribute("hamount",h_amount);
           	session.setAttribute("h_id",venue);
           	//ResultSet rs10=st.executeQuery("select * from status where hall_id='"+venue+"'");
           	//rs10.next();
           	//int sid=rs10.getInt(1);
           	//out.print(sid);
           	//session.setAttribute("s_id",sid);
        	ResultSet rs4=st.executeQuery("select * from food_item where ft_id='"+food_item+"'");
            rs4.next();
            
           	int plate_amount=rs4.getInt(3);
           	int f_amount=plate_amount*no_plates;
           	//out.print(f_amount);
           	session.setAttribute("famount",f_amount);
           	session.setAttribute("ft_id",food_item);
           //	ResultSet rs8=st.executeQuery("select * from food_status where ft_id='"+food_item+"'");
            //rs8.next();
            //int food_id=rs8.getInt(1);
            //out.print(food_id);
            //session.setAttribute("fs_id",food_id);
        	
      ResultSet rs=st.executeQuery("select * from city where city_id='"+city+"'");
     rs.next();
    	String city_name=rs.getString(3);
    	//out.print(city_name);
    	
    	  ResultSet rs1=st.executeQuery("select * from customer where username='"+username+"'");
    	     rs1.next();
    	    	int cust_id=rs1.getInt(1);
    	    	//out.print(cust_id);
    	    	session.setAttribute("c_id",cust_id);
    	    	ResultSet rs7=st.executeQuery("select * from enter_item where et_id='"+enter+"'");
    	        rs7.next();
    	       	int e_amount=rs7.getInt(3);
    	       //	out.print(e_amount);
    	       	session.setAttribute("eamount",e_amount);
    	       	session.setAttribute("e_id",enter);
    	     
    	       	//ResultSet rs11=st.executeQuery("select * from event_type where event_id='"+category+"'");
    	        //rs11.next();
    	       	//int eventid=rs11.getInt(1);
    	       	//out.print(eventid);
    	       	session.setAttribute("event_id",category);
    	  
    	 int rowcount=st.executeUpdate("insert into status values (seq_status.nextval,'"+venue+"','"+day+"','"+month+"','"+year+"')");
    	 int rowcount1=st.executeUpdate("insert into food_status values (seq_food_status.nextval,'"+no_plates+"','"+food_item+"','"+f_amount+"')");
              if(rowcount==1)
            	  if(rowcount==1)
              {
                 response.sendRedirect("payment.jsp");
              }
              
    	    	 con.close();
     
       }
       catch(Exception e){
        e.printStackTrace();
    }

  
       %>
    