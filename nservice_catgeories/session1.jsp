<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" %>
<%@ page import="java.util.UUID" %>

<%
try {
    String s1 = request.getParameter("job_description");
    String s2 = request.getParameter("booking_date");
    String s3 = request.getParameter("booking_time");
    String s4 = request.getParameter("serviceType");
    String s5 = request.getParameter("amount");

    session.setAttribute("job", s1);
    session.setAttribute("date", s2);
    session.setAttribute("time", s3);
    session.setAttribute("serviceType", s4);
    session.setAttribute("amount", s5);

    // Forward to another JSP page within the application
    // <jsp:forward page="booking.jsp" />
    request.getRequestDispatcher("booking-service.html").forward(request, response);
} catch (Exception e) 
{
    e.printStackTrace();
    request.setAttribute("errorMessage", "An unexpected error occurred: " + e.getMessage());
    request.getRequestDispatcher("error.jsp").forward(request, response);
}

%>
