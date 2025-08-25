//package com.dao;
//
//import java.io.IOException;
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.util.ArrayList;
//import java.util.List;
//
//import database.DBUtil;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//@WebServlet("/scheduleFromOldestServlet")
//public class ScheduleFromOldestServlet extends HttpServlet {
//
//	@Override
//	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//	    String course = req.getParameter("course");
//	    String scheduleDate = req.getParameter("scheduleDate");
//	    String[] selectedIds = req.getParameterValues("selectedIds");
//
//	    if (selectedIds == null || selectedIds.length == 0) {
//	        resp.getWriter().println("No demos selected for scheduling.");
//	        return;
//	    }
//
//	    try (Connection conn = DBUtil.getConnection()) {
//	        String updateSql = "UPDATE demo SET isSchedule = true, ScheduleDate = ? WHERE demoId = ?";
//	        PreparedStatement updateStmt = conn.prepareStatement(updateSql);
//
//	        for (String idStr : selectedIds) {
//	            int demoId = Integer.parseInt(idStr);
//	            updateStmt.setString(1, scheduleDate);
//	            updateStmt.setInt(2, demoId);
//	            updateStmt.addBatch();
//	            fetchStmt.setInt(1, demoId);
	            
	    package com.dao;

	    import java.io.IOException;
	    import java.sql.Connection;
	    import java.sql.PreparedStatement;
	    import java.sql.ResultSet;

	    import com.dao.pojo.Demo;
	    import database.DBUtil;
	    import jakarta.servlet.ServletException;
	    import jakarta.servlet.annotation.WebServlet;
	    import jakarta.servlet.http.HttpServlet;
	    import jakarta.servlet.http.HttpServletRequest;
	    import jakarta.servlet.http.HttpServletResponse;

	    @WebServlet("/scheduleFromOldestServlet")
	    public class ScheduleFromOldestServlet extends HttpServlet {

	        @Override
	        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	            String course = req.getParameter("course");
	            String scheduleDate = req.getParameter("scheduleDate");
	            String[] selectedIds = req.getParameterValues("selectedIds");

	            if (selectedIds == null || selectedIds.length == 0) {
	            	resp.sendRedirect("unscheduledDemosServlet");
	                return;
	            }

	            try (Connection conn = DBUtil.getConnection()) {
	                // Update query
	                String updateSql = "UPDATE demo SET isSchedule = true, ScheduleDate = ? WHERE demoId = ?";
	                PreparedStatement updateStmt = conn.prepareStatement(updateSql);

	                // Fetch query
	                String fetchSql = "SELECT name, email, course FROM demo WHERE demoId = ?";
	                PreparedStatement fetchStmt = conn.prepareStatement(fetchSql);

	                for (String idStr : selectedIds) {
	                    int demoId = Integer.parseInt(idStr);

	                    // 1️⃣ Update record
	                    updateStmt.setString(1, scheduleDate);
	                    updateStmt.setInt(2, demoId);
	                    updateStmt.addBatch();

	                    // 2️⃣ Fetch user details
	                    fetchStmt.setInt(1, demoId);
	                    ResultSet rs = fetchStmt.executeQuery();
	                    if (rs.next()) {
	                        Demo demo = new Demo();
	                        demo.setId(demoId);
	                        demo.setName(rs.getString("name"));
	                        demo.setEmail(rs.getString("email"));
	                        demo.setCourse(rs.getString("course"));

	                        // 3️⃣ Send Email
	                        try {
	                            EmailUtil.sendScheduledEmail(demo.getEmail(), demo, scheduleDate);
	                        } catch (Exception e) {
	                            e.printStackTrace();
	                            System.out.println("Email failed for: " + demo.getEmail());
	                        }
	                    }
	                }

	                // 4️⃣ Execute all updates together
	                updateStmt.executeBatch();

	                // Redirect back
	                resp.sendRedirect("unscheduledDemosServlet");

	            } catch (Exception e) {
	                e.printStackTrace();
	                resp.sendRedirect("unscheduledDemosServlet");
	            }
	        }
	    

//	        updateStmt.executeBatch();
//
//	        resp.sendRedirect("unscheduledDemosServlet");
//
//	    } catch (Exception e) {
//	        e.printStackTrace();
//	        resp.getWriter().println("Error scheduling demos.");
//	    }
	}


