package com.hrm.main;

import org.springframework.stereotype.Service;

import com.hrm.attendance.AttendanceDAO;
import com.hrm.info.InfoDAO;

import lombok.Data;

@Data
@Service
public class MainService {
	private final AttendanceDAO attendanceDAO; 
	private final InfoDAO infoDAO;
}
