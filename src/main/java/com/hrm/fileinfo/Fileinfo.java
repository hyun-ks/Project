package com.hrm.fileinfo;

import lombok.Data;

@Data
public class Fileinfo {
	
	private int fileid;
	private String name;
	private String path;
	private long filesize;
	private String description;
}