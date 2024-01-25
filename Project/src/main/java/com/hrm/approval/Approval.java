package com.hrm.approval;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Approval {
	private int num;
	private int userid;
	private String path;
	private Date regdate;
	private String name;
	private String atype;
	private int appnum;
	private String commit;
}