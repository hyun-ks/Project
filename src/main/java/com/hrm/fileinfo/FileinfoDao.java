package com.hrm.fileinfo;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;


@Mapper
public interface FileinfoDao {
	@Insert("insert into fileinfo (name, path, filesize, description ) values"
			+ "(#{name}, #{path}, #{filesize},#{description})")
	int insertFile(Fileinfo file);
	
	@Select("select * from fileinfo")
	List<Fileinfo>  fileList();
	
	@Select("select * from fileinfo where fileid = #{fileid}")
	Fileinfo fileOne(int fileid);
}
