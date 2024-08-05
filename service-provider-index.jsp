<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NestFix</title>


    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?? family=Poppins: wght@100;200;300; 400;600;700&display=swap!! rel="
        stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css
    ">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    <link rel="stylesheet" href="css/lqd-essentials.min.css">
    <link rel="stylesheet" href="css/theme.min.css">
    <link rel="stylesheet" href="css/utility.min.css">
    <link rel="stylesheet" href="css/asymmetric-9.css">

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
    <link
        href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@400;500&amp;family=Playfair+Display&amp;family=IBM+Plex+Sans:wght@500;600;700&amp;family=Space+Grotesk:wght@400;700&amp;display=swap"
        rel="stylesheet">

    <style>
     .lqd-animator-value {
            margin-bottom: 5px;
        }
        a {
            color: black;
        }

        a:hover {
            color: white;
        }

        h4 {
            font-size: medium;
        }

        footer {
            height: auto;
            /* Adjust as needed */
            width: 100%;
            border-top: 1.5px solid white;
            background-color: #454646;
            padding: 50px 0;
            display: flex;
            justify-content: space-around;
            align-items: flex-start;

        }

        .panel {
            color: white;
            margin: 0 20px;
            /* Adjust margins as needed */
            text-align: center;
        }

        .panel h3 {
            font-size: x-large;
            color: beige;
            /* Adjust as needed */
            margin-bottom: 20px;
        }

        .panel ul {
            padding: 0;
            list-style: none;
        }

        .panel ul li {
            margin-bottom: 20px;
            /* Adjust as needed */
        }

        .panel ul li a {
            font-size: larger;
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
            color: #55acee;
            /* Change to appropriate color */
        }

        /* Animation */
        .fade-in {
            opacity: 0;
            animation: fadeIn 1s forwards;
        }

        @keyframes fadeIn {
            to {
                opacity: 1;
            }
        }

        .block {
            margin-bottom: 30px;
        }

        .carousel-item-content p {
            color: white;
            font-size: medium;
        }

        .lqd-animator-value {
            margin-bottom: 5px;
        }
        .nav-links {
    margin-left: 22%;
    float: 1;
    padding-top: 15px;
    text-align: right;
}

    </style>
</head>

<body class="lqd-cc-outer-hidden" data-lqd-cc="true" data-mobile-nav-breakpoint="1199" data-mobile-nav-style="modern"
    data-mobile-nav-scheme="dark" data-mobile-nav-trigger-alignment="right" data-mobile-header-scheme="gray"
    data-mobile-logo-alignment="default" data-mobile-header-builder="true" data-overlay-onmobile="false"
    data-disable-animations-onmobile="true">

    <section class="header">
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


        <div class="text-box">
            <h1 style="color: white;">Home Service Provider</h1>
            <p>"Welcome to NestFix, your go-to for home services. From repairs to installations, we've got you covered.
                Our skilled team ensures top-quality work.<br> so you can relax knowing your home is in good hands. Get
                started today for hassle-free solutions."</p>
            <a href="saboutus.jsp?email<%=em%>" class="hero-btn">Visit Us To Know More</a>
        </div>

    </section>

    


    </div>

    <section class="lqd-section our-services py-10" id="our-services">
        <div class="container">
            <div class="row">
                <div class="w-45percent relative flex justify-between sm:w-full module-col">
                    <div class="relative w-190 module-img-1">
                        <div class="mt-55 lqd-imggrp-single block relative" data-shadow-style="2"
                            data-animate-shadow="true" data-inview="true"
                            data-inview-options="{&quot;delayTime&quot; :200}">
                            <div class="lqd-imggrp-img-container inline-flex relative items-center justify-center">
                                <figure class="w-full relative rounded-2">
                                    <img class="rounded-2" width="281" height="297" src="images/acre.jpeg"
                                        alt="what we do">
                                </figure>
                            </div>
                        </div>
                    </div>
                    <div class="relative w-230 module-img-2">
                        <div class="lqd-imggrp-single block relative" data-shadow-style="4" data-animate-shadow="true"
                            data-inview="true" data-inview-options="{&quot;delayTime&quot; :300}">
                            <div class="lqd-imggrp-img-container inline-flex relative items-center justify-center">
                                <figure class="w-full relative rounded-2">
                                    <img class="rounded-2" width="347" height="446" src="images/cub.png" alt="what we do">
                                </figure>
                            </div>
                        </div>
                    </div>
                    <div class="absolute top-45percent max-w-full z-1 module-img-3">
                        <div class="lqd-imggrp-single block relative" data-shadow-style="1" data-animate-shadow="true"
                            data-inview="true">
                            <div class="lqd-imggrp-img-container inline-flex relative items-center justify-center">
                                <figure class="w-full relative rounded-2">
                                    <img class="rounded-2" width="222" height="426" src="images/elerem.jpeg"
                                        alt="what we do">
                                </figure>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="w-55percent pl-10percent sm:w-full sm:p-0" data-custom-animations="true"
                    data-ca-options="{&quot;animationTarget&quot;: &quot;.animation-element&quot;, &quot;ease&quot;: &quot;back.out&quot;, &quot;initValues&quot;: {&quot;x&quot;: &quot;30px&quot;, &quot;rotationY&quot; :30, &quot;opacity&quot; : 0} , &quot;animations&quot;: {&quot;x&quot;: &quot;0px&quot;, &quot;rotationY&quot; :0, &quot;opacity&quot; : 1}}">
                    <div class="flex justify-start items-center">
                        <span
                            class=" text-14 font-bold uppercase leading-1em tracking-1 text-black border-2 rounded-100 whitespace-nowrap py-0/6em px-1em mr-10 hover:bg-black hover:text-white animation-element">
                            <a href="contactus.html" class="">
                                Send a message
                            </a>
                        </span>
                        <a href="contactus.html">
                            <span class="btn-icon w-1em">
                                <svg xmlns="http://www.w3.org/2000/svg" width="10.625" height="10.625"
                                    viewBox="0 0 10.625 10.625">
                                    <path d="M-1.76-11.322H5.313V-4.25H3.885V-8.932L-4.316-.7l-1-1,8.2-8.234H-1.76Z"
                                        transform="translate(5.313 11.322)"></path>
                                </svg>
                            </span>
                        </a>
                    </div>

                    <div class="ld-fancy-heading relative animation-element">
                        <h3 class="ld-fh-element text-30 leading-1/2em mt-0/75em mb-1em  inline-block relative">
                            NestFix offers a complete range of solutions to meet your home needs.</h3>
                    </div>
                    <div class="ld-fancy-heading relative animation-element">
                        <h6 class="ld-fh-element text-16 mb-1em  inline-block relative">01 <u class="ml-15">
                                <a href="saboutus.jsp?email<%=em%>">About Us</a></u></h6>
                    </div>

                    <div class="ld-fancy-heading relative animation-element">
                        <h6 class="ld-fh-element text-16 mb-1em  inline-block relative">02<u class="ml-15"><a
                                    href="sservices.jsp?email<%=em%>">Services</a> </u></h6>
                    </div>

                    <div class="ld-fancy-heading relative animation-element">
                        <h6 class="ld-fh-element text-16 mb-1em  inline-block relative">03<u class="ml-15"><a
                                    href="scontactus.jsp?email<%=em%>">Contact Us</a></u></h6>
                    </div>

                </div>
            </div>
        </div>
    </section>

    <section class="lqd-section solutions pt-160 pb-80" data-custom-animations="true"
        data-ca-options="{&quot;animationTarget&quot;: &quot;.animation-element&quot;, &quot;ease&quot;: &quot;back.out&quot;, &quot;initValues&quot;: {&quot;y&quot;: &quot;50px&quot;, &quot;z&quot;: &quot;50px&quot;, &quot;rotationY&quot; :20, &quot;opacity&quot; : 0} , &quot;animations&quot;: {&quot;y&quot;: &quot;0px&quot;, &quot;z&quot;: &quot;0px&quot;, &quot;rotationY&quot; :0, &quot;opacity&quot; : 1}}">
        <div class="container">
            <div class="row">
                <div class="col col-12 col-xl-3">
                    <div class="flex flex-col items-start module-title">
                        <div
                            class="w-auto  py-5 px-10 rounded-4 bg-gray text-center ld-fancy-heading relative animation-element">
                            <h6 class="ld-fh-element text-10 font-bold uppercase tracking-1 m-0  inline-block relative">
                                The process</h6>
                        </div>
                        <div class="ld-fancy-heading relative module-title animation-element">
                            <h2 class="ld-fh-element text-32 mt-1em mb-0/5em  inline-block relative">How It
                                Works</h2>
                        </div>
                    </div>
                </div>
                <div class="col col-12 col-xl-9">
                    <div class="flex gap-60 sm:flex-wrap module-box">
                        <div class="w-full flex flex-col">
                            <div class="ld-fancy-heading relative animation-element">
                                <h2 class="ld-fh-element text-15 tracking-0 mb-1/25em  inline-block relative">
                                    <span class="text-24 pr-10">01</span>
                                    <span class="font-normal pr-5">/</span>
                                    <span>Explore</span>
                                </h2>
                            </div>
                            <div class="ld-fancy-heading relative animation-element">
                                <p class="ld-fh-element mb-0/5em inline-block relative text-13 leading-16">
                                    We have all the required services for your home. Choose the preferred
                                    services by inquiring with us</p>
                            </div>
                        </div>
                        <div class="w-full flex flex-col">
                            <div class="ld-fancy-heading relative animation-element">
                                <h2 class="ld-fh-element text-15 tracking-0 mb-1/25em  inline-block relative">
                                    <span class="text-24 pr-10">02</span>
                                    <span class="font-normal pr-5">/</span>
                                    <span>Register</span>
                                </h2>
                            </div>
                            <div class="ld-fancy-heading relative animation-element">
                                <p class="ld-fh-element mb-0/5em inline-block relative text-13 leading-16">
                                    Initiate our service with a simple Sign up. </p>
                            </div>
                        </div>
                        <div class="w-full flex flex-col">
                            <div class="ld-fancy-heading relative animation-element">
                                <h2 class="ld-fh-element text-15 tracking-0 mb-1/25em  inline-block relative">
                                    <span class="text-24 pr-10">03</span>
                                    <span class="font-normal pr-5">/</span>
                                    <span>Book The Service</span>
                                </h2>
                            </div>
                            <div class="ld-fancy-heading relative animation-element">
                                <p class="ld-fh-element mb-0/5em inline-block relative text-13 leading-16">
                                    Get the service according to your preference.</p>
                            </div>
                        </div>
                        <div class="w-full flex flex-col">
                            <div class="ld-fancy-heading relative animation-element">
                                <h2 class="ld-fh-element text-15 tracking-0 mb-1/25em  inline-block relative">
                                    <span class="text-24 pr-10">04</span>
                                    <span class="font-normal pr-5">/</span>
                                    <span>Relax</span>
                                </h2>
                            </div>
                            <div class="ld-fancy-heading relative animation-element">
                                <p class="ld-fh-element mb-0/5em inline-block relative text-13 leading-16">
                                    You can chill while our experts take charge of your home for the
                                    selected service.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>












    <!-- --------------------CATGEORY-------------------------- -->

    <section>

        <h1>Quick Home Services</h1>
        <div class="services">
            <div class="cont1">
                <a href="#"><img src="images/driill.png" alt=""></a>

            </div>
            <div class="cont2">
                <a href="#"> <img src="images/fan.png" alt=""></a>

            </div>
            <div class="cont3">
                <a href="#"><img src="images/switch.png" alt=""></a>

            </div>
            <div class="cont4">
                <a href="#"><img src="images/cub.png" alt=""></a>

            </div>
            <div class="cont5">
                <a href="#"><img src="images/door.png" alt=""></a>

            </div>
        </div>

        <div class="desc desc">
            <div class="content1">
                <a href="" id="ser">
                    <div class="title">
                        <h4>Drill & Hang (Wall Decor)</h4>
                    </div>
                    <div class="star">
                        <i class="fa-solid fa-star fa-2xs" style="color: #384743;"></i> &nbsp;4.86 (1.2k)
                    </div>
                    <div class="price">
                        <i class="fa-solid fa-indian-rupee-sign fa-xs"></i> 500
                    </div>
                </a>
            </div>

            <div class="content2">
                <a href="" id="ser">
                    <div class="title">
                        <h4>Fan Repair</h4>
                    </div>
                    <div class="star">
                        <i class="fa-solid fa-star fa-2xs" style="color: #384743;"></i> &nbsp;4.81 (1.8k)
                    </div>
                    <div class="price">
                        <i class="fa-solid fa-indian-rupee-sign fa-xs"></i> 599
                    </div>
                </a>
            </div>

            <div class="content3">
                <a href="" id="ser">
                    <div class="title">
                        <h4>Switch/Scocket Replacement</h4>
                    </div>
                    <div class="star">
                        <i class="fa-solid fa-star fa-2xs" style="color: #384743;"></i> &nbsp;4.86 (1.5k)
                    </div>
                    <div class="price">
                        <i class="fa-solid fa-indian-rupee-sign fa-xs"></i> 250
                    </div>
                </a>
            </div>
            <div class="content4">
                <a href="" id="ser">
                    <div class="title">
                        <h4>Cupboard service</h4>
                    </div>
                    <div class="star">
                        <i class="fa-solid fa-star fa-2xs" style="color: #384743;"></i> &nbsp;4.83 (11.2k)
                    </div>
                    <div class="price">
                        <i class="fa-solid fa-indian-rupee-sign fa-xs"></i> 500
                    </div>
                </a>
            </div>

            <div class="content5">
                <a href="" id="ser">
                    <div class="title">
                        <h4>Door lock Repair</h4>
                    </div>
                    <div class="star">
                        <i class="fa-solid fa-star fa-2xs" style="color: #384743;"></i> &nbsp;4.84 (4.2k)
                    </div>
                    <div class="price">
                        <i class="fa-solid fa-indian-rupee-sign fa-xs"></i> 199
                    </div>

            </div>
            </a>
        </div>

        <div class="banner">
           
        </div>



        <h1>AC Services</h1>
        <div class="services">
            <div class="serv1">
                <a href="#"><img src="images/ac1.png" alt=""></a>

            </div>
            <div class="serv2">
                <a href="#"> <img src="images/ac2.png" alt=""></a>

            </div>
            <div class="serv3">
                <a href="#"><img src="images/ac3.jpg" alt=""></a>

            </div>
            <div class="serv4">
                <a href="#"><img src="images/ac4.png" alt=""></a>

            </div>
            <div class="serv5">
                <a href="#"><img src="images/ac5.png" alt=""></a>

            </div>
        </div>

        <div class="desc desc">
            <div class="content1">
                <a href="" id="ser">
                    <div class="title">
                        <h4>AC Repair</h4>
                    </div>
                    <div class="star">
                        <i class="fa-solid fa-star fa-2xs" style="color: #384743;"></i> &nbsp;4.86 (1.2k)
                    </div>
                    <div class="price">
                        <i class="fa-solid fa-indian-rupee-sign fa-xs"></i> 1000
                    </div>
                </a>
            </div>

            <div class="content2">
                <a href="" id="ser">
                    <div class="title">
                        <h4>Washing Machine Repair</h4>
                    </div>
                    <div class="star">
                        <i class="fa-solid fa-star fa-2xs" style="color: #384743;"></i> &nbsp;4.81 (1.8k)
                    </div>
                    <div class="price">
                        <i class="fa-solid fa-indian-rupee-sign fa-xs"></i> 999
                    </div>
                </a>
            </div>

            <div class="content3">
                <a href="" id="ser">
                    <div class="title">
                        <h4>Water Purifier</h4>
                    </div>
                    <div class="star">
                        <i class="fa-solid fa-star fa-2xs" style="color: #384743;"></i> &nbsp;4.86 (1.5k)
                    </div>
                    <div class="price">
                        <i class="fa-solid fa-indian-rupee-sign fa-xs"></i> 699
                    </div>
                </a>
            </div>
            <div class="content4">
                <a href="" id="ser">
                    <div class="title">
                        <h4>Geyser Repair</h4>
                    </div>
                    <div class="star">
                        <i class="fa-solid fa-star fa-2xs" style="color: #384743;"></i> &nbsp;4.83 (11.2k)
                    </div>
                    <div class="price">
                        <i class="fa-solid fa-indian-rupee-sign fa-xs"></i> 599
                    </div>
                </a>
            </div>

            <div class="content5">
                <a href="" id="ser">
                    <div class="title">
                        <h4>Chimneny Repair</h4>
                    </div>
                    <div class="star">
                        <i class="fa-solid fa-star fa-2xs" style="color: #384743;"></i> &nbsp;4.84 (4.2k)
                    </div>
                    <div class="price">
                        <i class="fa-solid fa-indian-rupee-sign fa-xs"></i> 599
                    </div>

            </div>
            </a>
        </div>


    </section>



    <!-- ------------------SERV ---------- -->


     <section class="lqd-section section-dark max-w-full bg-dark px-75 pb-80">

        <!-- Start Our Vision -->
        <section class="lqd-section our-vision pt-80 min-h-70vh">
            <div class="absolute w-full max-w-full bottom-0 pointer-events-none">
                <div class="lqd-throwable-scene relative pointer-events-none overflow-hidden"
                    data-lqd-throwable-scene="true" data-throwable-options="{&quot;roundness&quot;: &quot;7em&quot;}">


                    <p class="lqd-throwable-element inline-block absolute top-0 left-0 whitespace-nowrap m-0 pointer-events-auto user-select-none module-float-3"
                        data-lqd-throwable-el="">
                        <span
                            class="text-black py-0/25em px-1/5em text-22 leading-1/5em rounded-100 lqd-throwable-element-rot inline-block sm:text-16">Painting</span>
                    </p>

                    <p class="lqd-throwable-element inline-block absolute top-0 left-0 whitespace-nowrap m-0 pointer-events-auto user-select-none module-float-6"
                        data-lqd-throwable-el="">
                        <span
                            class="text-black py-0/25em px-1/5em text-22 leading-1/5em rounded-100 lqd-throwable-element-rot inline-block sm:text-16">water
                            Purifier</span>
                    </p>
                    <p class="lqd-throwable-element inline-block absolute top-0 left-0 whitespace-nowrap m-0 pointer-events-auto user-select-none module-float-7"
                        data-lqd-throwable-el="">
                        <span
                            class="text-black py-0/25em px-1/5em text-22 leading-1/5em rounded-100 lqd-throwable-element-rot inline-block sm:text-16">carpentry</span>
                    </p>

                    <p class="lqd-throwable-element inline-block absolute top-0 left-0 whitespace-nowrap m-0 pointer-events-auto user-select-none module-float-8"
                        data-lqd-throwable-el="">
                        <span
                            class="text-black py-0/25em px-1/5em text-22 leading-1/5em rounded-100 lqd-throwable-element-rot inline-block sm:text-16">
                            Switch Board Replacement</span>
                    </p>

                    <p class="lqd-throwable-element inline-block absolute top-0 left-0 whitespace-nowrap m-0 pointer-events-auto user-select-none module-float-8"
                        data-lqd-throwable-el="">
                        <span
                            class="text-black py-0/25em px-1/5em text-22 leading-1/5em rounded-100 lqd-throwable-element-rot inline-block sm:text-16">Flooring
                        </span>
                    </p>

                    <p class="lqd-throwable-element inline-block absolute top-0 left-0 whitespace-nowrap m-0 pointer-events-auto user-select-none module-float-8"
                        data-lqd-throwable-el="">
                        <span
                            class="text-black py-0/25em px-1/5em text-22 leading-1/5em rounded-100 lqd-throwable-element-rot inline-block sm:text-16">Washing
                            Machine Repair
                        </span>
                    </p>
                    <p class="lqd-throwable-element inline-block absolute top-0 left-0 whitespace-nowrap m-0 pointer-events-auto user-select-none module-float-8"
                        data-lqd-throwable-el="">
                        <span
                            class="text-black py-0/25em px-1/5em text-22 leading-1/5em rounded-100 lqd-throwable-element-rot inline-block sm:text-16">Fan
                            Repair </span>
                    </p>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col col-12 mb-220">
                        <div class="mb-30 lqd-imggrp-single block relative">
                            <div class="lqd-imggrp-img-container inline-flex relative items-center justify-center">
                                <figure class="w-full relative">
                                    <img width="48" height="10" src="images/shape.svg" alt="shape">
                                </figure>
                            </div>
                        </div>
                        <h3 class="lqd-text-reveal-el mb-40 text-74 font-semibold leading-0/9em -tracking-3 text-white"
                            data-split-text="true" data-split-options="{&quot;type&quot;: &quot;words, chars&quot;}"
                            data-parallax="true"
                            data-parallax-options="{&quot;parallaxTargets&quot;: &quot;.lqd-chars, figure&quot;, &quot;start&quot;: &quot;top bottom&quot;, &quot;end&quot;: &quot;center 75%&quot;, &quot;scrub&quot; : 3}"
                            data-parallax-from="{&quot;opacity&quot; :0.2}"
                            data-parallax-to="{&quot;opacity&quot; :1, &quot;stagger&quot;: {&quot;from&quot;: &quot;start&quot;, &quot;each&quot; : 1}}">
                            <span class="lqd-adv-txt-item">
                                <span>NestFix Home Services : Where the artistry of care and the elegance of expertise
                                    come together to adorn </span>
                                <span class="vertical-align-top mx-5 lqd-adv-txt-fig relative inline-flex">
                                    <img class="h-auto max-w-full border-none rounded-0" width="62" height="62"
                                        src="images/Img-2.png" alt="shape">
                                </span>
                            </span>
                            <span class="lqd-adv-txt-item">
                                <span> your home with beauty and serenity.</span>
                                <span class="vertical-align-top mx-5 lqd-adv-txt-fig relative inline-flex">
                                    <img class="h-auto max-w-full border-none rounded-0" width="62" height="62"
                                        src="images/Img-1.png" alt="shape">
                                </span>
                            </span>
                            <span class="lqd-adv-txt-item">the best digital experience in the field.</span>
                        </h3>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Our Vision -->




        <!-- Start Services -->
        <section class="lqd-section services bg-white rounded-10 mb-90">
            <div class="container">
                <div class="row">
                    <div class="col col-12 text-start" data-custom-animations="true"
                        data-ca-options="{&quot;animationTarget&quot;: &quot;.animation-element&quot;, &quot;ease&quot;: &quot;back.out&quot;, &quot;direction&quot;: &quot;backward&quot;, &quot;initValues&quot;: {&quot;x&quot;: &quot;-100px&quot;, &quot;opacity&quot; : 0} , &quot;animations&quot;: {&quot;x&quot;: &quot;0px&quot;, &quot;opacity&quot; : 1}}">
                        <div class="w-full flex flex-wrap justify-between items-center pt-35">
                            <div
                                class="ld-fancy-heading relative lg:w-50percent sm:w-full module-title animation-element">
                                <h2 class="ld-fh-element text-28 m-0  inline-block relative">Services</h2>
                            </div>
                            <div class="divider w-full max-w-full mt-10 py-15">
                                <span class="w-full border-bottom border-black-50"></span>
                            </div>
                        </div>
                    </div>
                    <div class="col col-12 pt-55 pb-70 px-10 module-col" data-custom-animations="true"
                        data-ca-options="{&quot;animationTarget&quot;: &quot;.animation-element&quot;, &quot;ease&quot;: &quot;back.out&quot;, &quot;direction&quot;: &quot;backward&quot;, &quot;initValues&quot;: {&quot;y&quot;: &quot;100px&quot;, &quot;opacity&quot; : 0} , &quot;animations&quot;: {&quot;y&quot;: &quot;0px&quot;, &quot;opacity&quot; : 1}}">
                        <div class="accordion accordion-title-underlined accordion-sm animation-element"
                            id="accordion-services" role="tablist" aria-multiselectable="true">
                            <div class="accordion-item panel active">
                                <div class="accordion-heading" role="tab" id="heading-item-one">
                                    <h4 class="accordion-title font-normal">
                                        <a class="collapsed" role="button" data-bs-toggle="collapse"
                                            href="#collapse-item-one" aria-expanded="true"
                                            aria-controls="collapse-item-one">
                                            <span class="accordion-title-txt"><b>Home Cleaning</b></span>
                                            <span
                                                class="accordion-expander text-24 w-60 h-60 flex items-center justify-center p-0 border-2 rounded-full  border-lightgray flex-shrink-0">
                                                <i class="lqd-icn-ess icon-ion-ios-add"></i>
                                                <i class="lqd-icn-ess icon-ion-ios-remove"></i>
                                            </span>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse-item-one" class="accordion-collapse collapse show"
                                    data-bs-parent="#accordion-services" role="tabpanel"
                                    aria-labelledby="heading-item-one">
                                    <div class="accordion-content py-1em">
                                        <div class="flex flex-wrap items-end">
                                            <div
                                                class="w-40percent flex flex-wrap align-content-end items-end gap-0 pr-150 sm:w-full module-content">
                                                <div
                                                    class="lqd-counter relative lqd-counter-default -mb-20 text-black w-auto">
                                                    <div class="lqd-counter-element relative font-medium mb-0"
                                                        data-enable-counter="true"
                                                        data-counter-options="{&quot;targetNumber&quot;: &quot;6&quot;}">
                                                        <span class="block">6</span>
                                                    </div>
                                                </div>
                                                <div class="ld-fancy-heading relative">
                                                    <span
                                                        class="ld-fh-element inline-block relative text-16 leading-20 mb-2em italic text-gray-500 xl:m-0">Years
                                                        of<br>experience</span>
                                                </div>
                                                <div class="ld-fancy-heading relative mt-10">
                                                    <p class="ld-fh-element mb-0/5em inline-block relative">

                                                        Home cleaning services offer a convenient and efficient solution for maintaining cleanliness and hygiene in residential spaces. These services encompass a wide range of tasks, including dusting, vacuuming, mopping, surface disinfection, and bathroom sanitization. Professional cleaners utilize specialized equipment, eco-friendly cleaning products, and efficient techniques to ensure thorough and effective cleaning without compromising the health and safety of occupants or the environment. Whether it's regular maintenance cleaning, deep cleaning for special occasions, or move-in/move-out cleaning, home cleaning services can be tailored to suit the specific needs and preferences of homeowners.</p>
                                                </div>
                                            </div>
                                            <div class="w-60percent sm:w-full sm:order-first">
                                                <div class="lqd-imggrp-single block relative">
                                                    <div
                                                        class="lqd-imggrp-img-container inline-flex relative items-center justify-center">
                                                        <figure class="w-full relative">
                                                            <img width="1038" height="614" src="images/homecleanbanner.jpeg"
                                                                alt="services">
                                                        </figure>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item panel"> 
                                <div class="accordion-heading" role="tab" id="heading-item-three">
                                    <h4 class="accordion-title font-normal">
                                        <a class="collapsed" role="button" data-bs-toggle="collapse"
                                            href="#collapse-item-three" aria-expanded="false"
                                            aria-controls="collapse-item-three">
                                            <span class="accordion-title-txt"> <b>AC Services</b></span>
                                            <span
                                                class="accordion-expander text-24 w-60 h-60 flex items-center justify-center p-0 border-2 rounded-full  border-lightgray flex-shrink-0">
                                                <i class="lqd-icn-ess icon-ion-ios-add"></i>
                                                <i class="lqd-icn-ess icon-ion-ios-remove"></i>
                                            </span>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse-item-three" class="accordion-collapse collapse"
                                    data-bs-parent="#accordion-services" role="tabpanel"
                                    aria-labelledby="heading-item-three">
                                    <div class="accordion-content py-1em">
                                        <div class="flex flex-wrap items-end">
                                            <div
                                                class="w-40percent flex flex-wrap align-content-end items-end gap-0 pr-150 sm:w-full module-content">
                                                <div
                                                    class="lqd-counter relative lqd-counter-default -mb-20 text-black w-auto">
                                                    <div class="lqd-counter-element relative font-medium mb-0"
                                                        data-enable-counter="true"
                                                        data-counter-options="{&quot;targetNumber&quot;: &quot;6&quot;}">
                                                        <span class="block">6</span>
                                                    </div>
                                                </div>
                                                <div class="ld-fancy-heading relative">
                                                    <span
                                                        class="ld-fh-element inline-block relative text-16 leading-20 mb-2em italic text-gray-500 xl:m-0">Years
                                                        of<br>experience</span>
                                                </div>
                                                <div class="ld-fancy-heading relative mt-10">
                                                    <p class="ld-fh-element mb-0/5em inline-block relative">
                                                        AC services are vital for maintaining optimal comfort and air quality in residential, commercial, and industrial spaces. These services encompass a range of tasks aimed at ensuring the efficient operation and longevity of air conditioning systems. Professional AC service providers offer installation, repair, maintenance, and tune-up services to address various needs and challenges associated with cooling systems. From routine inspections and filter replacements to diagnosing and repairing mechanical issues, AC technicians play a critical role in keeping cooling systems running smoothly and efficiently</p>
                                                </div>
                                            </div>
                                            <div class="w-60percent sm:w-full sm:order-first">
                                                <div class="lqd-imggrp-single block relative">
                                                    <div
                                                        class="lqd-imggrp-img-container inline-flex relative items-center justify-center">
                                                        <figure class="w-full relative">
                                                            <img width="1038" height="614" src="images/ac.jpg"
                                                                alt="services">
                                                        </figure>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item panel"> 
                                <div class="accordion-heading" role="tab" id="heading-item-three">
                                    <h4 class="accordion-title font-normal">
                                        <a class="collapsed" role="button" data-bs-toggle="collapse"
                                            href="#collapse-item-three" aria-expanded="false"
                                            aria-controls="collapse-item-three">
                                            <span class="accordion-title-txt"> <b>Electrical</b></span>
                                            <span
                                                class="accordion-expander text-24 w-60 h-60 flex items-center justify-center p-0 border-2 rounded-full  border-lightgray flex-shrink-0">
                                                <i class="lqd-icn-ess icon-ion-ios-add"></i>
                                                <i class="lqd-icn-ess icon-ion-ios-remove"></i>
                                            </span>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse-item-three" class="accordion-collapse collapse"
                                    data-bs-parent="#accordion-services" role="tabpanel"
                                    aria-labelledby="heading-item-three">
                                    <div class="accordion-content py-1em">
                                        <div class="flex flex-wrap items-end">
                                            <div
                                                class="w-40percent flex flex-wrap align-content-end items-end gap-0 pr-150 sm:w-full module-content">
                                                <div
                                                    class="lqd-counter relative lqd-counter-default -mb-20 text-black w-auto">
                                                    <div class="lqd-counter-element relative font-medium mb-0"
                                                        data-enable-counter="true"
                                                        data-counter-options="{&quot;targetNumber&quot;: &quot;6&quot;}">
                                                        <span class="block">6</span>
                                                    </div>
                                                </div>
                                                <div class="ld-fancy-heading relative">
                                                    <span
                                                        class="ld-fh-element inline-block relative text-16 leading-20 mb-2em italic text-gray-500 xl:m-0">Years
                                                        of<br>experience</span>
                                                </div>
                                                <div class="ld-fancy-heading relative mt-10">
                                                    <p class="ld-fh-element mb-0/5em inline-block relative">
                                                        Electrical services are essential for ensuring the safety, functionality, and efficiency of residential and commercial properties. These services encompass a wide range of tasks, including installation, repair, maintenance, and inspection of electrical systems and components. From wiring and lighting installations to panel upgrades, surge protection, and troubleshooting electrical issues, professional electricians play a crucial role in maintaining the integrity and reliability of electrical infrastructure. With their expertise and use of advanced techniques and equipment, electrical service providers ensure that properties are equipped with safe and reliable electrical systems.</p>
                                                </div>
                                            </div>
                                            <div class="w-60percent sm:w-full sm:order-first">
                                                <div class="lqd-imggrp-single block relative">
                                                    <div
                                                        class="lqd-imggrp-img-container inline-flex relative items-center justify-center">
                                                        <figure class="w-full relative">
                                                            <img width="1038" height="614" src="images/ele.png"
                                                                alt="services">
                                                        </figure>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- End Services -->

        <!-- Start Section Flow -->


        <!-- End Section Flow -->

        <!-- Start Testimonials -->
        <section class="lqd-section testimonials text-white mb-80" id="testimonials" data-custom-animations="true"
            data-ca-options="{&quot;animationTarget&quot;: &quot;.animation-element&quot;, &quot;ease&quot;: &quot;back.out&quot;, &quot;direction&quot;: &quot;backward&quot;, &quot;initValues&quot;: {&quot;y&quot;: &quot;100px&quot;, &quot;opacity&quot; : 0} , &quot;animations&quot;: {&quot;y&quot;: &quot;0px&quot;, &quot;opacity&quot; : 1}}">
            <div class="container">
                <div class="row">
                    <div class="w-full flex flex-col items-start flex-wrap p-0">
                        <div
                            class="ld-fancy-heading relative leading-1/5em px-10 bg-lightgray rounded-4 animation-element">
                            <h6 class="ld-fh-element inline-block relative text-10 font-bold uppercase tracking-1 m-0">
                                Testimonials</h6>
                        </div>
                        <div class="w-full flex flex-wrap flex-grow-1 items-center justify-start">
                            <div class="ld-fancy-heading relative animation-element">
                                <h2 class="ld-fh-element inline-block relative text-white text-68 mr-0/5em mb-0">
                                    Customer stories</h2>
                            </div>

                            <div class="divider w-full max-w-full items-center py-30 animation-element">
                                <h5 class="text-14 uppercase tracking-1 text-white mr-20 mb-0">Testimonials
                                </h5>
                                <span class="divider-separator items-center"></span>
                            </div>
                        </div>
                    </div>
                    <div class="w-full flex items-center justify-start flex-wrap"></div>
                    <div class="w-55percent flex flex-col flex-wrap md:w-full">
                        <div class="lqd-imggrp-single block relative mb-25 animation-element">
                            <div class="lqd-imggrp-img-container inline-flex relative items-center justify-center">
                                <figure class="w-full relative">
                                    <img width="26" height="26" src="images/Quote.svg" alt="testimonials">
                                </figure>
                            </div>
                        </div>
                        <div
                            class="carousel-container relative carousel-nav-left carousel-nav-sm carousel-nav-shaped carousel-nav-solid carousel-nav-circle carousel-nav-left carousel-dots-inside carousel-dots-mobile-outside carousel-dots-mobile-left animation-element">
                            <div class="carousel-items relative"
                                data-lqd-flickity="{&quot;prevNextButtons&quot;: true, &quot;navArrow&quot;: &quot;6&quot;, &quot;pageDots&quot;: true, &quot;dotsIndicator&quot;: &quot;numbers&quot;, &quot;numbersStyle&quot;: &quot;circle&quot;, &quot;dotsAppendTo&quot;: &quot;#testimonial-carousel-dots-holder&quot;, &quot;cellAlign&quot;: &quot;left&quot;, &quot;groupCells&quot;: false, &quot;buttonsAppendTo&quot;: &quot;self&quot;, &quot;addSlideNumbersToArrows&quot;: false}">

                                <div class="carousel-item flex flex-col justify-center">
                                    <div class="carousel-item-inner relative w-full mb-20">
                                        <div
                                            class="carousel-item-content relative w-full text-20 text-white leading-1em">
                                            <p>NestFix saved the day when our bathroom started flooding due to a leaky
                                                pipe. Their plumber, was quick to arrive and
                                                fixed the issue efficiently. We're so grateful for NestFix's prompt
                                                service!.</p>
                                        </div>
                                    </div>
                                </div>

                                <div class="carousel-item flex flex-col justify-center">
                                    <div class="carousel-item-inner relative w-full mb-20">
                                        <div
                                            class="carousel-item-content relative w-full text-20 text-white leading-1em">
                                            <p>"Delighted with the home cleaning service from NestClean! Lisa from NestClean provided exceptional service, ensuring every corner of our home sparkled. Professional, efficient, and thorough we're delighted with the results!"
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item flex flex-col justify-center">
                                    <div class="carousel-item-inner relative w-full mb-20">
                                        <div
                                            class="carousel-item-content relative w-full text-20 text-white leading-1em">
                                            <p>"Absolutely thrilled with the electrical service provided by NestFix! Ritu and her team were exceptional in their work, completing the job swiftly and leaving our home in impeccable condition. Highly recommended!"</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item flex flex-col justify-center">
                                    <div class="carousel-item-inner relative w-full mb-20">
                                        <div
                                            class="carousel-item-content relative w-full text-20 text-white leading-1em">
                                            <p>I had a pest problem at home that was driving me crazy. NestFix's pest
                                                control team, led by Anil, came to the rescue. They were thorough, and
                                                now my home is pest-free. Thank you, Housejoy!</p>
                                        </div>
                                    </div>
                                </div>

                                <div class="carousel-item flex flex-col justify-center">
                                    <div class="carousel-item-inner relative w-full mb-20">
                                        <div
                                            class="carousel-item-content relative w-full text-20 text-white leading-1em">
                                            <p>I am happy and satisfied with water proofing done at my villa.</p>
                                        </div>
                                    </div>
                                </div>



                            </div>
                        </div>
                    </div>
                    <div class="w-45percent relative flex items-center justify-center flex-wrap md:hidden"
                        id="testimonial-carousel-dots-holder">
                    </div>
                </div>
            </div>
        </section>
        <!-- End Testimonials -->





        <!-- Start custom cursor -->
        <div class="lqd-cc lqd-cc--inner fixed pointer-events-none"></div>
        <div
            class="lqd-cc--el lqd-cc-solid lqd-cc-explore flex items-center justify-center rounded-full fixed pointer-events-none">
            <div class="lqd-cc-solid-bg flex absolute lqd-overlay"></div>
            <div class="lqd-cc-solid-txt flex justify-center text-center relative">
                <div class="lqd-cc-solid-txt-inner">Explide</div>
            </div>
        </div>
        <div
            class="lqd-cc--el lqd-cc-solid lqd-cc-drag flex items-center justify-center rounded-full fixed pointer-events-none">
            <div class="lqd-cc-solid-bg flex absolute lqd-overlay"></div>
            <div class="lqd-cc-solid-ext lqd-cc-solid-ext-left inline-flex items-center">
                <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32"
                    style="width: 1em; height: 1em;">
                    <path fill="currentColor"
                        d="M19.943 6.07L9.837 14.73a1.486 1.486 0 0 0 0 2.25l10.106 8.661c.96.826 2.457.145 2.447-1.125V7.195c0-1.27-1.487-1.951-2.447-1.125z">
                    </path>
                </svg>
            </div>
            <div class="lqd-cc-solid-txt flex justify-center text-center relative">
                <div class="lqd-cc-solid-txt-inner">Drag</div>
            </div>
            <div class="lqd-cc-solid-ext lqd-cc-solid-ext-right inline-flex items-center">
                <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32"
                    style="width: 1em; height: 1em;">
                    <path fill="currentColor"
                        d="M11.768 25.641l10.106-8.66a1.486 1.486 0 0 0 0-2.25L11.768 6.07c-.96-.826-2.457-.145-2.447 1.125v17.321c0 1.27 1.487 1.951 2.447 1.125z">
                    </path>
                </svg>
            </div>
        </div>
        <div class="lqd-cc--el lqd-cc-arrow inline-flex items-center fixed top-0 left-0 pointer-events-none">
            <svg width="80" height="80" viewBox="0 0 80 80" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M60.4993 0V4.77005H8.87285L80 75.9207L75.7886 79.1419L4.98796 8.35478V60.4993H0V0H60.4993Z">
                </path>
            </svg>
        </div>
        <div class="lqd-cc--el lqd-cc-custom-icon rounded-full fixed pointer-events-none">
            <div class="lqd-cc-ci inline-flex items-center justify-center rounded-full relative">
                <svg width="32" height="32" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32"
                    style="width: 1em; height: 1em;">
                    <path fill="currentColor" fill-rule="evenodd" clip-rule="evenodd"
                        d="M16.03 6a1 1 0 0 1 1 1v8.02h8.02a1 1 0 1 1 0 2.01h-8.02v8.02a1 1 0 1 1-2.01 0v-8.02h-8.02a1 1 0 1 1 0-2.01h8.02v-8.01a1 1 0 0 1 1.01-1.01z">
                    </path>
                </svg>
            </div>
        </div>
        <div class="lqd-cc lqd-cc--outer fixed top-0 left-0 pointer-events-none"></div>
        <!-- End custom cursor -->

    </section>








    <script>
        AOS.init();
    </script>

    <script src="js/jquery.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/fastdom.min.js"></script>
    <script src="js/fresco.js"></script>
    <script src="js/lity.min.js"></script>
    <script src="js/gsap.min.js"></script>
    <script src="js/CustomEase.min.js"></script>
    <script src="js/ScrollTrigger.min.js"></script>
    <script src="js/fontfaceobserver.js"></script>
    <script src="js/SplitText.min.js"></script>
    <script src="js/flickity.pkgd.min.js"></script>
    <script src="js/matter.min.js"></script>
    <script src="js/liquidThrowable.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/packery-mode.pkgd.min.js"></script>
    <script src="js/liquidSectionFlow.min.js"></script>
    <script src="js/flickity-fade.min.js"></script>
    <script src="js/liquidBodyClip.min.js"></script>
    <script src="js/particles.min.js"></script>
    <script src="js/tinycolor-min.js"></script>
    <script src="js/liquid-gdpr.min.js"></script>
    <script src="js/theme.min.js"></script>
    <script src="js/liquid-ajax-contact-form.min.js"></script>


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