package com.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.pojo.OnGoingEvents;

import database.DBUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/onGoingEventsServelt")
public class OnGoingEventsServelt extends HttpServlet {

    private static final long serialVersionUID = -7627187430490999250L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            Connection conn = DBUtil.getConnection();
            System.out.println("Database connection: " + conn);

            String sql = "SELECT * FROM ongoingevents";
            PreparedStatement pstm = conn.prepareStatement(sql);
            ResultSet rs = pstm.executeQuery();

            List<OnGoingEvents> onGoingEvents = new ArrayList<>();

            while (rs.next()) {
                OnGoingEvents events = new OnGoingEvents();
                events.setId(rs.getLong("id"));
                events.setImage(rs.getString("image"));
                events.setTime(rs.getString("time"));
                events.setTitle(rs.getString("title"));
                events.setStartDate(rs.getString("startDate"));
                events.setEndDate(rs.getString("endDate"));
                onGoingEvents.add(events);
            }

            System.out.println("Total events fetched: " + onGoingEvents.size());

            req.setAttribute("ongoinglist", onGoingEvents);
            req.getRequestDispatcher("OnGoingEvents.jsp").forward(req, resp);
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
