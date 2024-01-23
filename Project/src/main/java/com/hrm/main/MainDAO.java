package com.hrm.main;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.hrm.attendance.AttendanceDAO;
import com.hrm.info.InfoDAO;

import lombok.Data;

@Data
@Repository
@Mapper
public class MainDAO {
    private final AttendanceDAO attendanceDAO;
    private final InfoDAO infoDAO;
}