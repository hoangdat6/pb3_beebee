package com.example.pbl3_1.Util;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class SendMail {
    private static final String username = "shopbeeWeb@gmail.com";
    private static final String password = "khlp rhkl kbqd ehqd";
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
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            message.setSubject(emailSubject);
            String emailContent = "<h1 style=\"color: #131415;\"> Đây là một email từ Shopbee!</h1>"
                    + "<p>Xin chào!<br/>Đây là mã xác minh của bạn: " + code + "</p>"
                    + "<p></p>"
                    + "<p><i>Đây là tin nhắn tự động, vui lòng không trả lời.</i></p>"
                    +"<img src=\"https://cdn.tgdd.vn/Files/2020/10/01/1295273/new_800x450.jpg\">";
            message.setContent(emailContent, "text/html; charset=utf-8");
            Transport.send(message);
        } catch (Exception e) {
            System.out.println("Lỗi rồi em ơi");
            e.printStackTrace();
        }
    }
//    public static void main(String argv[])
//    {
//        Send("dotuangv1@gmail.com", "070104");
//    }
}
