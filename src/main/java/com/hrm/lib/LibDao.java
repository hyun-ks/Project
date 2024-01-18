package com.hrm.lib;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface LibDao {

	@Insert("INSERT INTO Lib(userid, title, content, regdate) values(#{userid},#{title},#{content},now())")
	int insert(Lib l);
	
	@Select("select * from Lib order by regdate desc limit #{start} , #{count}")
	List<Lib> LibList(Map<String, Object> m);
	
	@Select("select count(*) from Lib")
	int count();
	
	@Select("select * from Lib where num = #{num}")
	Lib LibOne(int num);
	
	@Update(" update Lib set title=#{title} , content=#{content} where num=#{num}")
	int updateLib(Lib dto);
	
	@Delete("delete from Lib where num = #{num}")
	int deleteLib(int num);
	
	@Update("update Lib set readcount = readcount + 1 where num = #{num}")
	int addReadcount(int num);

}
