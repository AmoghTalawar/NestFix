<%@page import="java.sql.*" %>

<% 
        String email = request.getParameter("em"); 
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
                            
        try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/homeservice", "root", "8423");
                stmt = con.createStatement();    
                int k=stmt.executeUpdate("delete from user where email_address='"+email+"' ");
  %>
    <script>
    alert("Deleted Successfuly !!!");
    </script>
    <%
  }
  catch(Exception e)
  {
   out.println(e);
  }

%>
<jsp:forward page="user-tabel.jsp" />




