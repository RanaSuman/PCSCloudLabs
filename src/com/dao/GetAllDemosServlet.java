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

@WebServlet("/alldemosServlet")
public class GetAllDemosServlet extends HttpServlet {

	private static final long serialVersionUID = -5245736959619786576L;
	private static final int RECORDS_PER_PAGE = 10;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int page = 1;
		if (req.getParameter("page") != null) {
			page = Integer.parseInt(req.getParameter("page"));
		}

//		boolean schedule = false;
		List<Demo> demoList = new ArrayList<>();
		int start = (page - 1) * RECORDS_PER_PAGE;

		try (Connection conn = DBUtil.getConnection()) {
			String countSql = "SELECT COUNT(*) FROM demo";
			PreparedStatement countStmt = conn.prepareStatement(countSql);
			ResultSet countRs = countStmt.executeQuery();
			int totalRecords = 0;
			if (countRs.next()) {
				totalRecords = countRs.getInt(1);
			}
			int totalPages = (int) Math.ceil(totalRecords * 1.0 / RECORDS_PER_PAGE);

			String sql = "SELECT * FROM demo ORDER BY demoId DESC LIMIT ? OFFSET ?";
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, RECORDS_PER_PAGE);
			pstm.setInt(2, start);

			ResultSet rs = pstm.executeQuery();

			while (rs.next()) {
				Demo demo = new Demo();
				demo.setName(rs.getString("name"));
				demo.setEmail(rs.getString("email"));
				demo.setNumber(rs.getString("mobile"));
				demo.setAddress(rs.getString("address"));
				demo.setCourse(rs.getString("course"));
				demo.setDate(rs.getString("date"));
				demo.setIsSchedule(rs.getInt("isSchedule"));
				demo.setScheduleDate(rs.getString("scheduleDate"));
				demoList.add(demo);
			}

			req.setAttribute("demoList", demoList);
			req.setAttribute("currentPage", page);
			req.setAttribute("totalPages", totalPages);
			req.getRequestDispatcher("allDemos.jsp").forward(req, resp);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
