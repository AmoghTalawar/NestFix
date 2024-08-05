<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Service Completed</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
    <!-- Nucleo Icons -->
    <link href="assets/css/nucleo-icons.css" rel="stylesheet" />
    <link href="assets/css/nucleo-svg.css" rel="stylesheet" />
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <link href="assets/css/nucleo-svg.css" rel="stylesheet" />
    <!-- CSS Files -->
    <link id="pagestyle" href="assets/css/argon-dashboard.css?v=2.0.4" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .bg-primary {
            background-image: url("https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhAkq1F1Jv91R3CKq4KVcKHMaTIBKGbsWWGpDWPbol2TeCemoCd6utLcZIvw93qW7epAB_oDursXeka8_FaLzN87TPDmJn_ZvugL4LQ8zC2fOl3vBlB5cjhvS8Tspn7JPdbZkI8_WXlp9xsGcb7I2kjiEbu6UQmUGBQOacgpPFHEK3HIbQOpJ8d9ZXp3A/s1584/Linkedin%20Cover%20Photo%201.jpg");
        }

        .py-4 {
            padding-top: 1.5rem !important;
            padding-bottom: 1.5rem !important;
            margin-left: 250px;
        }

        .card {
            margin-top: 80px;
            box-shadow: 0 0 2rem 0 rgba(136, 152, 170, 0.15);
        }

        #edit {
            font-size: 50px;
            color: white;
        }

        /* Style for the Thank You message */
        .thank-you-message {
            font-size: 24px;
            color: #007bff;
            text-align: center;
            margin-top: 50px;
        }

        /* Style for the link */
        .home-link {
            margin-left: 38%;
            text-decoration: none;
            background-color: transparent;
        }
    </style>
</head>

<body class="g-sidenav-show bg-gray-100">
    <div class="min-height-300 bg-primary position-absolute w-100">
        <center>
            <p id="edit">Booking Profile</p>
        </center>
    </div>

    <div class="container-fluid py-4">
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-body">
                        <% 
                            String bookingId = request.getParameter("bookingId");
                            if (bookingId != null && !bookingId.isEmpty()) {
                                Connection con = null;
                                PreparedStatement stmt = null;
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/homeservice", "root", "8423");
                                    String sql = "UPDATE viewbooking SET status = 'Completed' WHERE booking_id = ?";
                                    stmt = con.prepareStatement(sql);
                                    stmt.setString(1, bookingId);
                                    int rowsAffected = stmt.executeUpdate();
                                    if (rowsAffected > 0) {
                        %>
                        <!-- Display Thank You message -->
                        <p class="thank-you-message">Your service has been successfully completed. We appreciate your business!</p>
                        <!-- Link to home page -->
                        <p><a href="service-provider-index.jsp" class="home-link">Go to Home page</a></p>
                        <% 
                                    } else {
                                        out.println("Failed to update service status.");
                                    }
                                } catch (Exception e) {
                                    out.println("Error: " + e.getMessage());
                                } finally {
                                    try {
                                        if (stmt != null) stmt.close();
                                        if (con != null) con.close();
                                    } catch (SQLException ex) {
                                        out.println("Error closing resources: " + ex.getMessage());
                                    }
                                }
                            } else {
                                out.println("No booking ID provided.");
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

</html>
