package com.dao;

import javax.net.ssl.HttpsURLConnection;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import com.dao.pojo.Demo;

import database.DBUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/bookfordemoServlet")
public class BookForDemoSrvlet extends HttpServlet {

	private static final long serialVersionUID = -1234697261238179521L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String gRecaptchaResponse = req.getParameter("g-recaptcha-response");
		boolean verify = verifyCaptcha(gRecaptchaResponse);

		if (!verify) {
			req.getSession().setAttribute("demomessage", "Captcha verification failed. Please try again.");
			req.getSession().setAttribute("demomessagecolor", "red");
			resp.sendRedirect("bookdemo.jsp");
			return;
		}

		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String number = req.getParameter("number");
		String address = req.getParameter("address");
		String course = req.getParameter("course");

		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String formattedDate = LocalDateTime.now().format(formatter);

		if (name != null && email != null && number != null && address != null && course != null) {
			Connection connection = null;
			try {
				// Step-1 and Step-2
				connection = DBUtil.getConnection();

				String sql = "SELECT * FROM user WHERE email = ?";
				PreparedStatement pst = connection.prepareStatement(sql);
				pst.setString(1, email);

				ResultSet rs = pst.executeQuery();
				if (!rs.next()) {
					String sql1 = "INSERT INTO demo (name ,Email ,mobile ,Course,address,date) VALUES (?, ?, ?, ?, ?, ?)";
					PreparedStatement stml = connection.prepareStatement(sql1);
					stml.setString(1, name);
					stml.setString(2, email);
					stml.setString(3, number);
					stml.setString(4, course);
					stml.setString(5, address);
					stml.setString(6, formattedDate);

					int noOfRows = stml.executeUpdate();
					if (noOfRows > 0) {

						Demo newdemo = new Demo();
						newdemo.setName(name);
						newdemo.setEmail(email);
						newdemo.setNumber(number);
						newdemo.setCourse(course);
						newdemo.setAddress(address);

						String success = EmailUtil.sendRegistrationEmail(email, newdemo);
						req.getSession().setAttribute("demomessage", "You succussfully registered for Demo class.<br>"+success);
						req.getSession().setAttribute("demomessagecolor", "green");
						resp.sendRedirect("bookdemo.jsp");
					}
				}else {
					req.getSession().setAttribute("demomessage",
							"You have allready Booked a demo by this email.");
					req.getSession().setAttribute("demomessagecolor", "red");
					resp.sendRedirect("bookdemo.jsp");
				}
			} catch (Exception e) {
				e.printStackTrace(); // For debugging, replace with logger in real projects
				req.getSession().setAttribute("demomessage",
						"An error occurred while booking your demo. Please try again later.");
				req.getSession().setAttribute("demomessagecolor", "red");
				resp.sendRedirect("bookdemo.jsp");
			} finally {
				DBUtil.closeConnection(connection);
			}

		} else {

			req.getSession().setAttribute("demomessage", "All fields are required!");
			req.getSession().setAttribute("demomessagecolor", "red");
			resp.sendRedirect("bookdemo.jsp");

		}

	}

	private static final String SECRET_KEY = "6LfkgLArAAAAAKmc6BmGVuh53a-4HvVwQ-Q_N2L0"; // from Google reCAPTCHA

	public static boolean verifyCaptcha(String gRecaptchaResponse) {
		if (gRecaptchaResponse == null || gRecaptchaResponse.isEmpty()) {
			return false;
		}
		try {
			String url = "https://www.google.com/recaptcha/api/siteverify";
			String params = "secret=" + SECRET_KEY + "&response=" + gRecaptchaResponse;

			URL obj = new URL(url);
			HttpsURLConnection con = (HttpsURLConnection) obj.openConnection();
			con.setRequestMethod("POST");
			con.setDoOutput(true);
			con.getOutputStream().write(params.getBytes("UTF-8"));

			BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream(), "UTF-8"));
			StringBuilder response = new StringBuilder();
			String inputLine;
			while ((inputLine = in.readLine()) != null) {
				response.append(inputLine);
			}
			in.close();

			// ✅ Use Gson to parse JSON
			JsonObject json = JsonParser.parseString(response.toString()).getAsJsonObject();
			return json.get("success").getAsBoolean();

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}

// interface -> class        ---->  implements
// interface -> interface    ---->   extends
// class  -> class           ---->   extends