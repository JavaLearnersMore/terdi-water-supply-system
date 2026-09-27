//package com.nikhil;
//
//import org.springframework.boot.SpringApplication;
//import org.springframework.boot.autoconfigure.SpringBootApplication;
//
//@SpringBootApplication
//public class TerdiWaterSuppySchemeApplication {
//
//	public static void main(String[] args) {
//		SpringApplication.run(TerdiWaterSuppySchemeApplication.class, args);
//	}
//
//}


package com.nikhil;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class TerdiWaterSuppySchemeApplication extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(TerdiWaterSuppySchemeApplication.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(TerdiWaterSuppySchemeApplication.class, args);
    }
}