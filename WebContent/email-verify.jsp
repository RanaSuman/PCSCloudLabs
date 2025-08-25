<%@ page import="com.dao.SignUpBean" %>
<%
    String email = request.getParameter("email");
    String code = request.getParameter("code");
    String message = "Invalid verification code!";
    
    if (email != null && code != null) {
        SignUpBean user = new SignUpBean();
        boolean verified = user.verifyUser(email, code);

        if (verified) {
            message = "Email verified successfully! You can now login.";
        }
    }
%>
<html>
<head><title>Verify Email</title></head>
<body>
    <h2><%= message %></h2>
    <a href="index.jsp">Go to Login</a>
</body>
</html>
