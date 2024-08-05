<%@ page import="java.sql.*" %>
<%
String name = request.getParameter("name");
String em = request.getParameter("email");
String phone = request.getParameter("phone");
String desgination = request.getParameter("desgination");
String serviceType = request.getParameter("serviceType");
String location = request.getParameter("location");

Connection con = null;
PreparedStatement pstmt = null;

try {
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/homeservice", "root", "8423");
    pstmt = con.prepareStatement("UPDATE service_provider SET name=?, phone_number=?, desgination=?, service_type=?, location=? WHERE email_address=?");
    pstmt.setString(1, name);
    pstmt.setString(2, phone);
    pstmt.setString(3, desgination);
    pstmt.setString(4, serviceType);
    pstmt.setString(5, location);
    pstmt.setString(6, em);
    
    int rowsAffected = pstmt.executeUpdate();
    if (rowsAffected > 0) {
%>
        <script>
            alert('User information updated successfully.'); 
            window.location.href = "editService.jsp?em=<%=em%>";
        </script>
<%
    } else {
        out.println("Failed to update user information.");
    }
} catch (Exception e) {
    out.println("Error: " + e.getMessage());
} finally {
    try {
        if (pstmt != null) pstmt.close();
        if (con != null) con.close();
    } catch (SQLException ex) {
        out.println("Error closing resources: " + ex.getMessage());
    }
}
%>
