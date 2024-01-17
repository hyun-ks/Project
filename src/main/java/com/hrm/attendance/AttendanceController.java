package com.hrm.attendance;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AttendanceController {
	@Autowired
	AttendanceService a;
	
	//출근을 클릭했을때는 출근 문자열을가져가고=commit이 출근 그리고 나머지는 직접 아이디가져옴
	
	@PostMapping("/attendance/check")
	public String saveAttendance(Model m) {
		m.addAttribute("save",a.insert(saveatt));
		
		return "/attendance/check";
	}
	
	@RequestMapping("/attendance/check")
    public String showAttendanceCheckForm() {
        return "/attendance/check";
    }
	@RequestMapping("/attendance/deptread")
    public String showAttendanceDeptreadForm() {
        return "/attendance/deptread";
    }
	
	


}
