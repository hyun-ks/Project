<<<<<<< HEAD
package com.hrm.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {
	@Autowired
	LoginDAO dao;

	public String login(String Username) {
		return dao.login(Username);
	}
	

}
=======
package com.hrm.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {
	@Autowired
	LoginDAO dao;

	public String login(String Username) {
		return dao.login(Username);
	}
	

}
>>>>>>> 58a19f8400d25f5ca7db8af2338ccfdf574e4f47
