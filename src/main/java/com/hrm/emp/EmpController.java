package com.hrm.emp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EmpController {
	@RequestMapping("/emp/list")
    public String showEmployeeListForm() {
        return "/emp/list";
    }

}
