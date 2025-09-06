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

@WebServlet("/AddOnGoingEventServlet")
@MultipartConfig
public class AddOnGoingEventServlet extends HttpServlet {

	private static final long serialVersionUID = -2954237790050239406L;

	@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        // text fields
        String title = req.getParameter("title");
        String time = req.getParameter("time");
        String startDate = req.getParameter("startDate");
        String endDate = req.getParameter("endDate");

        // file upload
        Part filePart = req.getPart("image");
        String fileName = System.currentTimeMillis() + "_" + filePart.getSubmittedFileName();

        String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdirs();

        filePart.write(uploadPath + File.separator + fileName);

        String imagePath = "uploads/" + fileName;

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(
                 "INSERT INTO ongoingevents(image,title,time,startDate,endDate) VALUES(?,?,?,?,?)")) {
            ps.setString(1, imagePath);
            ps.setString(2, title);
            ps.setString(3, time);
            ps.setString(4, startDate);
            ps.setString(5, endDate);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

        resp.sendRedirect("onGoingEventsServelt");
    }
}
