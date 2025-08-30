package com.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.pojo.Demo;
import database.DBUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/unscheduledDemosServlet")
public class GetAllUnScheduleDemosSevlet extends HttpServlet {

	private static final long serialVersionUID = -27606124280248670L;
//	private static final int RECORDS_PER_PAGE = 10;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int page = 1;
		final int RECORDS_PER_PAGE = 10;
		boolean schedule = false;

		String course = req.getParameter("course"); // filter input
		if (req.getParameter("page") != null) {
			page = Integer.parseInt(req.getParameter("page"));
		}

		String fromdate = req.getParameter("fromdate");
		System.out.println(fromdate);
		String todate = req.getParameter("todate");

		int start = (page - 1) * RECORDS_PER_PAGE;
		List<Demo> demoList = new ArrayList<>();

		try (Connection conn = DBUtil.getConnection()) {

			// Prepare SQL based on whether course filter is applied
			String countSql;
			PreparedStatement countStmt;

			boolean hasCourse = (course != null && !course.isEmpty());
			boolean hasDates = (fromdate != null && !fromdate.isEmpty() && todate != null && !todate.isEmpty());

			if (hasCourse && hasDates) {
				countSql = "SELECT COUNT(*) FROM demo WHERE isSchedule = ? AND course = ? AND date BETWEEN ? AND ?";
				countStmt = conn.prepareStatement(countSql);
				countStmt.setBoolean(1, schedule);
				countStmt.setString(2, course);
				countStmt.setString(3, fromdate);
				countStmt.setString(4, todate);
			} else if (hasCourse) {
				countSql = "SELECT COUNT(*) FROM demo WHERE isSchedule = ? AND course = ?";
				countStmt = conn.prepareStatement(countSql);
				countStmt.setBoolean(1, schedule);
				countStmt.setString(2, course);
			} else if (hasDates) {
				countSql = "SELECT COUNT(*) FROM demo WHERE isSchedule = ? AND date BETWEEN ? AND ?";
				countStmt = conn.prepareStatement(countSql);
				countStmt.setBoolean(1, schedule);
				countStmt.setString(2, fromdate);
				countStmt.setString(3, todate);
			} else {
				countSql = "SELECT COUNT(*) FROM demo WHERE isSchedule = ?";
				countStmt = conn.prepareStatement(countSql);
				countStmt.setBoolean(1, schedule);
			}

			ResultSet countRs = countStmt.executeQuery();

			int totalRecords = 0;
			if (countRs.next()) {
				totalRecords = countRs.getInt(1);
			}
			int totalPages = (int) Math.ceil(totalRecords * 1.0 / RECORDS_PER_PAGE);

			// Fetch filtered or unfiltered demos with pagination
			String dataSql;
			PreparedStatement dataStmt;

			if (hasCourse && hasDates) {
				dataSql = "SELECT * FROM demo WHERE isSchedule = ? AND course = ? AND date BETWEEN ? AND ? ORDER BY date ASC LIMIT ?, ?";
				dataStmt = conn.prepareStatement(dataSql);
				dataStmt.setBoolean(1, schedule);
				dataStmt.setString(2, course);
				dataStmt.setString(3, fromdate);
				dataStmt.setString(4, todate);
				dataStmt.setInt(5, start);
				dataStmt.setInt(6, RECORDS_PER_PAGE);
			} else if (hasCourse) {
				dataSql = "SELECT * FROM demo WHERE isSchedule = ? AND course = ? ORDER BY date ASC LIMIT ?, ?";
				dataStmt = conn.prepareStatement(dataSql);
				dataStmt.setBoolean(1, schedule);
				dataStmt.setString(2, course);
				dataStmt.setInt(3, start);
				dataStmt.setInt(4, RECORDS_PER_PAGE);
			} else if (hasDates) {
				dataSql = "SELECT * FROM demo WHERE isSchedule = ? AND date BETWEEN ? AND ? ORDER BY date ASC LIMIT ?, ?";
				dataStmt = conn.prepareStatement(dataSql);
				dataStmt.setBoolean(1, schedule);
				dataStmt.setString(2, fromdate);
				dataStmt.setString(3, todate);
				dataStmt.setInt(4, start);
				dataStmt.setInt(5, RECORDS_PER_PAGE);
			} else {
				dataSql = "SELECT * FROM demo WHERE isSchedule = ? ORDER BY date ASC LIMIT ?, ?";
				dataStmt = conn.prepareStatement(dataSql);
				dataStmt.setBoolean(1, schedule);
				dataStmt.setInt(2, start);
				dataStmt.setInt(3, RECORDS_PER_PAGE);
			}

			ResultSet rs = dataStmt.executeQuery();
			while (rs.next()) {
				Demo demo = new Demo();
				demo.setId(rs.getInt("demoId"));
				demo.setName(rs.getString("name"));
				demo.setEmail(rs.getString("email"));
				demo.setNumber(rs.getString("mobile"));
				demo.setAddress(rs.getString("address"));
				demo.setCourse(rs.getString("course"));
				demo.setDate(rs.getString("date"));
				demo.setIsSchedule(rs.getInt("isSchedule"));
				demo.setScheduleDate(rs.getString("ScheduleDate"));
				demoList.add(demo);
			}

			// Set attributes for JSP
			req.setAttribute("demoList", demoList);
			req.setAttribute("currentPage", page);
			req.setAttribute("totalPages", totalPages);
			req.setAttribute("selectedCourse", course); // important for pagination link building

			req.getRequestDispatcher("unsheduledemo.jsp").forward(req, resp);

		} catch (Exception e) {
			e.printStackTrace();
			resp.getWriter().println("Error loading demos.");
		}
	}

}
