<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.RequestDispatcher" %> <!-- Import RequestDispatcher -->
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/homeservice", "root", "8423");

        PreparedStatement pstmt = conn.prepareStatement(
            "SELECT 'admin' AS designation, email_address FROM admin WHERE email_address = ? AND password = ? " +
            "UNION " +
            "SELECT 'customer' AS designation, email_address FROM user WHERE email_address = ? AND password = ? " +
            "UNION " +
            "SELECT 'service_provider' AS designation, email_address FROM service_provider WHERE email_address = ? AND password = ?"
        );
        
        pstmt.setString(1, email);
        pstmt.setString(2, password);
        pstmt.setString(3, email);
        pstmt.setString(4, password);
        pstmt.setString(5, email);  
        pstmt.setString(6, password);
        ResultSet rs = pstmt.executeQuery();

        if (rs.next()) {
            String designation = rs.getString("designation");
            if (designation.equals("admin")) {
%> 
<jsp:forward page="admin-index.html" />
<%
            } else if (designation.equalsIgnoreCase("customer")) {
                RequestDispatcher rd = request.getRequestDispatcher("uindex.html");
                rd.forward(request, response);
            } else if (designation.equalsIgnoreCase("service_provider")) {
                   session.setAttribute("em", email);
 %> 
            <jsp:forward page="service-provider-index.jsp" />
<%
            }
        } else {
%>
            <script type="text/javascript">
                alert("Invalid email or password.");
                window.location.href = "login.html";
            </script>
<%
        }
    } catch (SQLException | ClassNotFoundException e) {
        e.printStackTrace(); 
    }
%>
