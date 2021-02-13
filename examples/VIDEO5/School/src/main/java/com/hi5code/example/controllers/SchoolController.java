package com.hi5code.example.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SchoolController {
    @RequestMapping("/")
    public String index() {
        return "school";
    }

    @RequestMapping("/private/user/welcome")
    public String welcome() {
        return "welcome";
    }
}
