package com.ood.team.service;

import com.ood.team.entity.Student;

import java.util.List;

public interface StudentService {

    List<Student> selectAll();

    List<Student> selectByCondition(Student student);

    int deleteByPrimaryKey(int id);

    int insertStudent(Student student);

    int updateStudent(Student student);

    Student login(String name, String password);
}
