package com.dao;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import database.DBUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/UpdateOnGoingEventServlet")
@MultipartConfig
public class UpdateOnGoingEventServlet extends HttpServlet {

	private static final long serialVersionUID = -2907734177098388464L;

	@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        
        int id = Integer.parseInt(req.getParameter("id"));
        String title = req.getParameter("title");
        String time = req.getParameter("time");
        String startDate = req.getParameter("startDate");
        String endDate = req.getParameter("endDate");

        // Handle optional image upload
        Part filePart = req.getPart("image");
        String imagePath = null;
        if (filePart != null && filePart.getSize() > 0) {
            String fileName = System.currentTimeMillis() + "_" + filePart.getSubmittedFileName();
            String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) uploadDir.mkdirs();
            filePart.write(uploadPath + File.separator + fileName);
            imagePath = "uploads/" + fileName;
        }

        try (Connection conn = DBUtil.getConnection()) {
            String sql = (imagePath != null) 
                ? "UPDATE ongoingevents SET title=?, time=?, startDate=?, endDate=?, image=? WHERE id=?"
                : "UPDATE ongoingevents SET title=?, time=?, startDate=?, endDate=? WHERE id=?";

            try (PreparedStatement ps = conn.prepareStatement(sql)) {
                ps.setString(1, title);
                ps.setString(2, time);
                ps.setString(3, startDate);
                ps.setString(4, endDate);

                if (imagePath != null) {
                    ps.setString(5, imagePath);
                    ps.setInt(6, id);
                } else {
                    ps.setInt(5, id);
                }
                ps.executeUpdate();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        resp.sendRedirect("onGoingEventsServelt");
    }
}
