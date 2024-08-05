<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.util.logging.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error Logs</title>
</head>
<body>
    <h1>Error Logs</h1>
    <% 
        try {
            File file = new File("logs/error.log");
            BufferedReader br = new BufferedReader(new FileReader(file));
            String line;
            while ((line = br.readLine()) != null) {
    %>
                <%= line %><br>
    <%
            }
            br.close();
        } catch (IOException e) {
            out.println("Error reading log file: " + e.getMessage());
        }
    %>
</body>
</html>
