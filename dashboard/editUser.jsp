<%@ page import="java.sql.*" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <title>
      Dashboard
    </title>
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
    <!-- Nucleo Icons -->
    <link href="../assets/css/nucleo-icons.css" rel="stylesheet" />
    <link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
    <!-- CSS Files -->
    <link id="pagestyle" href="../assets/css/argon-dashboard.css?v=2.0.4" rel="stylesheet" />
    <style>
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
    .navbar-vertical .navbar-brand>img, .navbar-vertical .navbar-brand-img {
    margin-top: 18px;
    max-width: 93%;
    max-height: 2rem;
    padding-left: 40px;
}

 .navbar-brand span {
    padding-left: 50px;
    transition: all 0.2s ease-in-out;
}
    </style>
  </head>

  <body class="g-sidenav-show bg-gray-100">
    <div class="min-height-300 bg-primary position-absolute w-100"></div>
      <aside class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 " id="sidenav-main">
          <img src="NestFix-removebg-preview.png" class="navbar-brand-img h-100" alt="main_logo">
    <div class="sidenav-header">
      <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
      <a class="navbar-brand m-0" href="dashboard.jsp" target="_blank">
        <span class="ms-1 font-weight-bold"> Dashboard</span>
      </a>
    </div>
        <hr class="horizontal dark mt-0">
        <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link " href="dashboard.jsp">
                <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                  <i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
                </div>
                <span class="nav-link-text ms-1">Dashboard</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link " href="serviceprovider.jsp">
                <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                  <i class="ni ni-calendar-grid-58 text-warning text-sm opacity-10"></i>
                </div>
                <span class="nav-link-text ms-1">Service Providers</span>
              </a>
            </li>
            <li class="nav-item ">
              <a class="nav-link  active" href="user-tabel.jsp">
                <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                  <i class="ni ni-calendar-grid-58 text-warning text-sm opacity-10"></i>
                </div>
                <span class="nav-link-text ms-1">Users</span>
              </a>
            </li>


            <%-- <li class="nav-item mt-3">
              <h6 class="ps-4 ms-2 text-uppercase text-xs font-weight-bolder opacity-6">Account pages</h6>
            </li>
            <li class="nav-item">
              <a class="nav-link " href="../pages/profile.html">
                <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                  <i class="ni ni-single-02 text-dark text-sm opacity-10"></i>
                </div>
                <span class="nav-link-text ms-1">Profile</span>
              </a>
            </li> --%>

          </ul>
        </div>
      </aside>
      <main class="main-content position-relative border-radius-lg ">
        <!-- Navbar -->
        <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl " id="navbarBlur" data-scroll="false">
          <div class="container-fluid py-1 px-3">
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
                <li class="breadcrumb-item text-sm"><a class="opacity-5 text-white" href="javascript:;">Admin</a></li>
                <li class="breadcrumb-item text-sm text-white active" aria-current="page">Dashboard</li>
              </ol>
              <h6 class="font-weight-bolder text-white mb-0">Dashboard</h6>
            </nav>
            <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
              <ul class="navbar-nav">
           <li class="nav-item d-flex align-items-center">
              <a href="../admin-index.html" class="nav-link text-white font-weight-bold px-0">
                <i class="fa fa-user me-sm-1"></i>
                <span class="d-sm-inline d-none">Home </span>
              </a>
            </li>
            <li class="nav-item d-flex align-items-center">
              <a href="../aaboutus.html" class="nav-link text-white font-weight-bold px-0">
                <span class="d-sm-inline d-none">About </span>
              </a>
            </li>
          </ul>
            </div>
          </div>
        </nav>
      <!-- End Navbar -->
    
      <div class="container-fluid py-4">
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-body">
                        <p class="text-uppercase text-sm">User Information</p>
                        <div class="row">
                            <% 
                            String email = request.getParameter("em"); 
                            Connection con = null;
                            Statement stmt = null;
                            ResultSet rs = null;
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/homeservice", "root", "8423");
                                stmt = con.createStatement();
                                rs = stmt.executeQuery("select * from user where email_address='" + email + "'");
                                if (rs.next()) 
                                { 
                            
                            %>
                            
                  <form action="updateUser.jsp" method="post">
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
                      <label for="example-text-input" class="form-control-label">Password</label>
                      <input class="form-control" type="text" value="<%=rs.getString(4) %>" name="password">
                      </div>
                      </div>
                    </div>
                    <div class="row mt-4">
                    <div class="col-md-6">
                        <button class="btn btn-primary btn-block" type="submit"> Update</button>
                      </div>
                </form>
            <div class="col-md-6">
             <button class="btn btn-danger btn-block" onclick="confirmDelete('<%= java.net.URLEncoder.encode(email, "UTF-8") %>')">Delete</button>

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
  <script>
    function confirmDelete(encodedEmail) {
        Swal.fire({
            title: "Are you sure?",
            text: "You won't be able to revert this!",
            icon: "warning",
            showCancelButton: true,
            confirmButtonColor: "#3085d6",
            cancelButtonColor: "#d33",
            confirmButtonText: "Yes, delete it!"
        }).then((result) => {
            if (result.isConfirmed) {
                // Redirect to the deletion endpoint
                window.location.href = "deleteUser.jsp?em=" + encodedEmail;
            }
        });
    }
</script>
</script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
   
   
</body>
</html>
  </body>

  </html>