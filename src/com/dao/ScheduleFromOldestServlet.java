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

	private static final long serialVersionUID = 830684418275152356L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String course = req.getParameter("course");
		String scheduleDateTime = req.getParameter("scheduleDateTime"); // comes as "2025-08-29T15:30"
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

				// Convert HTML datetime-local format ("2025-08-29T15:30") to SQL datetime
				// ("2025-08-29 15:30")
				scheduleDateTime = scheduleDateTime.replace("T", " ");

				// 1️⃣ Update record
				updateStmt.setString(1, scheduleDateTime);
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
						EmailUtil.sendScheduledEmail(demo.getEmail(), demo, scheduleDateTime);
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

}

