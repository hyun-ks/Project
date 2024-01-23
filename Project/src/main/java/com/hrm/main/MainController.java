package com.hrm.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.hrm.attendance.AttendanceService;
import com.hrm.emp.Employee;
import com.hrm.info.InfoService;

@Controller
public class MainController {
	
	@Autowired
	AttendanceService a;
	
	@Autowired
	InfoService service;
	
	@GetMapping("/main")
    public String showAttendanceDeptreadForm(Model m, @ModelAttribute("user") Employee user) {
		if(user.getRanknum() > 3) {
			return "/attendance/authcheck";
		}
		m.addAttribute("view", a.viewall());
		m.addAttribute("name",a.name(user.getDept_no()));
	
        return "/main";
    }
	
	@GetMapping("/info/profile")
    public String showInfoProfileForm() {
        return "/info/profile";
    }

}
