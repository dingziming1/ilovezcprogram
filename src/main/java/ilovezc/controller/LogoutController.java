package ilovezc.controller;

import ilovezc.bean.Student;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class LogoutController {
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("student");
        return "forward:/index.html";
    }
}
