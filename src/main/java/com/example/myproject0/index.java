package com.example.myproject0;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class index {

    @GetMapping("/hello")
    public String indexMethod() {
        System.out.println("hello!!!!");
        return "hello";
    }
}
