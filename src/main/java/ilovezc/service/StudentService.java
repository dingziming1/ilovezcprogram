package ilovezc.service;

import ilovezc.bean.Student;

public interface StudentService {


    int deleteByPrimaryKey(String id);

    int insert(Student record);

    int insertSelective(Student record);

    Student selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);

    Student queryLogin(String id,String password);

    int count();

}


