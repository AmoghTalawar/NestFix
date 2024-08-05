<%@ page import="java.sql.*" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img/favicon.png">
    <title>
      Dashboard
    </title>
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
    <!-- Nucleo Icons -->
    <link href="assets/css/nucleo-icons.css" rel="stylesheet" />
    <link href="assets/css/nucleo-svg.css" rel="stylesheet" />
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <link href="assets/css/nucleo-svg.css" rel="stylesheet" />
    <!-- CSS Files -->
    <link id="pagestyle" href="assets/css/argon-dashboard.css?v=2.0.4" rel="stylesheet" />

    <style>
    .bg-primary {
    background-image:url("https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhAkq1F1Jv91R3CKq4KVcKHMaTIBKGbsWWGpDWPbol2TeCemoCd6utLcZIvw93qW7epAB_oDursXeka8_FaLzN87TPDmJn_ZvugL4LQ8zC2fOl3vBlB5cjhvS8Tspn7JPdbZkI8_WXlp9xsGcb7I2kjiEbu6UQmUGBQOacgpPFHEK3HIbQOpJ8d9ZXp3A/s1584/Linkedin%20Cover%20Photo%201.jpg");
}
      .py-4 {
      padding-top: 1.5rem !important;
      padding-bottom: 1.5rem !important;
      margin-left: 100px;
  }
  .navbar-nav>.nav-item .nav-link.active {
      background-color: none;
      box-shadow: none;
    }

    .d-sm-inline {
        margin-left: 30px;
        font-size: 20px;
      }
      .mt-4 { 
        margin-top: 1.5rem !important;
        margin-left: 54px;
      }
        .d-sm-inline{
      margin-left: 30px;
      font-size: 20px;
    }
      .d-sm-inline {
        font-size: 20px;
      }
      /* Add this CSS for alignment */
      .text-center-custom {
        text-align: center;
      }
        .navbar-expand-lg .navbar-nav {
      flex-direction: row;
      margin-left: 500px;
  }
  .form-control {
    display: block;
    width: 180%;
  }
  .py-4 {
    padding-top: 1.5rem !important;
    padding-bottom: 1.5rem !important;
    margin-left: 189px;
}
.card {
    margin-top: 80px;
    box-shadow: 0 0 2rem 0 rgba(136, 152, 170, 0.15);
}
#edit {
    font-size: 50px;
    color: white;
}
    </style>
  </head>

  <body class="g-sidenav-show bg-gray-100">
    <div class="min-height-300 bg-primary position-absolute w-100">
      <center><p id="edit"> Edit Profile
      </p></cemter>
    </div>
    
    
      <!-- End Navbar -->
    
      <div class="container-fluid py-4">
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-body">
                        <p class="text-uppercase text-sm">User Information</p>
                        <div class="row">
                            <% 
                            //  String email = (String) request.getAttribute("email");
                            String email = request.getParameter("email"); 
                            Connection con = null;
                            Statement stmt = null;
                            ResultSet rs = null;
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/homeservice", "root", "8423");
                                stmt = con.createStatement();
                                rs = stmt.executeQuery("select * from service_provider where email_address='" + email + "'");
                                if (rs.next()) 
                                { 
                            
                            %>
                            
                  <form action="updateserv.jsp" method="post">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="example-text-input" class="form-control-label">Username</label>
                                    <input class="form-control" type="text" value="<%=rs.getString(1) %>" name="name">
                                </div>
                            </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="example-text-input" class="form-control-label">Email address</label>
                            <input class="form-control" type="email" value="<%=rs.getString(3) %>" name="email" readonly>
                          </div>
                        </div>
                      <div class="col-md-6">
                          <div class="form-group">
                            <label for="example-text-input" class="form-control-label">Phone Number</label>
                            <input class="form-control" type="text" value="<%=rs.getString(2) %>" name="phone">
                        </div>
                      </div>
                      <div class="col-md-6">
                      <div class="form-group">
                        <label for="example-text-input" class="form-control-label">Desgination</label>
                      <input class="form-control" type="text" value="<%=rs.getString(5) %>" name="desgination">
                      </div>
                      </div>
                      <div class="col-md-6">
                      <div class="form-group">
                      <label for="example-text-input" class="form-control-label">Service Type</label>
                      <input class="form-control" type="text" value="<%=rs.getString(7) %>" name="serviceType">
                      </div>
                      </div>
                    </div>
                    <hr class="horizontal dark">
                        <p class="text-uppercase text-sm">Contact Information</p>
                      <div class="row">
                            <div class="col-md-4">
                    <div class="form-group">
                      <label for="example-text-input" class="form-control-label">City</label>
                      <input class="form-control" type="text" value="<%=rs.getString(6) %>" name="location">
                    </div>
                      </div>
                    <div class="row mt-4">
                    <div class="col-md-6">
                        <button class="btn btn-primary btn-block" type="submit"> Update</button>
                      </div>
                      
                </form>
                        <div class="col-md-6">
                       <a href="login.html"> <button class="btn btn-primary btn-block"> Logout</button></a>
                      </div>
                           
                            <% 
                                } else {
                                    // Handle case where no data found for the given email
                                    out.println("No data found for the provided email.");
                                }
                            } catch (Exception e) {
                                // Handle exceptions gracefully
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
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Scripts remain unchanged -->

</body>
</html>
  </body>

  </html>