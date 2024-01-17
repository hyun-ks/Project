package com.hrm.attendance;
import java.time.LocalDateTime;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface AttendanceDAO {
	
	 @Select("select * from em_info where userid = #{userid}")
	 Attendance attend(int userid);
	 
	 @Insert("insert into em_att(userid, checkInTime, commit, checkOutTime) values(#{userid}, #{checkInTime},#{commit}, #{checkOutTime})")
	 int insert(Attendance saveatt);
	 
	 
	 
	 

	 
}
