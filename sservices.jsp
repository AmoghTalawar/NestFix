<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title></title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
  <link rel="stylesheet" href="style.css">
  <link
  rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css
"
/>
<link
  rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
/>
  <!-- Fontawesome icon -->
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700;800&display=swap');

    *{
        box-sizing: border-box;
        padding: 0;
        margin: 0;
    }
    body{
        font-family: 'Open Sans', sans-serif;
    }
    .contact-bg{
        height: 50vh;
        background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.8)), url(images/slider1.png);      
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: cover;
        text-align: center;
        color: #fff;
        /* background-position:100%; */
        /* display: flex; */
        flex-direction: column;
        justify-content: center;
        align-items: center;
        /* padding: 20px; */
    }
.contact-bg h2{
    font-size: 3rem;
    margin-bottom: 50px ;
    text-transform: uppercase;
    padding: 0.4rem 0;
    letter-spacing: 4px;
}




       .container {
    max-width: 1200px;
    margin: 100px auto;
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    grid-gap: 20px;
    padding: 20px;
   
}
.container h3{
  margin-bottom: 28px;
}


        .card {
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1); 
    transition: transform 0.3s;
    overflow: hidden;
}

.card:hover {
    transform: translateY(-5px); 
}

.card img {
    width: 100%;
    height: 250px; 
    object-fit: cover; 
    border-top-left-radius: 5px; 
    border-top-right-radius: 5px;
}

        .card-content {
            margin-top: 20px;
        }
      
        .hidden-text {
            background-color: rgba(0, 0, 0, 0.7);
            color: #fff;
            padding: 10px;
            margin-top: 10px;
            border-radius: 5px;
            opacity: 0;
            transition: opacity 0.3s, transform 0.3s;
            transform: translateY(100%);
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
        }

        .card:hover .hidden-text {
            opacity: 1;
            transform: translateY(0);
        }

        .card:hover p {
            display: none; 
        }
        
        h4{
            color: white;
        }
        ol{
            margin-left: 15px;
        }
        ol li a { 
            text-decoration: none;
            color: white;
        }
        ol li a:hover { 
            text-decoration: underline;
            color: white;
        }
        p{
            color: rgb(12, 11, 11);
        }
        footer {
    height: auto; 
    width: 100%;
    background-color: #423f3f;
    padding: 50px 0;
    display: flex;
    justify-content: space-around;
    align-items: flex-start;
  }
  
  .panel {
    color: white;
    margin: 0 20px; 
    text-align: center;
  }
  
  .panel h3 {
    font-size: 1.2rem; 
    margin-bottom: 20px;
  }
  
  .panel ul {
    padding: 0;
    list-style: none;
  }
  
  .panel ul li {
    margin-bottom: 10px; 
  }
  
  .panel ul li a {
    color: white;
    text-decoration: none;
  }
  
  .panel ul li a:hover {
    text-decoration: underline;
  }
  
  .social-links {
    display: flex;
    justify-content: center;
    align-items: center;
  }
  
  .social-links li {
    margin: 0 10px;
  }
  
  .social-links li a {
    color: white;
    font-size: 1.5rem;
  }
  
  .social-links li a:hover {
    color: #55acee; /* Change to appropriate color */
  }
  a:active{
    border-bottom:  2px orangered;
  }
                .nav-links {
    margin-left: 25%;
    float: 1;
    padding-top: 15px;
    text-align: right;
}
  </style>
</head>
<body>


  <section class="contact-section">
    <div class="contact-bg">
       <nav>
            <a href="index.html"><img src="images/logo2.png"></a>
            <div class="nav-links" id="navLinks">
                <i class="fa fa-close" onclick="hideMenu()"></i>
                <ul>
                         <% 
                          String em = (String) session.getAttribute("em");
                        



                    Connection con = null; 
                    Statement stmt = null; 
                    ResultSet rs = null; 

     try { 
         Class.forName("com.mysql.jdbc.Driver");
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/homeservice", "root", "8423"); 
         stmt = con.createStatement();
         rs = stmt.executeQuery("SELECT * FROM service_provider where email_address='"+ em+"'");
         %>
                    <li><a href="service-provider-index.jsp?email<%=em%>">HOME</a></li>
                    <li><a href="saboutus.jsp?email<%=em%>">ABOUT US</a></li>
                    <li><a href="sservices.jsp?email<%=em%>">SERVICES </a></li>
                    <li><a href="scontactus.jsp?email<%=em%>">CONTACT</a></li>
                    <li><a href="book.jsp?email<%=em%>">BOOKING </a><li>
                    


                           <li><a href="login.html">Logout</a></li>
                     
                    
                </ul>
            </div>
            <%
         while(rs.next()) 
         { 
 %>

                   <a href="sprofile.jsp?email=<%= rs.getString(3) %>"><img src="images/usericon.png" alt="" style="height: 105px;
    width: 105px;
    padding-top: 15px;
    margin-bottom: 15px;"></a>

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
            
            
            
        </nav>
      <h2>Services</h2>
      <div class="line">
        <div></div>
        <div></div>
        <div></div>
      </div>
    </div>
  </section>
    
  <div class="container" data-aos="fade-up" data-aos-duration="700">
    <div class="card">
      <img src="images/homecleanbanner.jpeg" alt="Plumber">
      <div class="card-content">
          <h3>Home Cleaning</h3>
          <p>Whether you need a one-time deep clean or regular maintenance cleaning, we are here to help. Sit back, relax, and let us handle the dirty work so you can enjoy a clean and comfortable home.</p>
          <div class="hidden-text">
              <h4>Available Services</h4>
              <ol type="1">
                  <li><a href="#">Basic Home Cleaning</a></li>
                  <li><a href="#">Sofa Cleaning</a></li>
                  <li><a href="#">Bathroom Cleaning</a> </li>
              </ol>
          </div>
      </div>
  </div>
    <div class="card">
        <img src="images/ele.png" alt="Plumber">
        <div class="card-content">
            <h3>Electrical</h3>
            <p>"We're the current that powers your life's circuit, illuminating your world with reliable and efficient electrical service.</p>
            <div class="hidden-text">
                <h4>Available Services</h4>
                <ol type="1">
                    <li><a href="#">Fan Repair</a></li>
                    <li><a href="#">Switch Scocket Replacement</a></li>
                    <li><a href="#">Repairs and Maintenance</a> </li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card" >
        <img src="images/acre.jpeg" alt="Plumber">
        <div class="card-content">
            <h3>AC</h3>
            <p>"From scorching heat to blissful chill, our AC service delivers icy-cool comfort, keeping you relaxed all year round."


            </p>
            <div class="hidden-text">
                <h4>Available Services</h4>
                <ol type="1">
                    <li><a href="#">Ac Services</a></li>
                    <li><a href="#">Ac Installation & Unstallation</a></li>
                    <li><a href="#l">Ac Gas Refill </a></li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card" >
        <img src="images/plumber.jpeg.jpg" alt="Plumber">
        <div class="card-content">
            <h3>Plumber</h3>
            <p>Flowing solutions with every twist and turn, our plumbing service keeps your home's heartbeat steady and strong."</p>
            <div class="hidden-text">
                <h4>Available Services</h4>
                <ol type="1">
                    <li><a href="#">Water pipe connection</a></li>
                    <li><a href="#">Plumbing Hardware Supplier</a></li>
                    <li><a href="#">Pipe Repair and Replacement</a></li>
                </ol>
            </div>
        </div>
    </div>
    


    <div class="card">
        <img src="images/carpenter.jpeg.jpg" alt="">
        <div class="card-content">
            <h3>Carpentry </h3>
            <p>Crafting dreams into reality, our carpentry service shapes spaces with precision, turning visions into tangible beauty.</p>
            <div class="hidden-text">
                <h4>Available Services</h4>
                <ol type="1">
                    <li><a href="#">Cabinet</a></li>
                    <li><a href="#">Cupboard & drawer</a></li>
                    <li><a href="#">Drill & hang</a></li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card" >
        <img src="images/painting.jpeg.jpg" alt="">
        <div class="card-content">
            <h3>Painting</h3>
            <p>Brushing life with vibrant hues, our painting service transforms walls into canvases of inspiration, adding color to your world.</p>
            <div class="hidden-text">
                <h4>Available Services</h4>
                <ol type="1">
                    <li><a href="#">Interior Painting</a></li>
                    <li><a href="#">Exterior Painting</a></li>
                    <li><a href="#">Water proofing </a></li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card" >
        <img src="images/secuity.jpeg.jpg" alt="">
        <div class="card-content">
            <h3>Home Security Services</h3>
            <p>In the heart of your home, our security service whispers assurance, cocooning loved ones in safety's embrace.</p>
            <div class="hidden-text">
                <h4>Available Services</h4>
                <ol type="1">
                    <li><a href="#">Surveillance cameras</a></li>
                    <li><a href="#">Wireless Security Systems</a></li>
                    <li><a href="#">Video doorbell</a></li>
                </ol>
            </div>
        </div>
    </div>
  </div>
    <section>
      <footer>
        <div class="panel">
            <h3>Company</h3>
            <ul>
                <li><a href="service-provider-index.jsp">Home</a></li>
                <li><a href="saboutus.html">About Us</a></li>
                <li><a href="scontactus.html">Contact Us</a></li>
                <li><a href="sservices.html">Services</a></li>
            </ul>
        </div>

        <div class="panel">
            <h3>Services</h3>
            <ul>
                <li><a href="sservices.html">Home Cleaning</a></li>
                <li><a href="sservices.html">Electrical</a></li>
                <li><a href="sservices.html">AC Services</a></li>
    
            </ul>
        </div>

        <div class="panel">
            <h3>Contact</h3>
            <ul>
                <li>Vidyanagr</li>
                <li>Hubli, India</li>
                <li>Email: NestFix@example.com</li>
            </ul>
        </div>

        <div class="panel">
            <h3>Social Media</h3>
            <ul class="social-links">
                <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
            </ul>
        </div>
    </footer>
    </section>



    <script>
        AOS.init();
      </script>
</body>
</html>
