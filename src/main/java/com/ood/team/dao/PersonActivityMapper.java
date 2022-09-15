package com.ood.team.dao;

import com.ood.team.entity.PersonActivity;
import com.ood.team.entity.PersonActivityExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * PersonActivity Mapper
 *
 * @author Sihao Ren
 */
public interface PersonActivityMapper {
    long countByExample(PersonActivityExample example);

    int deleteByExample(PersonActivityExample example);

    int deleteByPrimaryKey(Integer personActivityId);

    int insert(PersonActivity record);

    int insertSelective(PersonActivity record);

    PersonActivity selectByPrimaryKey(Integer personActivityId);

    int updateByExampleSelective(@Param("record") PersonActivity record, @Param("example") PersonActivityExample example);

    int updateByExample(@Param("record") PersonActivity record, @Param("example") PersonActivityExample example);

    int updateByPrimaryKeySelective(PersonActivity record);

    int updateByPrimaryKey(PersonActivity record);

    List<PersonActivity> personActivityList(Integer personId);
}