package com.example.pbl3_1.Util;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class SendMail {
    private static final String username = "pbl3shopbee@gmail.com";
    private static final String password = "vojt nkat bgfi amuh";
    public static void Send(String email, String code)
    {
        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.socketFactory.port", "465");
        prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        prop.put("mail.smtp.starttls.enable", "true");
        Session session = Session.getInstance(prop, new javax.mail.Authenticator()
        {
            protected PasswordAuthentication getPasswordAuthentication()
            {
                return new PasswordAuthentication(username, password);
            }
        });
        String emailSubject = "[ShopBee] Mã xác minh";
        String emailContent = "Mã xác nhận của bạn là: " + code;
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            message.setSubject(emailSubject);
            message.setText(emailContent);
            Transport.send(message);
        } catch (Exception e) {
            System.out.println("Lỗi rồi em ơi");
            e.printStackTrace();
        }
    }
}
