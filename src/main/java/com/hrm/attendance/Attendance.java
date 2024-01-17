package com.hrm.attendance;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class Attendance {
	
	 private LocalDateTime checkInTime;
	 private LocalDateTime checkOutTime;
	 private int userid;
	 private String commit;
}
