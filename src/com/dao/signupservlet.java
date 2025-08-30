package com.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import database.DBUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class signupservlet extends HttpServlet {

	private static final long serialVersionUID = -4280077938373576278L;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String phone_number = req.getParameter("phone_number");
        String password = req.getParameter("password");
        String name = req.getParameter("name");
        String address = req.getParameter("address");
        String gender = req.getParameter("gender");
        
        System.out.println("shared address is: ---" + address);
        String message = null;
        String messageColor = "red";

        if (email != null && phone_number != null && password != null &&
            !email.isEmpty() && !phone_number.isEmpty() && !password.isEmpty()) {

            Connection connection = null;
            try {
                connection = DBUtil.getConnection();

                String sql = "SELECT * FROM user WHERE email=?";
                PreparedStatement pst = connection.prepareStatement(sql);
                pst.setString(1, email);

                ResultSet rs = pst.executeQuery();

                if (!rs.next()) {
                    // User doesn't exist
                    sql = "INSERT INTO user (email, phone_number, password, name, address, gender) VALUES (?, ?, ?, ?, ?, ?)";
                    pst = connection.prepareStatement(sql);
                    pst.setString(1, email);
                    pst.setString(2, phone_number);
                    pst.setString(3, password);
                    pst.setString(4, name);
                    pst.setString(5, address);
                    pst.setString(6, gender);

                    int rowsInserted = pst.executeUpdate();

                    if (rowsInserted > 0) {
                        message = "Your Email was successfully registered! Please login.";
                        messageColor = "green";
                        req.getSession().setAttribute("signupMessage", message);
                        req.getSession().setAttribute("messageColor", messageColor);
                        
                        
                        req.getSession().setAttribute("usersEmail", email);

                        
                        resp.sendRedirect("login.jsp");
                    } else {
                        message = "Signup failed. Please try again.";
                        req.getSession().setAttribute("signupMessage", message);
                        req.getSession().setAttribute("messageColor", messageColor);
                        resp.sendRedirect("signup.jsp");
                    }
                } else {
                    message = "Email is already registered.";
                    req.getSession().setAttribute("signupMessage", message);
                    req.getSession().setAttribute("messageColor", messageColor);
                    resp.sendRedirect("signup.jsp");
                }

            } catch (SQLException e) {
                e.printStackTrace();
                message = "Internal error occurred.";
                req.getSession().setAttribute("signupMessage", message);
                req.getSession().setAttribute("messageColor", messageColor);
                resp.sendRedirect("signup.jsp");
            } finally {
                DBUtil.closeConnection(connection);
            }

        } else {
            message = "All fields are required!";
            req.getSession().setAttribute("signupMessage", message);
            req.getSession().setAttribute("messageColor", messageColor);
            resp.sendRedirect("signup.jsp");
        }
    }
}
