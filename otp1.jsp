<%@ page import="java.sql.*" %>
<%
String email = request.getParameter("email");

Connection con = null;
Statement stmt = null;
ResultSet rs = null;

try {
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/homeservice", "root", "8423");
    stmt = con.createStatement();

     String query = "SELECT email_address FROM user WHERE email_address='" + email + "' " +
                   "UNION " +
                   "SELECT email_address FROM service_provider WHERE email_address='" + email + "'";
    
    rs = stmt.executeQuery(query);

    if (rs.next()) {
%>
<!DOCTYPE html>
<html>
<head>
	<title>Reset Password</title>
	<link rel="stylesheet" href="otp.css">
	<script src="https://smtpjs.com/v3/smtp.js"></script>
</head>
<body>
	<div class="form">
		 <img src="images/NestFix-removebg-preview.png" alt="NestFix Logo">
		<input type="email" readonly id="email" value="<%out.print(rs.getString(1));%>">
		<div class="otpverify">
			<input type="text" id="otp_inp" t1placeholder="Enter the OTP sent to your Email...">
			<button class="btn" id="otp-btn">Verify</button>
		</div>
		<button class="btn" onclick="otpSend()">Send OTP</button>
	</div>
	<script src="otp.js"></script>
</body>
</html>
<%
    } else 
    {
%>
    <script>
        alert("Email not registered");
        window.location.href = "login.html";
    </script>
<%
    }
} catch (Exception e) {
    out.println(e);
}
%>
