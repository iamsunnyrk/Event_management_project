<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<html>
<head>

</head>
<body>
<%
String state=request.getParameter("count");
String buffer="<select name='city'><option value='-1'>Select City</option>";
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srk","sunnyrk");  
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from city where state_id='"+state+"' ");
    while(rs.next())
    {
    	buffer=buffer+"<option value='"+rs.getString("city_id")+"'>"+rs.getString("city_name")+"</option>";
    	
    }
    buffer=buffer+"</select>";
    response.getWriter().println(buffer);
}
catch(Exception e){
	System.out.println(e);
}


%>



</body>
</html>