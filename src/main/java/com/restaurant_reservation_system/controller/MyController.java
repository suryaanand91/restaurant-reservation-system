package com.restaurant_reservation_system.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MyController {

    private final Environment environment;

    @Autowired
    public MyController(Environment environment) {
        this.environment = environment;
    }

    @GetMapping("/info")
    public String getInfo() {
        String appName = environment.getProperty("app.name");
        String appVersion = environment.getProperty("app.version");
        return "Application Name: " + appName + ", Version: " + appVersion;
    }
}
