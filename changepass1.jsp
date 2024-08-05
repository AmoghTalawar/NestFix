<%
  String email=request.getParameter("email");

  session.setAttribute("uemail",email);

%>

<jsp:forward page="changepass2.jsp" />
