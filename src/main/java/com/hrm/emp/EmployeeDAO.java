package com.hrm.emp;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface EmployeeDAO {
    // 가정상의 데이터베이스나 외부 소스에서 사원 목록을 가져오는 메서드
    @Select("select * from em_info")
    List<Employee> emp();
    //@Insert("INSERT INTO em_info(userid")
}
