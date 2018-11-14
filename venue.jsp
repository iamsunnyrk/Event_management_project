<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<html>
<head>

</head>
<body>
<%
String city=request.getParameter("count");
String buffer="<select name='venue'><option value='-1'>Select Venue</option>";
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srk","sunnyrk");  
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from hall where city_id='"+city+"' ");
    while(rs.next())
    {       
    	buffer=buffer+"<option value='"+rs.getInt("h_id")+"'>"+rs.getString("h_name")+"</option>";
    	
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