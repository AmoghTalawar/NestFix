<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Dashboard</title>
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

    <!-- CSS Files -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .bg-primary {
            background-image: url("https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhAkq1F1Jv91R3CKq4KVcKHMaTIBKGbsWWGpDWPbol2TeCemoCd6utLcZIvw93qW7epAB_oDursXeka8_FaLzN87TPDmJn_ZvugL4LQ8zC2fOl3vBlB5cjhvS8Tspn7JPdbZkI8_WXlp9xsGcb7I2kjiEbu6UQmUGBQOacgpPFHEK3HIbQOpJ8d9ZXp3A/s1584/Linkedin%20Cover%20Photo%201.jpg");
        }

        .py-4 {
            <%-- margin-top:50px; --%>
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
        
        /* Style for the Service Complete button */
        .btn-service-complete {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 0.75rem 1.5rem;
            font-size: 1rem;
            cursor: pointer;
        }
        
        .btn-service-complete:hover {
            background-color: #0056b3;
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
                        <p class="text-uppercase text-sm">User Information</p>
                        <form action="updateEmail.jsp" method="post"> 
                            <div class="row">
                                <% 
                                    String booking = request.getParameter("bookingId");
                                    String em = request.getParameter("userName");
                                    Connection con = null; 
                                    Statement stmt = null;
                                    ResultSet rs = null; 
                                    try { 
                                        Class.forName("com.mysql.jdbc.Driver");
                                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/homeservice", "root", "8423");
                                        stmt = con.createStatement(); 
                                        rs = stmt.executeQuery("select * from viewbooking where booking_id='" + booking + "'");
                                        if (rs.next()) { 
                                %>
                                     <input class="form-control" type="text" value="<%= em %>" name="email" hidden>
                                     
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="example-text-input" class="form-control-label">Username</label>
                                            <input class="form-control" type="text" value="<%=rs.getString(3) %>"
                                                name="name">
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="example-text-input" class="form-control-label">Email
                                                address</label>
                                            <input class="form-control" type="email" value="<%=rs.getString(5) %>"
                                                name="email" readonly>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="example-text-input" class="form-control-label">Phone
                                                Number</label>
                                            <input class="form-control" type="text" value="<%=rs.getString(4) %>"
                                                name="phone">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="example-text-input" class="form-control-label">Address</label>
                                            <input class="form-control" type="text" value="<%=rs.getString(6) %>"
                                                name="desgination">
                                        </div>
                                    </div>
                                    <hr class="horizontal dark">
                                    <p class="text-uppercase text-sm">Booking Information</p>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="example-text-input" class="form-control-label">Time</label>
                                            <input class="form-control" type="text" value="<%=rs.getString(14) %>"
                                                name="location">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="example-text-input" class="form-control-label">Booking Id</label>
                                            <input class="form-control" name="bookingId" type="text" value="<%=rs.getString(1) %>"
                                                name="location">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="example-text-input" class="form-control-label">Service Type</label>
                                            <input class="form-control" type="text" value="<%=rs.getString(2) %>"
                                                name="location">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="example-text-input" class="form-control-label">Description</label>
                                            <textarea class="form-control"  type="text" value="<%=rs.getString(9) %>"
                                                name="location"> <%=rs.getString(9) %></textarea>
                                        </div>
                                    </div>
                                       <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="example-text-input" class="form-control-label">Price </label>
                                            <input class="form-control" type="number" "btn" readonly value="<%=rs.getString(10) %>"
                                                name="location">
                                        </div>
                                    </div>
                                     <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="example-text-input" class="form-control-label">Status</label>
                                            <input class="form-control" type="text" value="<%=rs.getString(11) %>"
                                                name="location">
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-6 mt-4">
                                        <button class="btn btn-service-complete btn-block" type="submit">Service Complete</button>
                                    </div>
                                
                                <% } else { 
                                    out.println("No data found for the provided Booking Id."); 
                                    } 
                                } catch (Exception e) { 
                                    out.println("Error: " + e.getMessage());
                                } finally {
                                    // Close resources in finally block
                                    try {
                                        if (rs != null) rs.close();
                                        if (stmt != null) stmt.close();
                                        if (con != null) con.close();
                                    } catch (SQLException ex) {
                                        out.println("Error closing resources: " + ex.getMessage());
                                    }
                                }
                                %>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- JavaScript Files -->
    <!-- Include necessary JavaScript files here -->

</body>

</html>
