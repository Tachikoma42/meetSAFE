package com.ood.team.controller;

import com.ood.team.entity.Admin;
import com.ood.team.entity.Student;
import com.ood.team.service.AdminService;
import com.ood.team.entity.Admin;
import com.ood.team.service.AdminService;
import com.ood.team.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AdminService adminService;

    @RequestMapping("/updateAdmin")
    @ResponseBody
    public Map<String, Object> updataAdmin(@RequestBody Admin admin) {
        System.out.println(admin.getId());
        Map<String, Object> map = new HashMap<String, Object>();
        int result = adminService.updateByPrimaryKey(admin);
        if(result > 0) {
            map.put("success", true);
            map.put("msg", "success");
        }else{
            map.put("success", false);
            map.put("msg", "failed");
        }
        return map;
    }

}
