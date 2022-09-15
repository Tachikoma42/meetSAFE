package com.ood.team.controller;

import com.ood.team.entity.Student;
import com.ood.team.service.AdminService;
import com.ood.team.service.StudentService;
import com.wf.captcha.utils.CaptchaUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * @author c1515
 */
@Controller
@RequestMapping("/system")
public class SystemController {

    @Autowired
    private AdminService adminService;
    @Autowired
    private StudentService studentService;
    @RequestMapping("/getCaptcha")
    public void getCaptcha(HttpServletRequest request, HttpServletResponse response) throws Exception {
        CaptchaUtil.out(request, response);
    }

    @RequestMapping("/goLocation")
    public String goLocation(){
        return "location";
    }
    @RequestMapping("/myprofile")
    public String myprofile(){
        return "profile";
    }

    @RequestMapping("/login")
    @ResponseBody
    public Map<String, Object> login(String name, String password, String verCode, String userType, HttpSession session, HttpServletRequest request){
        System.out.println(name + " " + password + " " + userType);
        Map<String, Object> map = new HashMap<String, Object>();

        if (!CaptchaUtil.ver(verCode, request)) {
            CaptchaUtil.clear(request);
            map.put("success", false);
            map.put("msg", "verificaiton code wrong");
            return map;
        }

        Object object = null;

        switch (userType) {
            case "1":
                object = studentService.login(name, password);
                break;
            case "2":
                object = adminService.login(name, password);
                break;

       }
//        map.put("success", true);
//        map.put("msg", "success");
        session.setAttribute("userInfo", object);
        session.setAttribute("userType", Integer.parseInt(userType));
        if(object != null) {
            session.setAttribute("userInfo", object);
            session.setAttribute("userType", Integer.parseInt(userType));
            map.put("success", true);
            map.put("msg", "Welcome");
        } else{
            map.put("success", false);
            map.put("msg", "Wrong Password or Name");
        }

        return map;
    }

    @RequestMapping("/myactivity")
    private String goactivity(){
        return "myActivity";
    }
    @RequestMapping("/goMain")
    private String goMain(){
        return "activitySquare";
    }
    @RequestMapping("/goAdminInterface")
    private String goAdminInterface(){
        return "AdminSquare";
    }
    @RequestMapping("/goWelcome")
    private String goWelcome(){
        return "system/welcome";
    }
    @RequestMapping("/goAdminmanager")
    private String goAdminmanager(){
        return "adminManager";
    }
    @RequestMapping("/goLogout")
    private void goLogout(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException {
        session.removeAttribute("userInfo");
        session.removeAttribute("userType");
        response.sendRedirect(request.getContextPath());
    }


    @RequestMapping("/getUserInfo")
    @ResponseBody
    private Map<String, Object> getUserInfo(HttpSession session){
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("userInfo", session.getAttribute("userInfo"));
        return map;
    }

}
