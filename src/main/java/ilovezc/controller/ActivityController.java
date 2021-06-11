package ilovezc.controller;

import ilovezc.bean.Book;
import ilovezc.bean.Student;
import ilovezc.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
public class ActivityController {
    @Autowired
    private BookService bookService;
    @RequestMapping("/getActivity1")
    public String getActivity1(HttpSession session, Map<String,Book> map) {
        Student student = (Student) session.getAttribute("student");
        String studentId = student.getId();
        Book book = bookService.selectByStudentId(studentId);
        map.put("book",book);
        return "activity1";
    }
    @RequestMapping("/getActivity2")
    public String getActivity2(HttpSession session, Map<String,Book> map) {
        Student student = (Student) session.getAttribute("student");
        String studentId = student.getId();
        Book book = bookService.selectByStudentId(studentId);
        map.put("book",book);
        return "activity2";
    }
    @RequestMapping("/getActivity3")
    public String getActivity3() {
        return "activity3";
    }
}
