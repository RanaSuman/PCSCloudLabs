  <%
    // Invalidate the session
    session.invalidate();
    // Redirect to the homepage or login page
    response.sendRedirect("index.jsp");
%>