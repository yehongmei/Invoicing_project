package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import service.UserService;
import vo.Userinfo;

@Controller
public class UserController {

    @Autowired
    private  UserService userService;

    @RequestMapping("/login")
    public String login(Userinfo userinfo){
    	
        if (userService.login(userinfo)){
            return "mainpage";
        }else{
        	  return "mainpage";
        }
   
    }
}