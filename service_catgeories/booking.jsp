<%@ page import="java.sql.*, java.util.UUID" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" %>

<%
try {
    // Retrieve parameters from the form submission
    String name = request.getParameter("name");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    String address = request.getParameter("address");
    String city = request.getParameter("city");
    String zip = request.getParameter("zip");
    String job_desc = (String) session.getAttribute("job");
    String booking_date = (String) session.getAttribute("date");
    String booking_time = (String) session.getAttribute("time");
    String serviceType = (String) session.getAttribute("serviceType");
    String amount = (String) session.getAttribute("amount");

   

    // Generate a unique booking ID
    String bookingId = UUID.randomUUID().toString().substring(0, 8);

    // Database connection details
    String url = "jdbc:mysql://localhost:3306/homeservice";
    String username = "root";
    String password = "8423"; // Avoid hardcoding passwords

    // Database connection initialization
    try (Connection connection = DriverManager.getConnection(url, username, password)) {
        // Check if email exists in the database
        String checkEmailQuery = "SELECT * FROM user WHERE email_address=?";
        try (PreparedStatement statement = connection.prepareStatement(checkEmailQuery)) {
            statement.setString(1, email);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (!resultSet.next()) {
                    // Email does not exist, show popup message to register
%>
                    <script>
                        if(confirm("You are not registered yet. Would you like to register?")){
                            window.location.href = "../signup.html"; 
                        } else {
                            history.back(); // Go back to previous page if user chooses not to register
                        }
                    </script>
<%
                } else {
                    // Email exists, proceed with booking insertion
                    String sql = "INSERT INTO bookings (booking_id, service_type, name, phone, email_address, address, city, zip, job_description, amount, created_at, service_provider, service_complete) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NOW(), NULL, NULL)"; // Use NOW() function to insert current timestamp
                    try (PreparedStatement insertStatement = connection.prepareStatement(sql)) {
                        insertStatement.setString(1, bookingId);
                        insertStatement.setString(2, serviceType);
                        insertStatement.setString(3, name);
                        insertStatement.setString(4, phone);
                        insertStatement.setString(5, email);
                        insertStatement.setString(6, address);
                        insertStatement.setString(7, city);
                        insertStatement.setString(8, zip);
                        insertStatement.setString(9, job_desc);
                        insertStatement.setString(10, amount);

                        // Execute the insertion query for bookings table
                        int rowsAffected = insertStatement.executeUpdate();

                        // Insert into viewbooking table with the last column as NULL
                        if (rowsAffected > 0) {
                            sql = "INSERT INTO viewbooking SELECT booking_id, service_type, name, phone, email_address, address, city, zip, job_description,  amount, 'Pending' , service_provider, service_complete, created_at FROM bookings WHERE booking_id = ?";
                            try (PreparedStatement viewBookingStatement = connection.prepareStatement(sql)) {
                                viewBookingStatement.setString(1, bookingId);
                                rowsAffected = viewBookingStatement.executeUpdate();

                                if (rowsAffected > 0) {
                                    // Forward to success page
                                    request.setAttribute("bookingId", bookingId);
                                    request.getRequestDispatcher("success.jsp").forward(request, response);
                                } else {
                                    // Forward to error page
                                    request.getRequestDispatcher("error.jsp").forward(request, response);
                                }
                            }
                        } else {
                            // Forward to error page
                            request.getRequestDispatcher("error.jsp").forward(request, response);
                        }
                    }
                }
            }
        }
    } catch (SQLException e) {
        // Handle database connection errors
        e.printStackTrace();
        request.setAttribute("errorMessage", "An error occurred while processing your request: " + e.getMessage());
        request.getRequestDispatcher("error.jsp").forward(request, response);
    }
} catch (Exception e) {
    // Handle unexpected errors
    e.printStackTrace();
    request.setAttribute("errorMessage", "An unexpected error occurred: " + e.getMessage());
    request.getRequestDispatcher("error.jsp").forward(request, response);
}
%>
