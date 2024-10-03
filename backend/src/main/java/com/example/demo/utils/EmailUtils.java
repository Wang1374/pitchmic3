package com.example.demo.utils;

import com.example.demo.entity.EmailConfig;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import java.nio.charset.StandardCharsets;
import java.util.Properties;

/**
 * @Description: TODO
 * @Author: guanyi wang
 * @Date: 2023/11/18 20:35:54
 * @Version: V1.0
 */
public class EmailUtils {

    private final EmailConfig config;

    public EmailUtils(EmailConfig config) {
        this.config = config;
    }

    public static EmailUtils build(EmailConfig config) {
        return new EmailUtils(config);
    }

    public void send(String subject, String text, String... to) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom(config.getUsername());
        message.setText(text);
        message.setSubject(subject);
        message.setTo(to);
        this.buildMailSender(config).send(message);
    }

    private JavaMailSender buildMailSender(EmailConfig config) {
        JavaMailSenderImpl javaMailSender = new JavaMailSenderImpl();
        javaMailSender.setHost(config.getHost());
        javaMailSender.setUsername(config.getUsername());
        javaMailSender.setPassword(config.getPassword());

        javaMailSender.setDefaultEncoding(StandardCharsets.UTF_8.name());
        if (null != config.getPort()) {
            javaMailSender.setPort(config.getPort());
        }

        Properties properties = new Properties();
        properties.put("mail.debug", Boolean.TRUE.equals(config.getDebug()));
        properties.put("mail.smtp.auth", true);
        properties.put("mail.smtp.connectiontimeout", 5000);
        properties.put("mail.smtp.writetimeout", 5000);
        properties.put("mail.smtp.starttls.enable", true);
        properties.put("mail.transport.protocol", "smtp");

        if (Boolean.TRUE.equals(config.getEnableSsl())) {
            properties.put("mail.smtp.ssl.enable", true);
            properties.put("mail.smtp.ssl.trust", config.getHost());
        }

        javaMailSender.setJavaMailProperties(properties);
        return javaMailSender;
    }
}

