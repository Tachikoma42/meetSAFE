package com.ood.team.entity;

/**
 * PersonActivity Bean
 *
 * @author Sihao Ren
 */
public class PersonActivity {
    private Integer personActivityId;

    private Integer activityId;

    private Integer personId;

    public Integer getPersonActivityId() {
        return personActivityId;
    }

    public void setPersonActivityId(Integer personActivityId) {
        this.personActivityId = personActivityId;
    }

    public Integer getActivityId() {
        return activityId;
    }

    public void setActivityId(Integer activityId) {
        this.activityId = activityId;
    }

    public Integer getPersonId() {
        return personId;
    }

    public void setPersonId(Integer personId) {
        this.personId = personId;
    }
}