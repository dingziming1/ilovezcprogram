package ilovezc.controller;

import ilovezc.bean.Student;
import ilovezc.service.StudentService;
import ilovezc.util.AjaxResultUtil;
import ilovezc.util.MD5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

@RestController
public class DispatchController {
    @Autowired
    private StudentService studentService;

    @RequestMapping("/doLogin")
    public AjaxResultUtil doLogin(String id, String password, HttpSession session) {
        AjaxResultUtil result = new AjaxResultUtil();
        Student student = studentService.queryLogin(id, MD5Util.digest(password));
        session.setAttribute("student", student);
        result.setFlag(student != null);
        return result;
    }
    @RequestMapping("/updatepsw")
    public AjaxResultUtil updatepsw(String newpassword,String confirmpassword,HttpSession session) {
        AjaxResultUtil ajaxResultUtil = new AjaxResultUtil();
        Student student = new Student();
        Student student1 = (Student)session.getAttribute("student");
        if (newpassword.equals(confirmpassword)) {
            student.setPassword(newpassword);
            student.setId(student1.getId());
            if (studentService.updateByPrimaryKeySelective(student) != 0) {
                ajaxResultUtil.setFlag(true);
                return ajaxResultUtil;
            }
        }
        ajaxResultUtil.setFlag(false);
        return ajaxResultUtil;
    }


}
