package anys.spring.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

    @RequestMapping(value = "/login/login", method = RequestMethod.GET)
    public String login() {

        return "redirect:/index";
    }

    @RequestMapping(value = "/login/logout", method = RequestMethod.GET)
    public String logout() {

        return "redirect:/index";
    }

};