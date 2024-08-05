<%@ page import="java.sql.*" %>
<%
String user = session.getAttribute("uemail").toString();
String oldPassword = request.getParameter("oldPassword");
String newPassword = request.getParameter("newPassword");
String confirmPassword = request.getParameter("confirmPassword");

Connection con = null;
PreparedStatement selectStatement = null;
PreparedStatement updateStatement = null;
ResultSet rs = null;

try {
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/homeservice", "root", "8423");

    selectStatement = con.prepareStatement("SELECT password FROM user WHERE email_address = ?");
    selectStatement.setString(1, user);
    rs = selectStatement.executeQuery();

    if (rs.next()) {
        String pwd = rs.getString("password");
        if (pwd.equals(oldPassword)) {
            if (newPassword.equals(confirmPassword)) {
                updateStatement = con.prepareStatement("UPDATE user SET password = ? WHERE email_address = ?");
                updateStatement.setString(1, newPassword);
                updateStatement.setString(2, user);
                int rowsUpdated = updateStatement.executeUpdate();
                if (rowsUpdated > 0) {
                    // Password updated successfully
                    %>
                    <script type="text/javascript">
                        alert("Password updated successfully.");
                        window.location.href = "login.html"; // Redirect to login page
                    </script>
                    <%
                } else {
                    // Failed to update password
                    %>
                    <script type="text/javascript">
                        alert("Failed to update password.");
		window.location.href = "forgotpassword.html";
                    </script>
                    <%
                }
            } else {
                // New password and confirm password do not match
                %>
                <script type="text/javascript">
                    alert("New password and confirm password do not match.");
		window.location.href = "forgotpassword.html";
                </script>
                <%
            }
        } else {
            // Incorrect old password
            %>
            <script type="text/javascript">
                alert("Incorrect old password.");
	window.location.href = "forgotpassword.html";
            </script>
            <%
        }
    } else {
        // User not found
        %>
        <script type="text/javascript">
            alert("User not found.");
	window.location.href = "forgotpassword.html";
        </script>
	 
        <%
    }
} catch (Exception e) {
    out.println("An error occurred: " + e.getMessage());
} finally {
    try {
        if (rs != null) rs.close();
        if (selectStatement != null) selectStatement.close();
        if (updateStatement != null) updateStatement.close();
        if (con != null) con.close();
    } catch (SQLException se) {
        out.println("Error closing resources: " + se.getMessage());
    }
}
%>
