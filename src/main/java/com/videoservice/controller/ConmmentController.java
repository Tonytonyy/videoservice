package com.videoservice.controller;

import com.videoservice.pojo.Person;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class ConmmentController {
    @Autowired
    private Person person;
    @RequestMapping(value = "/hello")
    public String hello(){
        System.out.println(">>>>>" +person+ "<<<<<");
        return "hello,world";
    }
    @RequestMapping(value = "/index")
    public String index(){
        System.out.println(">>>>>" +person+ "<<<<<");
        return "/index";
    }
}
