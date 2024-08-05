<%@page  import="java.sql.*"%>
<%
  String s1;
  s1=request.getParameter("email");


  Connection con;
  Statement stmt;
  try
   { 
     Class.forName("com.mysql.jdbc.Driver");
  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/homeservice","root","8423");
  stmt=con.createStatement();
  ResultSet rs=stmt.executeQuery("select * from user where email_address='"+s1+"' ");
  
  if(rs.next()){
    %>
<html>
<head>
    <link rel="stylesheet" href="otp.css">
    <center><img class="i1" src="logo.png" height="150" width="400" ></center>
</head>
<body>
    <div class="form">
        <form action="reset.jsp" method="post">
            <input type="hidden" readonly name="email" placeholder="Enter registered email_id" value="<%out.print(rs.getString(3));%>"><br>
            <input type="password" name="p1" value="" placeholder="Enter new password"><br>
            <input type="password" name="p2" value="" placeholder="Re-Enter password"><br>
            <button class="btn" type="submit">Reset</button>
        </form>
    </div>
</body>
</html>
<%
}else{
    %>
    <script>
        alert("Email not registerd");
        window.location.href="login.html";
    </script>
    
    <%
  }
  }
  
  catch(Exception e)
  {
  out.println(e);
    }
%>
