package com.hrm.attendance;
import java.time.LocalDateTime;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.beans.factory.annotation.Autowired;

import com.hrm.emp.EmpService;
import com.hrm.emp.Employee;

@Mapper
public interface AttendanceDAO {
	//로그인에서 세션정보 가져오기때문에 데이터는 찾을필요없음
	
	 @Insert("insert into em_att(userid, checkTime, commit) values(#{userid}, now(), #{commit})")
	 int insert(@Param("userid") int userid, @Param("commit") String commit);
	 
	 @Select("select count(*) from em_att where userid = #{userid} and commit=#{commit} and checktime > DATE_FORMAT(now(), '%Y-%m-%d 00:00:00')")
	 int find(@Param("userid") int userid, @Param("commit") String commit);//출석중복확인
}
