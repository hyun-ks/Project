package com.hrm.board;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface BoardDao {
	
	@Insert("INSERT INTO board(userid, title, content, regdate) values(#{userid},#{title},#{content},now())")
	int insert(Board b);
	
	@Select("select * from board order by regdate desc limit #{start} , #{count}")
	List<Board> boardList(Map<String, Object> m);
	
	@Select("select count(*) from Board")
	int count();
	
	@Select("select * from board where num = #{num}")
	Board boardOne(int num);
	
	@Update(" update board set title=#{title} , content=#{content} where num=#{num}")
	int updateBoard(Board dto);
	
	@Delete("delete from board where num = #{num}")
	int deleteBoard(int num);
	
	@Update("update board set readcount = readcount + 1 where num = #{num}")
	int addReadcount(int num);

}