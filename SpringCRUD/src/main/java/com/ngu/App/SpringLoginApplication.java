package com.ngu.App;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
@EnableJpaRepositories(basePackages = "com.ngu.repositories")
@SpringBootApplication(scanBasePackages = "com.ngu")
@EntityScan(basePackages = "com.ngu.Model")
public class SpringLoginApplication {
		
//		private final static String ACC_SID = "ACabd0d10f5406276aff92a03add13f976";
//		private final static String AUTH_TOKEN = "c812d89eaea4e52d87b8198ee961e1ff";
	
	public static void main(String[] args) 
		{
		SpringApplication.run(SpringLoginApplication.class, args);
		sendSms();
		}

		
		public static String sendSms() {
//				
//			Twilio.init(ACC_SID, AUTH_TOKEN);
//			 Message.creator(new PhoneNumber("+919146490349"),new PhoneNumber("+18043769540"),"Hi welcome to twilio").create();
//			
			try {
				// Construct data
				String apiKey = "apikey=" + "0FDuNtkeIFQ-pSe5I8IqApYXGQOeb5owEhZnADDj90";
				String message = "&message=" + "Hello Omkar, Your mobile has been hacked.";
				String sender = "&sender=" + "TXTLCL";
				String numbers = "&numbers=" + "919850229309";
				
				HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
				String data = apiKey + numbers + message + sender;
				conn.setDoOutput(true);
				conn.setRequestMethod("POST");
				conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
				conn.getOutputStream().write(data.getBytes("UTF-8"));
				final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
				final StringBuffer stringBuffer = new StringBuffer();
				String line;
				while ((line = rd.readLine()) != null) {
					stringBuffer.append(line);
				}
				rd.close();
				
				return stringBuffer.toString();
			} catch (Exception e) {
				System.out.println("Error SMS "+e);
				return "Error "+e;
			}
			
		}

}

