<%@ page import="java.sql.*" %>
<%
    String email = request.getParameter("email");
    String newPassword = request.getParameter("newPassword");
    String confirmPassword = request.getParameter("confirmPassword");

    Connection con = null;
    PreparedStatement psUser = null;
    PreparedStatement psServiceProvider = null;
    
    try {

        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/homeservice", "root", "8423");

        if (newPassword.equals(confirmPassword)) {
        
            String queryUser = "UPDATE user SET password = ? WHERE email_address = ?";
            psUser = con.prepareStatement(queryUser);
            psUser.setString(1, confirmPassword);
            psUser.setString(2, email);
            int rowsAffectedUser = psUser.executeUpdate();


            String queryServiceProvider = "UPDATE service_provider SET password = ? WHERE email_address = ?";
            psServiceProvider = con.prepareStatement(queryServiceProvider);
            psServiceProvider.setString(1, confirmPassword);
            psServiceProvider.setString(2, email);
            int rowsAffectedServiceProvider = psServiceProvider.executeUpdate();

            if (rowsAffectedUser > 0 || rowsAffectedServiceProvider > 0) {
                %>
                <script>
                    alert("Password Updated Successfully");
                    window.location.href = "login.html";
                </script>
                <%
            } else {

                %>
                <script>
                    alert("Email not found or password not updated.");
                </script>
                <%
            }
        } else {
            
            %>
            <script>
                alert("New Password & Confirm Password didn't match.");
            </script>
            <%
        }
    } catch (ClassNotFoundException | SQLException e) {
        // Exception handling
        out.println(e);
    }
%>
