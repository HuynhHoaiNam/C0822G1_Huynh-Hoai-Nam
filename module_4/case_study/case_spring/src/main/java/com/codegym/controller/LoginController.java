package com.codegym.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
    @GetMapping("/loginPage")
    public String login() {
        return "/views/css/loginPage";
    }

    @GetMapping("/logoutPage")
    public String logout() {
        return "/views/home";
    }

}
