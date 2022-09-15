package com.ood.team.controller;

import com.ood.team.entity.Activity;
import com.ood.team.entity.PersonActivity;
import com.ood.team.entity.HealthInfo;
import com.ood.team.service.ActivityService;
import com.ood.team.service.HealthInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Activity Controller
 *
 * @author Ruofan Li
 */
@Controller
@RequestMapping("/activity")
public class ActivityController {
    @Autowired
    private ActivityService activityService;
    @Autowired
    private HealthInfoService healthInfoService;

    @RequestMapping("/activityList")
    @ResponseBody
    public Map<String, Object> activityList(@RequestBody Integer studentId){
        Map<String, Object> result = new HashMap<>();
        HealthInfo status = healthInfoService.getHealthInfoById(studentId);
        boolean flag = false;
        if(status.getStatus() == 1){  //1 stands for approved
            flag = true;
        }
        List<Activity> activityList = activityService.activityList();
        if(activityList != null){
            result.put("data",activityList);
            result.put("boolean",flag);
            result.put("msg","success");
        }else {
            result.put("msg","search fail");
            result.put("boolean",flag);
        }
        return result;
    }
    @RequestMapping("/adminActivityList")
    @ResponseBody
    public Map<String, Object> adminActivityList(@RequestBody Integer studentId){
        Map<String, Object> result = new HashMap<>();
        List<Activity> activityList = activityService.activityList();
        if(activityList != null){
            result.put("data",activityList);

            result.put("msg","success");
        }else {
            result.put("msg","search fail");

        }
        return result;
    }
    @RequestMapping("/getActivityByParam")
    @ResponseBody
    public Map<String, Object> getActivityByParam(@RequestBody Activity activity){
        Map<String, Object> result = new HashMap<>();
        List<Activity> list = activityService.getActivityByParam(activity);
        System.out.println(list);
        if(list != null){
            result.put("list",list);
        }else {
            result.put("msg","search fail");
        }
        return result;
    }

    @RequestMapping("/insertActivity")
    @ResponseBody
    public Map<String, Object> insertActivity(@RequestBody Activity activity){
        Map<String, Object> result = new HashMap<>();
        Integer returnNum = activityService.insertActivity(activity);
        if(returnNum == 1){
            result.put("msg","insert succeed");
        }else {
            result.put("msg","insert fail");
        }
        return result;
    }

    @RequestMapping("/updateActivity")
    @ResponseBody
    public Map<String, Object> updateActivity(@RequestBody Activity activity){
        Map<String, Object> result = new HashMap<>();
        Integer returnNum = activityService.updateActivity(activity);
        if(returnNum == 1){
            result.put("msg","update succeed");
        }else {
            result.put("msg","update fail");
        }
        return result;
    }

    @RequestMapping("/deleteActivity")
    @ResponseBody
    public Map<String, Object> deleteActivity(@RequestBody Integer activityId){
        Map<String, Object> result = new HashMap<>();
        Integer returnNum = activityService.deleteActivity(activityId);
        if(returnNum == 1){
            result.put("msg","delete succeed");
        }else {
            result.put("msg","delete fail");
        }
        return result;
    }

    @RequestMapping("/batchDeleteActivity")
    @ResponseBody
    public Map<String, Object> batchDeleteActivity(@RequestBody List<Integer> activityIdList){
        Map<String, Object> result = new HashMap<>();
        Integer returnNum = activityService.batchDeleteActivity(activityIdList);
        if(returnNum == activityIdList.size()){
            result.put("msg","delete succeed");
            result.put("num",returnNum);
        }else {
            result.put("msg","delete fail");
        }
        return result;
    }


    //My Activity
    @RequestMapping("/selectPersonActivity")
    @ResponseBody
    public Map<String, Object> selectPersonActivity(@RequestBody Integer personId){
        Map<String, Object> result = new HashMap<>();
        List<Activity> list = activityService.selectPersonActivity(personId);
        if(list.isEmpty()){
            result.put("msg","fail");
        }else {
            result.put("msg","succeed");
            result.put("list",list);
        }
        return result;
    }
    @RequestMapping("/insertPersonActivity")
    @ResponseBody
    public Map<String, Object> insertPersonActivity(@RequestBody PersonActivity personActivity){
        Map<String, Object> result = new HashMap<>();
        if(personActivity.getActivityId()!=null && personActivity.getPersonId()!=null){
            Integer returnNum = activityService.insertPersonActivity(personActivity);
            result.put("msg","succeed");
        }else {
            result.put("msg","Failed");
        }
        return result;
    }

    @RequestMapping("/existPersonActivity")
    @ResponseBody
    public Map<String, Object> existPersonActivity(@RequestBody PersonActivity personActivity){
        Map<String, Object> result = new HashMap<>();
        boolean flag = activityService.existPersonAcitivity(personActivity);
        if(flag){
            result.put("msg",true);
        }else{
            result.put("msg",false);
        }
        return result;
    }

    @RequestMapping("/signOutActivity")
    @ResponseBody
    public Map<String, Object> signOutActivity(@RequestBody PersonActivity personActivity){
        Map<String, Object> result = new HashMap<>();
        Integer returnNum = activityService.deletePersonActivity(personActivity);
        if(returnNum == 1){
            result.put("msg",true);
        }else {
            result.put("msg",false);
        }
        return result;
    }
}
