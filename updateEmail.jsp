<%@ page import="java.sql.*" %>
<%
    String email = request.getParameter("email");
    String bookingId = request.getParameter("bookingId");
    
    Connection con = null;
    PreparedStatement stmt1 = null;
    PreparedStatement stmt2 = null;
    
    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/homeservice", "root", "8423");
        
        // Update viewbooking table
        stmt1 = con.prepareStatement("UPDATE viewbooking SET service_provider = ?, service_complete = CURRENT_TIMESTAMP WHERE booking_id = ?");
        stmt1.setString(1, email);
        stmt1.setString(2, bookingId);
        stmt1.executeUpdate();
        
        // Update bookings table
        stmt2 = con.prepareStatement("UPDATE bookings SET service_provider = ?, service_complete = CURRENT_TIMESTAMP WHERE booking_id = ?");
        stmt2.setString(1, email);
        stmt2.setString(2, bookingId);
        stmt2.executeUpdate();
        
        // Forward to updateStatus.jsp
        %>
        <jsp:forward page="updateStatus.jsp" />
        <%
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    } finally {
        // Close resources in finally block
        try {
            if (stmt1 != null) stmt1.close();
            if (stmt2 != null) stmt2.close();
            if (con != null) con.close();
        } catch (SQLException ex) {
            out.println("Error closing resources: " + ex.getMessage());
        }
    }
%>
