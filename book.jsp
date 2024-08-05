<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Profile</title>
    <!-- Bootstrap CSS CDN -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome CSS CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <style>
        body {
            background: linear-gradient(to right, #003366, #66ccff); /* Gradient background */
            color: white; /* Text color */
        }

        .container {
            margin-top: 100px;
        }

        h1 {
            font-family: 'Arial Black', sans-serif;
            font-weight: bold;
            text-align: center;
            text-shadow: 2px 2px 4px #000000;
        }

        .form-group label {
            font-weight: bold;
        }

        .btn-primary {
            background-color: #00bfff; /* Button color */
            border-color: #00bfff; /* Button border color */
        }

        .btn-primary:hover {
            background-color: #0077b3; /* Button hover color */
            border-color: #0077b3; /* Button hover border color */
        }

        .btn-primary i {
            margin-right: 5px;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Booking Profile <i class="fas fa-book"></i></h1> <!-- Added book icon -->
        <div class="row justify-content-center">
            <div class="col-md-6">
                <form action="booking.jsp" method="post"> <!-- Added method attribute -->
                    <div class="form-group">
                        <label for="bookingId">Enter Booking ID</label>
                        <input type="text" class="form-control" id="bookingId" name="bookingId">
                    </div>
                    <% 
                    String em = (String) session.getAttribute("em");
                    String userName = null;
                    Connection con = null; 
                    PreparedStatement stmt = null; 
                    ResultSet rs = null; 
                
                    try { 
                        Class.forName("com.mysql.cj.jdbc.Driver"); // Corrected JDBC driver class name
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/homeservice", "root", "8423"); 
                        stmt = con.prepareStatement("SELECT * FROM service_provider WHERE email_address = ?");
                        stmt.setString(1, em);
                        rs = stmt.executeQuery();
                        if (rs.next()) { 
                            userName = rs.getString("name");
                    %>
                            <!-- Hidden input field to pass the user name -->
                            <input type="hidden" name="userName" value="<%= userName %>">
                            <button type="submit" class="btn btn-primary btn-block"><i class="fas fa-search"></i> Check</button> 
                    <% 
                        } else { 
                    %>
                            <p>No service provider found for the provided email.</p>
                    <% 
                        } 
                    } catch(Exception e) { 
                        e.printStackTrace(); 
                    } finally { 
                        try { 
                            if(rs != null) rs.close(); 
                            if(stmt != null) stmt.close(); 
                            if(con != null) con.close(); 
                        } catch(SQLException e) { 
                            e.printStackTrace(); 
                        } 
                    } 
                    %>
                </form>
                
            </div>
        </div>
    </div>
    <!-- Bootstrap JS and jQuery CDN (optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
