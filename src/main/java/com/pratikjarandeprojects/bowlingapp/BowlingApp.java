package com.pratikjarandeprojects.bowlingapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication
public class BowlingApp extends SpringBootServletInitializer{
	public static void main(String[] args){
		SpringApplication.run(BowlingApp.class, args);
	}
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(BowlingApp.class);
	}
}