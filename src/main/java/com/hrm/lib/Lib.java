package com.hrm.lib;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Lib {
	
	private int num;
	private int userid;
	private String title;
	private String content;
	private Date regdate;
	private int readcount;
}
