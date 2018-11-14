<%@ page import="java.sql.* "%>

<%
session.isNew();
Connection con=null;
String name=request.getParameter("name");
String city=request.getParameter("city");
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");
String pass=request.getParameter("pass");
String user=request.getParameter("user");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srk","sunnyrk"); 
 PreparedStatement st=con.prepareStatement("INSERT INTO customer(cust_id,name,city,mobile,email,password,username) VALUES (seq_customer.nextval,?,?,?,?,?,?)");

 st.setString(1,name);
 st.setString(2,city);
 st.setString(3,mobile);
 st.setString(4,email);
 st.setString(5,pass);
 st.setString(6,user);
 st.executeUpdate();

 con.close();
 
}catch(Exception e){
    e.printStackTrace();
}
session.setAttribute("userid", user);
response.sendRedirect("success.jsp");
 %>