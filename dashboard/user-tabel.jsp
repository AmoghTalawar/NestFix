<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <%-- <link rel="icon" type="image/png" href="../assets/img/favicon.png"> --%>
  <title> Dashboard </title>
  <!-- Fonts and icons -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
  <!-- Nucleo Icons -->
  <link href="../assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <!-- CSS Files -->
  <link id="pagestyle" href="../assets/css/argon-dashboard.css?v=2.0.4" rel="stylesheet" />

  <style>
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
  </style>
</head>

<body class="g-sidenav-show bg-gray-100">
  <div class="min-height-300 bg-primary position-absolute w-100"></div>
  <aside class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 " id="sidenav-main">
   <img src="NestFix-removebg-preview.png" class="navbar-brand-img h-100" alt="main_logo">
    <div class="sidenav-header">
      <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
      <a class="navbar-brand m-0" href="" target="_blank">
        <span class="ms-1 font-weight-bold"> Dashboard</span>
      </a>
    </div>
    <hr class="horizontal dark mt-0">
    <div class="collapse navbar-collapse w-auto " id="sidenav-collapse-main">
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
        <li class="nav-item">
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
          <a class="nav-link " href="">
            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-single-02 text-dark text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Profile</span>
          </a> --%>
        </li>

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
        <div class="col-12">
          <div class="card mb-4">
            <div class="card-header pb-0">
              <h6>Users</h6>
            </div>
            <div class="card-body px-0 pt-0 pb-2">
              <div class="table-responsive p-0">
                <table class="table align-items-center mb-0">
                  <thead>
                    <tr>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Users </th>
                      <th class="text-center-custom text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Phone Number</th>
                      <th class="text-center-custom text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Email</th>
                      <th class="text-center-custom text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Password</th>
                      <th class="text-secondary opacity-7"></th>
                    </tr>
                  </thead>
                  <tbody>
                  <% 
                                            Connection con = null; 
                                            Statement stmt = null; 
                                            ResultSet rs = null; 
                                            try { 
                                                Class.forName("com.mysql.jdbc.Driver");
                                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/homeservice", "root", "8423"); 
                                                stmt = con.createStatement();
                                                rs = stmt.executeQuery("SELECT * FROM user");
                                                while(rs.next()) { 
                                        %>

                    <tr>
                      <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm">
                                                            <%= rs.getString(1) %>
                                                        </h6>
                            <p class="text-xs text-secondary mb-0"></p>
                          </div>  
                        </div>
                      </td>

                      <td class="align-middle text-center-custom text-sm">
                        <span class="text-xs text-secondary mb-0">
                                                    <%= rs.getString(2) %>
                                                </span>

                      </td>
                      <td class="align-middle text-center-custom">
                        <span class="text-xs text-secondary mb-0">
                                                    <%= rs.getString(3) %>
                                                </span>
                      <td class="align-middle text-center-custom">
                        <span class="text-xs text-secondary mb-0">
                                                    <%= rs.getString(4) %>
                                                </span>
                      </td>

                      <td class="align-middle">
                      <a href="editUser.jsp?em=<%= rs.getString(3) %>" class="text-secondary font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Edit user">
        Edit
    </a>
</td>
                    </tr>
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

                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Core JS Files and other scripts -->

</body>

</html>
