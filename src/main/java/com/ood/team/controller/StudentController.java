package com.ood.team.controller;

import com.ood.team.entity.Student;
import com.ood.team.service.AdminService;
import com.ood.team.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    private StudentService studentService;

    @RequestMapping("/updataStudent")
    @ResponseBody
    public Map<String, Object> updataStudent(@RequestBody Student student) {
        System.out.println(student.getId());
        Map<String, Object> map = new HashMap<String, Object>();
        int result = studentService.updateStudent(student);
        if(result > 0) {
            map.put("success", true);
            map.put("msg", "edit success");
        }else{
            map.put("success", false);
            map.put("msg", "edit failed");
        }
        return map;
    }

    @RequestMapping("/getStudent")
    @ResponseBody
    public Map<String, Object> getStudent(){
        Map<String, Object> map = new HashMap<>();
        List<Student> result = studentService.selectAll();
        if (result.size() > 0){
            map.put("code", "0");
            map.put("msg", "");
            map.put("count", "4");
            map.put("data", result);
        }else{
            map.put("success", false);
        }
        return map;
    }
}
