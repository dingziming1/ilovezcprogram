package ilovezc.controller;

import ilovezc.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class ForwardController {
    //    @RequestMapping("/index")
//    public String index() {
//        return "forward:/index.html";
//    }
    @Autowired
    private StudentService studentService;
    @RequestMapping("/main")
    public String main(Map<String,Integer> map) {
        int count = studentService.count();
        map.put("count", count);
        return "main";
    }

    @RequestMapping("/info")
    public String info() {
        return "info";
    }

    @RequestMapping("/updatepass")
    public String updatepass() {
        return "updatepass";
    }

    @RequestMapping("/activity")
    public String activity() {
        return "activity";
    }

    @RequestMapping("/reg")
    public String toReg() {
        return "reg";
    }

}
