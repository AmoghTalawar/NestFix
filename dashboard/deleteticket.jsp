<%@page import="java.sql.*" %>

<%

  String bookid=request.getParameter("r");


Connection con;
   Statement stmt;
   ResultSet rs;     
  
   try
   {
     Class.forName("com.mysql.jdbc.Driver");
     con=DriverManager.getConnection("jdbc:mysql://localhost:3306/homeservice","root","8423");
    stmt=con.createStatement();
  int k=stmt.executeUpdate("delete from viewbooking where booking_id='"+bookid+"' ");

    %>
  <script>
    alert("Ticket has been Closed");
  </script>
<jsp:forward page="bookintable.jsp" />
<%

  }
  catch(Exception e)
  {
   out.println(e);
  }

%>




