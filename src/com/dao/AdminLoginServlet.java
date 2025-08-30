package com.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import database.DBUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/adminloginservlet")
public class AdminLoginServlet extends HttpServlet {
	
	private static final long serialVersionUID = 5697795720366676068L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String adminEmail = req.getParameter("email");
		String password = req.getParameter("password");
		
		Connection conn = null;
		try {
			
			conn = DBUtil.getConnection();
			
			String sql = "SELECT * FROM admin WHERE email = ?";
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, adminEmail);
			
			ResultSet rs = pstm.executeQuery();
			
			if(rs.next()) {
				
				String DbEmail = rs.getString("email");
				String adminName = rs.getString("name");
				String DbPassword = rs.getString("password");
				
				if(adminEmail.equals(DbEmail) && password.equals(DbPassword)) {
					
					req.getSession().setAttribute("AdminEmail", adminEmail);
					req.getSession().setAttribute("AdminName", adminName);
					req.getSession().setAttribute("adminLoginSuccessMessage", "Login succussfully");
					req.getSession().setAttribute("adminLoginMessageColor", "green");
					resp.sendRedirect("admin.jsp");
				}else {
					req.getSession().setAttribute("adminLoginMessage", "Login faild ! Pls check your password");
					req.getSession().setAttribute("adminLoginMessageColor", "red");
					resp.sendRedirect("admin.jsp");
				}
				
			}else {
				
				req.getSession().setAttribute("adminLoginMessage", "Email not found");
				req.getSession().setAttribute("adminLoginMessageColor", "red");
				resp.sendRedirect("admin.jsp");
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
            req.getSession().setAttribute("loginMessage", "Server error. Please try again later.");
            req.getSession().setAttribute("loginMessageColor", "red");
            resp.sendRedirect("admin.jsp");
		} finally {
			DBUtil.closeConnection(conn);
		}
		
		
	}

}
