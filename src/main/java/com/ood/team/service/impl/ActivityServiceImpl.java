package com.ood.team.service.impl;

import com.ood.team.dao.ActivityMapper;
import com.ood.team.dao.PersonActivityMapper;
import com.ood.team.entity.Activity;
import com.ood.team.entity.ActivityExample;
import com.ood.team.entity.PersonActivity;
import com.ood.team.entity.PersonActivityExample;
import com.ood.team.service.ActivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
/**
 * Activity Service
 *
 * @author Ruofan Li
 */
@Service("activityService")
public class ActivityServiceImpl implements ActivityService {
    @Autowired
    ActivityMapper activityMapper;

    @Autowired
    PersonActivityMapper personActivityMapper;
    /**
     * get All Activity in DB
     * used BY user&admin
     *
     * @return List
     */
    @Override
    public List<Activity> activityList() {
        return activityMapper.activityList();
    }

    /**
     * get List<Activity> BY parameter
     * used BY user&admin
     *
     * @param activity
     * @return List
     */
    @Override
    public List<Activity> getActivityByParam(Activity activity) {


        return activityMapper.selectByParameter(activity);
    }

    /**
     * insertActivity
     * used BY user
     *
     * @param activity
     * @return Integer
     */
    @Override
    public Integer insertActivity(Activity activity) {
        activity.setOpenStatus(0);
        return activityMapper.insert(activity);
    }

    /**
     * updateActivity
     * used BY user
     *
     * @param activity
     * @return Integer
     */
    @Override
    public Integer updateActivity(Activity activity) {
        Integer activityId = activity.getActivityId();
        if(activityMapper.selectByPrimaryKey(activityId) == null){
            return -1;
        }
        return activityMapper.updateByPrimaryKey(activity);
    }

    /**
     * deleteActivity
     * used BY user&admin
     *
     * @param activityId
     * @return Integer
     */
    @Override
    public Integer deleteActivity(Integer activityId) {
        if(activityMapper.selectByPrimaryKey(activityId) == null){
            //does not exist, error
            return -1;
        }
        return activityMapper.deleteByPrimaryKey(activityId);
    }

    /**
     * batchDeleteActivity
     * used BY user&admin
     *
     * @param activityIdList
     * @return Integer
     */
    @Override
    public Integer batchDeleteActivity(List<Integer> activityIdList) {
        Integer num = 0;
        for(Integer activityId:activityIdList){
            //activity exists
            if(activityMapper.selectByPrimaryKey(activityId) != null){
                num += activityMapper.deleteByPrimaryKey(activityId);
            }
        }
        if(num == activityIdList.size()){
            return num;
        }else
            return -1;
    }

    /**
     * select openStatus == 0
     * used BY admin
     *
     * @return List
     */
    @Override
    public List<Activity> selectNonOpenActivity(){
        ActivityExample example = new ActivityExample();
        ActivityExample.Criteria criteria = example.createCriteria();
        criteria.andOpenStatusEqualTo(0);
        List<Activity> list = activityMapper.selectByExample(example);
        return list;
    }

    /**
     * select activity which person join
     * used By user
     *
     * @param personId
     * @return List
     */
    @Override
    public List<Activity> selectPersonActivity(Integer personId) {
        List<PersonActivity> personActivityList = personActivityMapper.personActivityList(personId);
        List<Activity> activityList = new ArrayList<>();
        for(PersonActivity pa : personActivityList){
            activityList.add(activityMapper.selectByPrimaryKey(pa.getActivityId()));
        }
        if(activityList.size() == personActivityList.size()){
            return activityList;
        }else {
            return new ArrayList<>();
        }
    }

    /**
     * sign in activity by person
     * used By user
     *
     * @param personActivity
     * @return Integer
     */
    @Override
    public Integer insertPersonActivity(PersonActivity personActivity) {
        Integer activityId = personActivity.getActivityId();
        Activity activity = activityMapper.selectByPrimaryKey(activityId);
        activity.setCurPeople(activity.getCurPeople()+1);
        activityMapper.updateByPrimaryKey(activity);
        return  personActivityMapper.insertSelective(personActivity);
    }
    @Override
    public Integer deletePersonActivity(PersonActivity personActivity) {
        Integer personId = personActivity.getPersonId();
        Integer activityId = personActivity.getActivityId();
        Activity activity = activityMapper.selectByPrimaryKey(activityId);
        activity.setCurPeople(activity.getCurPeople()-1);
        activityMapper.updateByPrimaryKey(activity);
        List<PersonActivity> list = personActivityMapper.personActivityList(personId);
        Integer paId = 0;
        for(PersonActivity pa : list){
            if(pa.getActivityId().equals(activityId)){
                paId = pa.getPersonActivityId();
                break;
            }
        }
        return personActivityMapper.deleteByPrimaryKey(paId);
    }
    @Override
    public boolean existPersonAcitivity(PersonActivity personActivity) {
        Integer personId = personActivity.getPersonId();
        Integer activityId = personActivity.getActivityId();
        List<PersonActivity> list = personActivityMapper.personActivityList(personId);
        boolean flag = false;
        for(PersonActivity pa : list){
            if(pa.getActivityId().equals(activityId)){
                flag = true;
            }
        }
        return flag;
    }
}
