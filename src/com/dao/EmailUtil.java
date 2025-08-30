package com.dao;

import java.text.SimpleDateFormat;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

import com.dao.pojo.Demo;

public class EmailUtil {

    private static final String SENDER_EMAIL = "yvvnandak@gmail.com";
    private static final String SENDER_PASSWORD = "wnka efwa zdkj qght"; // App password

    // ✅ Common method for sending email
    private static void sendMail(String recipientEmail, String subject, String htmlBody) throws MessagingException {
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.ssl.protocols", "TLSv1.2");

        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(SENDER_EMAIL, SENDER_PASSWORD);
            }
        });

        Message message = new MimeMessage(session);
        message.setFrom(new InternetAddress(SENDER_EMAIL));
        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipientEmail));
        message.setSubject(subject);
        message.setContent(htmlBody, "text/html; charset=utf-8");

        Transport.send(message);
    }

    // ✅ First email: Registration received
    public static String sendRegistrationEmail(String recipientEmail, Demo demo) throws MessagingException {
        String subject = "PCS Global Demo Class – Registration Received";
        String body = "<p>Dear <strong>" + demo.getName() + "</strong>,</p>"
                + "<p>Your demo booking for <strong>\"" + demo.getCourse() + "\"</strong> has been received.</p>"
                + "<p>We will schedule your class shortly and notify you with details.</p>"
                + "<br><p>Best regards,<br>PCS GLOBAL Pvt Ltd</p>";
        sendMail(recipientEmail, subject, body);
        return " And registration email sent successfully In Your email";
    }

    // ✅ Second email: Scheduled email
    public static String sendScheduledEmail(String recipientEmail, Demo demo, String scheduledDate) throws MessagingException {
        String subject = "PCS Global Demo Class – Scheduled Successfully";
        String body = "<p>Dear <strong>" + demo.getName() + "</strong>,</p>"
                + "<p>Your demo for <strong>\"" + demo.getCourse() + "\"</strong> has been scheduled.</p>"
                + "<p><b>Scheduled Date & Time:</b> " + formatDateTime(scheduledDate) + "</p>"
                + "<p>Our trainer will contact you with joining details.</p>"
                + "<br><p>Best regards,<br>PCS GLOBAL Pvt Ltd</p>";
        sendMail(recipientEmail, subject, body);
        return "Scheduled email sent successfully";
    }
    public static String formatDateTime(String dateTime) {
        try {
            SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd  HH:mm");
            SimpleDateFormat outputFormat = new SimpleDateFormat("dd-MM-yyyy  hh:mm a"); // ✅ Full Date + Time
            return outputFormat.format(inputFormat.parse(dateTime));
        } catch (Exception e) {
            return dateTime; // fallback if parsing fails
        }
    }

  }

        
    

