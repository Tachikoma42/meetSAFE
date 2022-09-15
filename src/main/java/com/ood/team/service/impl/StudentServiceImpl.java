package com.ood.team.service.impl;

import com.mysql.cj.util.StringUtils;
import com.ood.team.dao.StudentMapper;
import com.ood.team.entity.Student;
import com.ood.team.service.StudentService;
import com.mysql.jdbc.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentMapper studentMapper;

    @Override
    public List<Student> selectAll() {
        return studentMapper.selectAll();
    }

    @Override
    public List<Student> selectByCondition(Student student) {
        /* if test ... != null */


        if(StringUtils.isNullOrEmpty(student.getName())) {
            student.setName(null);
        }

        return studentMapper.selectByCondition(student);
    }


    @Override
    public int deleteByPrimaryKey(int id) {
        return studentMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insertStudent(Student student) {
        return studentMapper.insert(student);
    }

    @Override
    public int updateStudent(Student student) {
        return studentMapper.updateByPrimaryKey(student);
    }

    @Override
    public Student login(String name, String password) {
        return studentMapper.login(name, password);
    }
}
