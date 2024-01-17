package com.hrm.attendance;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hrm.emp.Employee;

@Service
public class AttendanceService {
	@Autowired
	private AttendanceDAO dao;
	
	public int insert(int userid, String commit) {
		return dao.insert(userid, commit);
	}
	
	public int find(int userid, String commit) {
		return dao.find(userid, commit);
	}

}
