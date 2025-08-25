package com.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.dao.pojo.User;

import database.DBUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/loginservlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        Connection connection = null;
        try {
        	connection = DBUtil.getConnection();
            String sql = "SELECT * FROM user WHERE email = ?";
            PreparedStatement pstm = connection.prepareStatement(sql);
            pstm.setString(1, email);
            ResultSet rs = pstm.executeQuery();

            if (rs.next()) {
                String dbPassword = rs.getString("password"); 
                //boolean isVerified = rs.getBoolean("isVerified");
                String userNumber = rs.getString("phone_number");
                String name = rs.getString("name");
                String address = rs.getString("address");
                
                User user = new User(name,address,email,userNumber);

                if (password.equals(dbPassword)) {
                    // Login successful
                	req.getSession().setAttribute("LoginUser", user);
                    req.getSession().setAttribute("userEmail", email);
                    req.getSession().setAttribute("userNumber", userNumber);
                    req.getSession().setAttribute("loginMessage", "Login successful!");
                    req.getSession().setAttribute("loginMessageColor", "green");
                    resp.sendRedirect("index.jsp");
                } else {
                    // Incorrect password
                    req.getSession().setAttribute("loginMessage", "Invalid credentials.");
                    req.getSession().setAttribute("loginMessageColor", "red");
                    resp.sendRedirect("login.jsp");
                }
            } else {
                // No user found with that email
                req.getSession().setAttribute("loginMessage", "Email not registered.");
                req.getSession().setAttribute("loginMessageColor", "red");
                resp.sendRedirect("login.jsp");
            }


        } catch (Exception e) {
            e.printStackTrace();
            req.getSession().setAttribute("loginMessage", "Server error. Please try again later.");
            req.getSession().setAttribute("loginMessageColor", "red");
            resp.sendRedirect("login.jsp");
        }finally {
			DBUtil.closeConnection(connection);
		}
    }
}
