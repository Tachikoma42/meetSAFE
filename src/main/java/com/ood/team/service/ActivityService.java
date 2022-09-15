package com.ood.team.service;

import com.ood.team.entity.Activity;
import com.ood.team.entity.PersonActivity;

import java.util.List;

/**
 * Activity Service Implementation
 *
 * @author Ruofan Li
 */
public interface ActivityService {
    /**
     * getActivity
     * used BY user&admin
     *
     * @return List
     */
    public List<Activity> activityList();

    /**
     * get List<Activity> BY parameter
     * used BY user&admin
     *
     * @param activity
     * @return List
     */
    public List<Activity> getActivityByParam(Activity activity);

    /**
     * insertActivity
     * used BY user
     *
     * @param activity
     * @return Integer
     */
    public Integer insertActivity(Activity activity);

    /**
     * updateActivity
     * used BY user
     *
     * @param activity
     * @return Integer
     */
    public Integer updateActivity(Activity activity);

    /**
     * deleteActivity
     * used BY user&admin
     *
     * @param activityId
     * @return Integer
     */
    public Integer deleteActivity(Integer activityId);

    /**
     * batchDeleteActivity
     * used BY user&admin
     *
     * @param activityIdList
     * @return Integer
     */
    public Integer batchDeleteActivity(List<Integer> activityIdList);

    /**
     * select activities which openStatus = 0
     * used BY admin
     *
     * @return List
     */
    public List<Activity> selectNonOpenActivity();

    /**
     * select activity which person join
     * used By user
     *
     * @param personId
     * @return
     */
    public List<Activity> selectPersonActivity(Integer personId);

    /**
     * sign in activity by person
     * used By user
     *
     * @param personActivity
     * @return Integer
     */
    public Integer insertPersonActivity(PersonActivity personActivity);
    public Integer deletePersonActivity(PersonActivity personActivity);
    public boolean existPersonAcitivity(PersonActivity personActivity);
}
