<%@ page import="com.dao.*, java.sql.* , database.*" %>
<jsp:useBean id="verifyBean" class="com.dao.VerifyBean" scope="page"/>
<jsp:setProperty name="verifyBean" property="email" param="email"/>
<jsp:setProperty name="verifyBean" property="verificationCode" param="code"/>

<%
    String message = null;
    String messageColor = "red"; // Default error color

    String email = (String) session.getAttribute("usersEmail");
    
    
    
    if (request.getMethod().equalsIgnoreCase("POST")) {
    	String code= request.getParameter("code");
        String verificationCode = (String)session.getAttribute("verificationCode");
        if(code.equals(verificationCode)){
            message = verifyBean.getMessage();
            messageColor = "green"; // Success message
            
            Connection connection = DBUtil.getConnection();
            
            String sql = "UPDATE user SET isVerified = ? WHERE email = ?";
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.setBoolean(1, true); // or false, depending on logic
            pstmt.setString(2, email);
            pstmt.executeUpdate();

        } 

        // Set session attributes for displaying messages
        session.setAttribute("verifyMessage", message);
        session.setAttribute("verifyMessageColor", messageColor);

        // Redirect to login page after verification
        response.sendRedirect("login.jsp");
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Email Verification</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #2782c2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            width: 350px;
            text-align: center;
        }
        .back-btn{
        	display:flex;
        	align-items:center;
        	width: 100px;
        	height: 30px;
        }
        .back-btn a{
        	text-decoration: none;
        	color: blue;
        }
        h2 {
            margin-bottom: 15px;
            color: #333;
        }
        .message {
            font-size: 14px;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 15px;
        }
        .success {
            background-color: #d4edda;
            color: #155724;
            border: 1px solid #c3e6cb;
        }
        .error {
            background-color: #f8d7da;
            color: #721c24;
            border: 1px solid #f5c6cb;
        }
        form {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }
        label {
            font-size: 14px;
            text-align: left;
        }
        input {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }
        button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px;
            font-size: 14px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="container">
    <div class="back-btn">
    	<a href="index.jsp">Home</a>
    </div>
        <h2>Email Verification</h2>

        <% if (session.getAttribute("verifyMessage") != null) { %>
            <p class="message <%= "green".equals(session.getAttribute("verifyMessageColor")) ? "success" : "error" %>">
                <%= session.getAttribute("verifyMessage") %>
            </p>
            <% session.removeAttribute("verifyMessage"); %>
            <% session.removeAttribute("verifyMessageColor"); %>
        <% } %>

        <form action="verify.jsp" method="post">
            <label>Email:</label>
            <input type="email" name="email" value="<%= email %>" required>

            <label>Verification Code:</label>
            <input type="text" name="code" placeholder="enter your Verification code..." required>

            <button type="submit">Verify</button>
            
            <p style="color: #555;">A verification email has been sent to your email. Please verify it.</p>
        </form>
    </div>

</body>
</html>
