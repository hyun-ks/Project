package com.hrm.main;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.hrm.attendance.Attendance;
import com.hrm.attendance.AttendanceService;
import com.hrm.emp.Employee;
import com.hrm.info.InfoService;


import org.springframework.web.bind.annotation.SessionAttributes;


@Controller
@SessionAttributes("user")
public class MainController {
	
	@Autowired
	AttendanceService a;
	
	@Autowired
	InfoService service;
	
	@Autowired
	MainService m;
	
	@ModelAttribute("user")
	public Employee getLoginDto() {
		return new Employee(); //반환값 세션에 저장(이값을 가져와야함)
	}
	

	@GetMapping("/main")
	 public String showAttendanceDeptreadForm1(Model m, @ModelAttribute("user") Employee user) {		
	    	m.addAttribute("view", a.viewall());
	    	
	    	String timediff = a.sub(user.getUserid());
		 	m.addAttribute("Time", timediff);
		 	
		 	Date currentDate = a.getDate();
		 	m.addAttribute("Date", currentDate);
		 	
	    	
	 
	 
	    	
	        return "/main";
	    }
	
		
	
}
