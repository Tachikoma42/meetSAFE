package com.ood.team.dao;

import com.ood.team.entity.Activity;
import java.util.List;
import com.ood.team.entity.ActivityExample;
import org.apache.ibatis.annotations.Param;
/**
 * Activity Mapper
 *
 * @author Ruofan Li
 */
public interface ActivityMapper {
    long countByExample(ActivityExample example);

    int deleteByExample(ActivityExample example);

    int deleteByPrimaryKey(Integer activityId);

    int insert(Activity record);

    int insertSelective(Activity record);

    List<Activity> selectByExample(ActivityExample example);

    Activity selectByPrimaryKey(Integer activityId);

    int updateByExampleSelective(@Param("record") Activity record, @Param("example") ActivityExample example);

    int updateByExample(@Param("record") Activity record, @Param("example") ActivityExample example);

    int updateByPrimaryKeySelective(Activity record);

    int updateByPrimaryKey(Activity record);

    List<Activity> activityList();

    List<Activity> selectByParameter(Activity activity);

}