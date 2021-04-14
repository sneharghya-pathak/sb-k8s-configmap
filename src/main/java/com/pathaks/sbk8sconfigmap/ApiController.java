package com.pathaks.sbk8sconfigmap;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ApiController {
    
    @Value("${webpage.message}")
    private String message;

    @RequestMapping("/")
    public String api(){
        return message;
    }

}
