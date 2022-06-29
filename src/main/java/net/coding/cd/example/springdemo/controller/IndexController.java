package net.coding.cd.example.springdemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/demo")
public class IndexController {
    @RequestMapping
    public String index() {
        return "index";
    }
}
