<%@ page import="java.sql.*" %>
<!DOCTYPE html>

<html>
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title></title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- <link rel="stylesheet" href="astyle2.css" /> -->
    <link rel="stylesheet" href="style.css">
    <!-- Fontawesome icon -->
    <link href="https://fonts.googleapis.com/css?? family=Poppins:
    wght@100;200;300; 400;600;700&display=swap!! rel=" stylesheet">
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css
    "
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
    />
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <style>
      @import url("https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700;800&display=swap");

      * {
        box-sizing: border-box;
        padding: 0;
        margin: 0;
      }

      body {
        font-family: "Open Sans", sans-serif;
      }

      .contact-bg {
        height: 60vh;
        background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.8)),
          url(images/contact_banner.png);
        background-repeat: no-repeat;
        background-attachment: fixed;
        text-align: center;
        color: #fff;
        /* display: flex; */
        flex-direction: column;
        justify-content: center;
        align-items: center;
        /* padding: 20px; */
      }

      .second-bg {
        height: 456px;
        background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.8)),
          url(images/banner.jpg);
        background-repeat: no-repeat;
        background-attachment: fixed;
        text-align: center;
        background-size: cover;
        color: #fff;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        padding: 20px;
      }

      .contact-bg h3 {
        font-size: 1.3rem;
        font-weight: 400;
      }
      
      .contact-bg h2 {
        margin-top: 40px;
        font-size: 3rem;
        text-transform: uppercase;
        padding: 0.4rem 0;
        letter-spacing: 4px;
      }

      .container1 {
        width: 100%;
        height: fit-content;
        background-color: #424242;
        color: white;
      }

      .container1 h4 {
        color: red;
        padding-top: 60px;
        font-size: xx-large;
      }
      .box2 p {
        text-align: center;
        padding: 10px;
      }

      .container1 p {
        text-align: center;
        padding: 50px;
        color: #fff;
        font-size: 15px;
        line-height: 2;
        margin-left: 50px;
      }

      .container2 {
        display: flex;
        padding-right: 50px;
        background-color: #424242;
        justify-content: center;
        align-items: flex-start;
        /* Align items to the start */
        text-align: center;
      }

      .container3 {
        display: flex;
        padding-right: 50px;
        background-color: #424242;
        align-items: flex-start;
      }
      .container4 {
        display: flex;
        background-color: #424242;
        align-items: flex-start;
        height: 690px;
      }
      .box1 {
        padding-top: 20px;
        height: 600px;
        width: 790px;
        /* background-color: black; */
        background-image: url(images/elerem.jpeg);
        background-repeat: no-repeat;

        margin-left: 85px;
      }

      .box2 {
        height: 500px;
        width: 350px;
        margin: 10px auto;
        margin-right: -95px;
        background-color: rgb(31, 32, 32);
        color: #fff;
      }

      .box3 {

        height: 700px;
        width: 790px;
        background-color: black;
        background-image: url(images/acre.jpeg);
        background-size: cover;
        background-repeat: no-repeat;
        margin-top: 80px;
        margin-bottom: 60px;
        margin-left: 400px;
      }
      .box4 {
        height: 590px;
        width: 520px;
        margin-top: 50px;
        background-color: rgb(31, 32, 32);
        color: #fff;
        margin-left: -200px;
      }
      .box4 h6 {
        font-size: xx-large;
        padding: 50px 0px 0px;
        color: red;
      }
      .p1 {
        font-size: 16px;
        align-items: center;
        margin: bottom 52px;
        text-justify: auto;
        padding-left: 10px;
        padding-right: 10px;
      }

      .box2 h4 {
        color: #fff;
        padding-top: 80px;
        font-size: xx-large;
      }
      .p1 b {
        line-height: 60px;
      }
      .second-bg h5 {
        color: red;
      }
      .box2 div {
        margin-top: 30px;
        height: 2px;
        width: 75%;
        margin-left: 150px;
        background-color: white;
      }

      .box2 p {
        padding-top: 40px;
        text-align: center;
        justify-content: center;
        color: #fff;
      }
      .p1 {
        padding-top: 40px;
        text-align: center;
        justify-content: center;
        color: #fff;
        margin: auto;
      }
      .box4 hr {
        margin-left: 90px;
        margin-top: 20px;
      }
      .second-bg h5 {
        font-size: xx-large;
      }

      .pre2 {
        font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande",
          "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
        font-size: 20px;

        color: white;

        padding: 20px;
      }
      video {
        margin-top: 20px;
        width: 80%;
        height: fit-content;
        margin-left: 190px;
        border: yellow;
      }
      ul li img{
        height: 20px;
        width: fit-content;
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
        <h2>About us</h2>
      </div>
    </section>

    <div class="container1">
      <div data-aos="fade-down">
        <div class="profile">
          <center>
            <h4>About Us</h4>
          </center>

          <p>
            HomeService itself defines that it provides you range of services at
            your doorstep. Our dedicated and experienced team will satisfy the
            customers by fulfilling their requirements.We deliver our services
            wherever you want. We are well known for providing all kind of
            services at very lower cost compared to any other.
          </p>
        </div>
      </div>
    </div>

    <div class="container2">
      <div
        data-aos="fade-left"
        data-aos-anchor-placement="top-down"
        data-aos-mirror="true"
        data-aos-once="false"
      >
        <div class="box1">
          <div class="box2">
            <h4>About Us</h4>
            <div></div>
            <p>
              Home is a place where one can forget his worries about all kinds
              of problems. Many people have needs of services like Pest Control,
              Indoor and Outdoor Lighting, Plumbing, Home Appliance Repairs etc
              for which they usually get confuse about where to find these kinds
              of services. HomeService comes as a solution which saves time in
              searching for the best services provider in your city, because one
              can get all services here at one place which will be delivered you
              at your doorstep.
            </p>
          </div>
        </div>
      </div>
    </div>
    <div
      data-aos="fade-right"
      data-aos-anchor-placement="top-down"
      data-aos-mirror="true"
      data-aos-once="false"
    >
      <div class="container3">
        <div class="box3">
          <div class="box4">
            <center>
              <h6>Our Commitment</h6>
            </center>
            <hr />
            <p class="p1">
              <b> Quality:</b><br />
              We take pride in delivering top-notch services. Our team consists
              of skilled professionals who are passionate about their craft. We
              don’t compromise on quality.<br />
              <b>Transparency:</b> <br />No hidden fees or surprises. We believe
              in transparent pricing and clear communication. You’ll always know
              what to expect.<br />
              <b>Timeliness:</b><br />
              Your time matters. We value punctuality and strive to complete
              every job efficiently.<br />
              <b>Customer Satisfaction:</b> <br />Your satisfaction is our
              priority. We’re not satisfied until you are.
            </p>
          </div>
        </div>
      </div>
    </div>

    <div class="second-bg">
      <h5>Why Choose Us?</h5>
      <pre class="pre2">
        Convenience: Book services online at your convenience.
    Reliability: Trust our skilled professionals to deliver quality work.
    Customer Satisfaction: We prioritize your satisfaction and strive to exceed your expectations.
</pre
      >
    </div>

    <div class="container4">
      <div data-aos="fade-down">
        <video
          loop
          src="images/Revolutionize Your Home with NESTFIX!_1709921526858.mp4"
          muted
          class="object-fit-contain"
          autoplay
          controls
        ></video>
      </div>
    </div>

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

    <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
    <script>
      AOS.init();
    </script>
  </body>
</html>
