package com.hrm.dept;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DeptController {
	@RequestMapping("/dept/list")
    public String showDepartmentListForm() {
        return "/dept/list";
    }

}
