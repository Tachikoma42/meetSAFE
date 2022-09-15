package com.ood.team.dao;

import com.ood.team.entity.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Student record);

    Student selectByPrimaryKey(Integer id);

    List<Student> selectAll();

    int updateByPrimaryKey(Student student);

    List<Student> selectByCondition(Student student);

    Student login(@Param("name") String name, @Param("password") String password);
}