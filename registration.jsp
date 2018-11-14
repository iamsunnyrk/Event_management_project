<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String name = request.getParameter("name");
    String city = request.getParameter("city");
    String mobile = request.getParameter("mobile");
    String email = request.getParameter("email");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srk","sunnyrk");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into customer(name,city,mobile, email,password, username) values ('" + name + "','" + city + "','" + mobile + "','" + email + "','" + pwd + "','" + user + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>