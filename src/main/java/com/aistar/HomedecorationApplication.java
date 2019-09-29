package com.aistar;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.aistar.mapper")
public class HomedecorationApplication {

    public static void main(String[] args) {
        SpringApplication.run(HomedecorationApplication.class, args);
    }

}
