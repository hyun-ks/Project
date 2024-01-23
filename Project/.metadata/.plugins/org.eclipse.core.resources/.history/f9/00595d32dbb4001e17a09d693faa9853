package com.hrm.attendance;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AttendanceService {
	@Autowired
	private AttendanceDAO dao;
	
	public Attendance attend(int userid) {
		return dao.attend(userid);
	}
	
	public int insert(Attendance saveatt) {
		return dao.insert(saveatt);
	}
	

	
	

}
