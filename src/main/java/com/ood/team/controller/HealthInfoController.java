package com.ood.team.controller;

import com.ood.team.entity.Admin;
import com.ood.team.entity.HealthInfo;
import com.ood.team.entity.Student;
import com.ood.team.service.HealthInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * HealthInfo Controller
 *
 * @author Sihao Ren
 */
@Controller
@RequestMapping("/healthInfo")
public class HealthInfoController {
    @Autowired
    private HealthInfoService healthInfoService;

    //upload photo
    @PostMapping("/uploadPhoto")
    @ResponseBody
    public Map<String, Object> uploadPhoto(MultipartFile photo, HttpServletRequest request) {
        //local address
        final String dirPath = request.getServletContext().getRealPath("/upload/admin_portrait/");
        final String portraitPath = request.getServletContext().getContextPath() + "/upload/admin_portrait/";
        //get upload result
        return healthInfoService.getUploadResult(photo, dirPath, portraitPath);
    }

    //check healthinfo status
    @PostMapping("/checkStatus")
    @ResponseBody
    public Map<String, Object> checkStatus(HealthInfo healthInfo, HttpServletRequest request){
        Map<String, Object> result = new HashMap<>();
        if(healthInfo == null){
            result.put("msg","fail");
            return result;
        }else{
            healthInfo.setStatus(1);
            Integer returnNum = healthInfoService.updateHealthInfo(healthInfo);
            if (returnNum == 1) {
                result.put("msg","succeed");
                return result;
            }else {
                result.put("msg","fail");
                return result;
            }
        }
    }

    //search healthinfo list
    @PostMapping("/healthInfoList")
    @ResponseBody
    public Map<String, Object> healthInfoList(){
        Map<String, Object> result = new HashMap<>();
        List<HealthInfo> healthInfoList = healthInfoService.getHealthInfo();
        if (healthInfoList == null) {
            result.put("msg","fail");
            return result;
        }else {
            result.put("list",healthInfoList);
            return result;
        }
    }

    //search personal healthInfo
    @PostMapping("/getHealthInfoByPersonId")
    @ResponseBody
    public Map<String, Object> getHealthInfoByPersonId(Integer personId){
        Map<String, Object> result = new HashMap<>();
        HealthInfo healthInfo = healthInfoService.getHealthInfoById(personId);
        if (healthInfo == null) {
            result.put("msg","fail");
            return result;
        }else {
            result.put("healthInfo",healthInfo);
            return result;
        }
    }

    //upload HealthInfo image
    @PostMapping("/uploadImage")
    @ResponseBody
    public Map<String, Object> uploadImage(@RequestParam MultipartFile photo, HttpSession session) throws IOException, SQLException {

        Student userInfo = (Student) session.getAttribute("userInfo");
        Integer studentId = userInfo.getId();
        Map<String, Object> result = new HashMap<>();
        Integer returnNum = healthInfoService.uploadImage(photo, studentId);
        if(returnNum == 1){
            result.put("msg","succeed");
        }else {
            result.put("msg","fail");
        }
        return result;
    }
    @GetMapping("/getImage")
    @ResponseBody
    public void getImage(HttpSession session, HttpServletResponse response){
        Student userInfo = (Student) session.getAttribute("userInfo");
        Integer studentId = userInfo.getId();
        healthInfoService.getImage(studentId,response);
    }
    @GetMapping("/getImageById")
    @ResponseBody
    public void getImageById(HttpSession session, HttpServletResponse response, Integer studentId){

        healthInfoService.getImage(studentId,response);
    }
    //
    @PostMapping("/getHealthInfoByParam")
    @ResponseBody
    public Map<String, Object> getHealthInfoByParam(@RequestBody HealthInfo healthInfo){
        Map<String, Object> result = new HashMap<>();
        List<HealthInfo> healthInfoList = healthInfoService.getHealthInfoByParam(healthInfo);
        if (healthInfoList == null) {
            result.put("msg","fail");
            return result;
        }else {
            result.put("list",healthInfoList);
            return result;
        }
    }
    @PostMapping("/updateHealthBypersonId")
    @ResponseBody
    public Map<String, Object> updateHealthBypersonId(@RequestBody Integer personId){
        Map<String, Object> result = new HashMap<>();
        Integer num = healthInfoService.updateHealthBypersonId(personId);
        if (num == null) {
            result.put("msg","fail");
            return result;
        }else {
            result.put("msg","success");
            return result;
        }
    }
    //upload users healthinfo
    @PostMapping("/uploadHealthInfo")
    @ResponseBody
    public Map<String, Object> uploadHealthInfo(HealthInfo healthInfo){
        Map<String, Object> result = new HashMap<>();
        Integer returnNum = healthInfoService.insertHealthInfo(healthInfo);
        if(returnNum == -1){
            result.put("msg","fail");
            return result;
        }else{
            result.put("msg","succeed");
            return result;
        }
    }

    //delete healthInfo
    @PostMapping("/deleteHealthInfo")
    @ResponseBody
    public Map<String, Object> deleteHealthInfo(Integer personId){
        Map<String, Object> result = new HashMap<>();
        Integer returnNum = healthInfoService.deleteHealthInfo(personId);
        if(returnNum == -1){
            result.put("msg","fail");
            return result;
        }else{
            result.put("msg","succeed");
            return result;
        }
    }
}
