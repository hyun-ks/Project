package com.hrm.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    // 로그인 폼을 보여주는 메서드
    @RequestMapping("/login/login")
    public String showLoginForm() {
        return "/login/login"; // login.jsp와 같은 뷰를 반환
    }
 // 로그인 처리를 하는 메서드
    @PostMapping("login/loginProcess")
    public String loginProcess(@RequestParam("username") String username,
                               @RequestParam("password") String password,
                               Model model) {

        // 여기서는 간단한 로그인 검증을 수행합니다. 실제로는 데이터베이스나 외부 소스를 통해 검증되어야 합니다.
        if (username.equals("1234") && password.equals("1234")) {
            // 로그인 성공 시 처리할 로직 (예: 세션에 사용자 정보 저장)
            return "/main"; // 로그인 성공 시 보여줄 페이지로 이동
        } else {
            // 로그인 실패 시 처리할 로직 (예: 에러 메시지 출력)
            model.addAttribute("error", "Invalid username or password. Please try again.");
            return "login/login"; // 로그인 실패 시 로그인 폼 다시 보여주기
        }
    }
}