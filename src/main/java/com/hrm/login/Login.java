<<<<<<< HEAD
package com.hrm.login;

import org.springframework.beans.factory.annotation.Autowired;

import com.hrm.dept.DeptService;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class Login {
	
	@NotNull(message = "userid is null.")
	@NotEmpty(message = "userid is empty.")
	private String userid;
	@NotNull(message = "Password is null.")
	@NotEmpty(message = "Password is empty.")
	private String Password;
	
	

}
=======
package com.hrm.login;

import org.springframework.beans.factory.annotation.Autowired;

import com.hrm.dept.DeptService;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class Login {
	
	@NotNull(message = "userid is null.")
	@NotEmpty(message = "userid is empty.")
	private String userid;
	@NotNull(message = "Password is null.")
	@NotEmpty(message = "Password is empty.")
	private String Password;
	
	

}
>>>>>>> 58a19f8400d25f5ca7db8af2338ccfdf574e4f47
