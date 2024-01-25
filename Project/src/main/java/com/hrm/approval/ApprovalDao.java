package com.hrm.approval;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface ApprovalDao {
	@Insert("insert into approval (userid, num, name, path, commit ) values"
			+ "(#{userid}, #{num}, #{name}, #{path}, #{commit})")
	int insertsign(Approval sign);
	
	@Select("select * from approval NATURAL JOIN approvaltype where appnum = #{appnum}")
	Approval signOne(int appnum);
	
	@Select("select * from approval limit #{start} , #{count}")
	List<Approval> signList(Map<String, Object> m);
	
	@Select("select count(*) from approval")
	int count();
	
	@Select("SELECT * FROM approval NATURAL JOIN approvaltype where userid = #{userid}")
	List<Approval> app(int userid);
	 
	@Delete("delete from approval where appnum = #{appnum}")
		int deleteapproval(int appnum);
	
	 @Select("select userid, commit from em_info natural join em_att where userid = #{userid} ")
	 List<Approval> search(@Param("userid") int userid, @Param("startDate") Date startDate, @Param("endDate") Date endDate);
}