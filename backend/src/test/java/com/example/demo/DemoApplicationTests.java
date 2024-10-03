package com.example.demo;

import com.example.demo.entity.EmailConfig;
import com.example.demo.utils.EmailUtils;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.web.bind.annotation.PostMapping;

@SpringBootTest
class DemoApplicationTests {

	@Test
	void contextLoads() {
			//上面的json字符串
			EmailConfig email = new EmailConfig();
			email.setDebug(true);
			email.setEnableSsl(false);
			email.setHost("smtp.gmail.com");
			email.setName("facuplivesoccergame@gmail.com");
			email.setPassword("bherzkxbwgowahfg");
			email.setPort(587);
			email.setUsername("facuplivesoccergame@gmail.com");
			String emailStr = "";
			EmailUtils.build(email).send("验证码", "验证码", "guanyiw5@gmail.com");
	}

}
