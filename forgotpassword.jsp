<%@page import="java.sql.*"%>
<%
  String s1 = request.getParameter("email");

  Connection con = null;
  Statement stmt = null;
  ResultSet rs = null;
  
  try { 
     Class.forName("com.mysql.jdbc.Driver");
     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/homeservice", "root", "8423");
     stmt = con.createStatement();
  
     String query = "SELECT email_address FROM user WHERE email_address = ? " +
                    "UNION " +
                    "SELECT email_address FROM service_provider WHERE email_address = ?";
     PreparedStatement ps = con.prepareStatement(query);
     ps.setString(1, s1);
     ps.setString(2, s1);
     rs = ps.executeQuery();
  
     if (rs.next()) {
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Reset Password</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
    <link rel="stylesheet" href="pass.css">
</head>
<body>
    <div class="A">
        <div class="B">
            <img src="images/NestFix-removebg-preview.png" alt="NestFix Logo">
            <form method="post" action="reset.jsp">
                <input type="hidden" readonly name="email" placeholder="Enter registered email_id" value="<%= rs.getString(1) %>">
                
                <label for="newPassword">New Password</label>
                <input type="password" id="newPassword" name="newPassword" required>
                <label for="confirmPassword">Confirm Password</label>
                <input type="password" id="confirmPassword" name="confirmPassword" required>
                <button type="submit">Reset Password</button>
            </form>
        </div>
    </div>
</body>
</html>

<%
    } else {
%>
    <script>
        alert("Email not registered");
        window.location.href = "login.html";
    </script>
<%
    }
  } catch(Exception e) {
      out.println(e);
  } finally {
      // close resources in finally block
      try { if(rs != null) rs.close(); } catch(Exception e) {}
      try { if(stmt != null) stmt.close(); } catch(Exception e) {}
      try { if(con != null) con.close(); } catch(Exception e) {}
  }
%>
