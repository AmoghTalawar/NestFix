<%@ page import="java.sql.*" %>
<%
    String s1, s2, s3, s4, s5;

    s1 = request.getParameter("u1");
    s2 = request.getParameter("u2");
    s3 = request.getParameter("u3");
    s4 = request.getParameter("u4");
    s5 = request.getParameter("u5");

    Connection con = null;
    Statement stmt = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/homeservice", "root", "8423");

        stmt = con.createStatement();

        String userType = request.getParameter("u5");

        if(userType.equalsIgnoreCase("Customer")) {
            int k = stmt.executeUpdate("INSERT INTO user VALUES('" + s1 + "','" + s2 + "','" + s3 + "','" + s4 + "','" + userType + "')");
        } else {
            int k = stmt.executeUpdate("INSERT INTO service_provider  VALUES('" + s1 + "','" + s2 + "','" + s3 + "','" + s4 + "','" + userType + "', NULL, NULL)");
        }
        
        stmt.close();
        con.close();
        response.sendRedirect("login.html"); // Redirect instead of forward

    } catch (Exception e) {
        out.println(e);
    } finally {
        // Close the statement and connection in the finally block to ensure they are always closed
        try {
            if (stmt != null) stmt.close();
            if (con != null) con.close();
        } catch (SQLException ex) {
            out.println(ex);
        }
    }
%>
