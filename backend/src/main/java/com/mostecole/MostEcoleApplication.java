package com.mostecole;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
@EnableJpaAuditing
public class MostEcoleApplication {

    public static void main(String[] args) {
        SpringApplication.run(MostEcoleApplication.class, args);
    }
}
