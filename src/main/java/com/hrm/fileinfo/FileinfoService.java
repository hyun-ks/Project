package com.hrm.fileinfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FileinfoService {
	@Autowired
	FileinfoDao dao;
	
	public int insertFile(Fileinfo file) {
		return dao.insertFile(file);
	}
	public List<Fileinfo>  fileList(){
		return dao.fileList();
	}
	public Fileinfo fileOne(int fileid) {
		return dao.fileOne(fileid);
	}
}