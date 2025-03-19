package vn.edu.hcmuaf.fit.demo.utils;

import vn.edu.hcmuaf.fit.demo.model.User;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.util.Properties;
import java.util.Random;

public class Email {
    // hàm mã tạo code ngau nhien
    public String getRandom() {
        Random rd = new Random();
        int number = rd.nextInt(1000000);
        return String.format("%06d", number);
    }
    // send email to the user email
    public boolean sendEmail(User user) {
        boolean test = false;
        String toEmail = user.getEmail();
        String fromEmail = "anhtuan220704@gmail.com";
        String password = "fdpm awfa djmt tqyb";

        try {
            // your host email smtp server details
            Properties pr = configEmail(new Properties());

            // get session to authenticate the host email address and password
            Session session = Session.getInstance(pr, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(fromEmail, password);
                }
            });
            Message mess = new MimeMessage(session);
            mess.setHeader("Content-Type", "text/plain; charset=UTF-8");
            // set from email address
            mess.setFrom(new InternetAddress(fromEmail, "BikeStore Cửa Hàng Xe Đạp"));

            // thiết lập email người nhận
            mess.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));

            // set email subject
            mess.setSubject("Confirm code");

            // set message text
            mess.setText("Your code is: " + user.getCode());
            // send the message
            Transport.send(mess);
            test = true;
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
        return test;
    }
    public boolean emailSend(User user) {
        boolean test = false;
        String toEmail = user.getEmail();
        String fromEmail = "anhtuan220704@gmail.com";
        String password = "fdpm awfa djmt tqyb";

        try {
            // your host email smtp server details
            Properties pr = configEmail(new Properties());

            // get session to authenticate the host email address and password
            Session session = Session.getInstance(pr, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(fromEmail, password);
                }
            });
            Message mess = new MimeMessage(session);
            mess.setHeader("Content-Type", "text/plain; charset=UTF-8");
            // set from email address
            mess.setFrom(new InternetAddress(fromEmail, "BikeStore Cửa Hàng Xe Đạp"));

            // thiết lập email người nhận
            mess.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));

            // set email subject
            mess.setSubject("Your Password");

            // set message text
            mess.setText("Your password is: " + user.getPassWord());
            // send the message
            Transport.send(mess);
            test = true;
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
        return test;
    }

    public Properties configEmail(Properties pr) {
        pr.setProperty("mail.smtp.host", "smtp.gmail.com");
        pr.setProperty("mail.smtp.port", "587");
        pr.setProperty("mail.smtp.auth", "true");
        pr.setProperty("mail.smtp.starttls.enable", "true");
        pr.put("mail.smtp.socketFactory.port", "587");
        pr.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        return pr;
    }

}
