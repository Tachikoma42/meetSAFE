package com.ood.team.dao;

import com.ood.team.entity.Activity;
import com.ood.team.entity.ActivityExample;
import com.ood.team.entity.HealthInfo;
import com.ood.team.entity.HealthInfoExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * HealthInfo Mapper
 *
 * @author Sihao Ren
 */
public interface HealthInfoMapper {
    long countByExample(HealthInfoExample example);

    int deleteByExample(HealthInfoExample example);

    int deleteByPrimaryKey(Integer healthinfoId);

    int insert(HealthInfo record);

    int insertSelective(HealthInfo record);

    HealthInfo selectByPrimaryKey(Integer healthinfoId);

    List<HealthInfo> selectByExample(HealthInfoExample example);

    int updateByExampleSelective(@Param("record") HealthInfo record, @Param("example") HealthInfoExample example);

    int updateByExample(@Param("record") HealthInfo record, @Param("example") HealthInfoExample example);

    int updateByPrimaryKeySelective(HealthInfo record);

    int updateByPrimaryKey(HealthInfo record);

    List<HealthInfo> healthInfoList();

    HealthInfo selectHealthInfoStatus(Integer personId);

    int updateHealthBypersonId(Integer personId) ;
}