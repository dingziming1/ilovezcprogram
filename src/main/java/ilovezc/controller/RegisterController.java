package ilovezc.controller;

import ilovezc.bean.Student;
import ilovezc.service.StudentService;
import ilovezc.util.AjaxResultUtil;
import ilovezc.util.MD5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RegisterController {
    @Autowired
    private StudentService studentService;
    @RequestMapping("/register")
    public AjaxResultUtil doReg(Student student) {
        AjaxResultUtil ajaxResultUtil = new AjaxResultUtil();
        student.setPassword(MD5Util.digest(student.getPassword()));
        int insert = studentService.insert(student);
        ajaxResultUtil.setFlag(insert != 0);
        return ajaxResultUtil;
    }
}
