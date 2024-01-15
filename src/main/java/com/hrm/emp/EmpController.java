package com.hrm.emp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EmpController {
	@Autowired
	EmpService e;
	@RequestMapping("/emp/list")
    public String showEmployeeListForm(Model m) {
		m.addAttribute("emp", e.empall());
        return "/emp/list";
    }


}
