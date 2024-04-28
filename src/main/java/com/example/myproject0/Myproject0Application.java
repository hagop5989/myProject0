package com.example.myproject0;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.example.myproject0.mapper")
public class Myproject0Application {

    public static void main(String[] args) {
        SpringApplication.run(Myproject0Application.class, args);
    }

}
