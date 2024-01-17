package com.hrm.attendance;

import java.util.Date;

import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.hrm.emp.Employee;

@Controller
@SessionAttributes("user")
public class AttendanceController {
	@Autowired
	AttendanceService a;
	
	//출근을 클릭했을때는 출근 문자열을가져가고=commit이 출근 그리고 나머지는 직접 아이디가져옴
	
	@GetMapping("/attendance/check")
	public String saveAttendance(@RequestParam("commit") String commit ,Model m, @ModelAttribute("user") Employee user) {
		
		if(a.find(user.getUserid(), commit) == 0) {
		a.insert(user.getUserid(), commit);
		m.addAttribute("commit", commit);
		m.addAttribute("time", new Date());
		System.out.println("동작");
		}
		else{
			m.addAttribute("popupMessage", "이미 "+commit+ "하셨습니다.");
		}
		return "/attendance/check";
	}
	
	@RequestMapping("/attendance/deptread")
    public String showAttendanceDeptreadForm() {
        return "/attendance/deptread";
    }
	
	@ModelAttribute("user")
	public Employee getLoginDto() {
		return new Employee(); //반환값 세션에 저장(이값을 가져와야함)
	}


}
