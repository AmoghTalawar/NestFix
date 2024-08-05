<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title></title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="style.css">
  <!-- Fontawesome icon -->
  <link
  rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css
"
/>
<link
  rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
/>
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
        background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.8)), url(images/contact_banner.png);      
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
    .contact-bg h3{
    font-size: 1.3rem;
    font-weight: 400;
}
.contact-bg h2{
    font-size: 3rem;
    text-transform: uppercase;
    padding: 0.4rem 0;
    letter-spacing: 4px;
}
.line{
  margin-left: 44%;
}
.line div{
    margin: 0 0.2rem;
}
.line div:nth-child(1),
.line div:nth-child(3){
    height: 3px;
    width: 70px;
    background: #f44336;
    border-radius: 5px;
}
.line{
    display: flex;
    align-items: center;
}
.line div:nth-child(2){
    width: 10px;
    height: 10px;
    background: #f44336;
    border-radius: 50%;
}
.text{
    font-weight: 300;
    opacity: 0.9;
}
.contact-bg .text{
    margin: 1.6rem 0;
}
.contact-body{
    max-width: 1320px;
    margin: 0 auto;
    padding: 0 1rem;
}
.contact-info{
    margin: 2rem 0;
    text-align: center;
    padding: 2rem 0;
}
.contact-info span{
    display: block;
}
.contact-info div{
    margin: 0.8rem 0;
    padding: 1rem;
}
.contact-info span .fas{
    font-size: 2rem;
    padding-bottom: 0.9rem;
    color: #f44336;
}
.contact-info div span:nth-child(2){
    font-weight: 500;
    font-size: 1.1rem;
}
.contact-info .text{
    padding-top: 0.4rem;
}
.contact-form{
    padding: 2rem 0;
    border-top: 1px solid #c7c7c7;
}
.contact-form form{
    padding-bottom: 1rem;
}
.form-control{
    width: 100%;
    border: 1.5px solid #c7c7c7;
    border-radius: 5px;
    padding: 0.7rem;
    margin: 0.6rem 0;
    font-family: 'Open Sans', sans-serif;
    font-size: 1rem;
    outline: 0;
}
.form-control:focus{
    box-shadow: 0 0 6px -3px rgba(48, 48, 48, 1);
}
.contact-form form div{
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    column-gap: 0.6rem;
}
.send-btn{
    font-family: 'Open Sans', sans-serif;
    font-size: 1rem;
    text-transform: uppercase;
    color: #fff;
    background: #f44336;
    border: none;
    border-radius: 5px;
    padding: 0.7rem 1.5rem;
    cursor: pointer;
    transition: all 0.4s ease;
}
.send-btn:hover{
    opacity: 0.8;
}
.contact-form > div img{
    width: 85%;
}
.contact-form > div{
    margin: 0 auto;
    text-align: center;
}



nav {
    display: flex;
    padding: 2% 6%;
    justify-content: space-between;
    align-items: center;
}

nav img {
    width: 150px;
}

.nav-links {
    float: 1;
    padding-top: 20px;
    text-align: right;
}

.nav-links ul li {
    list-style: none;
    display: inline-block;
    padding: 8px 12px;
    position: relative;


}

.nav-links ul li a {
    color: white;
    font-size: 20px;
    text-decoration: none;
}
.nav-links ul li a:active{
    border-bottom: 2px orangered;

}

.nav-links ul li::after {
    content: '';
    width: 0%;
    height: 2px;
    background: #f44336;
    display: block;
    margin: auto;
    transition: 0.5s;
}

.nav-links ul li:hover::after {
    width: 100%;
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
      <h3>Get in Touch with Us</h3>
      <h2>contact us</h2>
      <div class="line">
        <div></div>
        <div></div>
        <div></div>
      </div>
    </div>

    <div class = "contact-body">
        <div class = "contact-info">
          <div>
            <span><i class = "fas fa-mobile-alt"></i></span>
            <span>Phone No.</span>
            <span class = "text">9731250288</span>
          </div>
          <div>
            <span><i class = "fas fa-envelope-open"></i></span>
            <span>E-mail</span>
            <span class = "text">NestFix07@gmail.com</span>
          </div>
          <div>
            <span><i class = "fas fa-map-marker-alt"></i></span>
            <span>Address</span>
            <span class = "text">Vidyanagr, Hubli, Karanataka</span>
          </div>
          <div>
            <span><i class = "fas fa-clock"></i></span>
            <span>Opening Hours</span>
            <span class = "text">Monday - Friday (9:00 AM to 5:00 PM)</span>
          </div>
        </div>
        <div class = "contact-form">
          <form action="https://formsubmit.co/nestfix07@gmail.com" method="POST">
              <div>
                <input type = "text" class = "form-control" placeholder="First Name" name="First Name">
                <input type = "text" class = "form-control" placeholder="Last Name" name="Last Name">
              </div>
              <div>
                <input type = "email" class = "form-control" placeholder="E-mail" name="Email">
                <input type = "text" class = "form-control" placeholder="Phone" name="Phone Number">
              </div>
              <textarea rows = "5" placeholder="Message" class = "form-control" name="Subject"></textarea>
              <input type = "submit" class = "send-btn" value = "send message">
            </form>
  
            <div>
              <img src = "images/contact-png.png" alt = "">
            </div>
          </div>
    </div>

    <div class="map">
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30776.988827150813!2d75.11000620699886!3d15.369790830768212!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bb8d735b36a91c7%3A0xb0bf47bcf5489c8b!2sVidya%20Nagar%2C%20Hubballi%2C%20Karnataka%2C%20India!5e0!3m2!1sen!2snp!4v1709979523325!5m2!1sen!2snp" width="100%" height="450" frameborder="0"  style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>

    
  </section>

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
</body>
</html>
