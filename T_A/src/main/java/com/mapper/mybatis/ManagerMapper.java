package com.mapper.mybatis;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.ex01.domain.ManagerVO;
import com.ex01.domain.Manager_BoardVO;

import com.ex01.domain.UsersVO;

@Mapper
public interface ManagerMapper { // 관리자 sql 

	@Select("select *from m_manager") // 관리자 전체 조회
	public List<ManagerVO> selectAll();
	
	@Select("select *from m_manager id = #{id}") // 관리자 전체 조회
	public int selectfind(String id);
	
	@Select("select *from manager_board ") // 공지사항 전체 조회
	public List<Manager_BoardVO> Manager_Board1();
	
	@Select("SELECT * FROM manager_board WHERE m_board = #{m_board}  ") // 공지사항 상세 조회
	public Manager_BoardVO boardfind(int m_board);
	
	@Select("select max( m_board)+1 from manager_board") // 공지사항 글 번호 생성
	public int getmanager_board();
	
	@Update("update manager_board set hitCount=hitCount+1 where m_board= #{m_board}") // 조회수 증가 업데이트 
	public int hitboard();

	String boardInsert = """
			insert into manager_board (m_board,id,title,content,img_name,name,HITCOUNT) 
				VALUES (#{m_board},#{id},#{title},#{content},#{img_name},#{name},1);
			""";
	
	@Insert(boardInsert) // 공지사항 등록 
	@Options(useGeneratedKeys = true,keyProperty = "m_board")
	public int insertboard(Manager_BoardVO vo);
	
	
	@Update("update manager_board set title=#{title},content=#{content},img_name=#{img_name} WHERE m_board=#{m_board} ")
	public int boardupdate(); // 공지사항 업데이트 
	
	@Delete("delete manager_board where m_board = #{m_board} ") // 공지사항 삭제 
	public int deleteboard ();
	
	
	// --------------------------------------
	// 회원 정보 전체 조회 SQL
	@Select("select * from users")
	public List<UsersVO> user_selectAll();
	
	
	// 아이디 조회 SQL
	@Select("select * from users where user_id = #{user_id}")
	public UsersVO userSelectOne(String id);
	
	
	
	String update_sql = """
			update users set user_pwd=#{user_pwd}, user_name=#{user_name}, user_email=#{user_email} where user_id = #{user_id}
			""";
	 // 수정 SQL
	@Update(update_sql) 
	public int userUpdate(UsersVO vo);
	
	// 삭제 SQL 
	@Delete("delete from users where user_id = #{user_id}")
	public int userDelete(@Param("id") String id);
	
	
	
	String checkId = """
			select decode( count(*),1,'true','false')as result from users where user_id =#{user_id}
			""";
	// 아이디 중복 체크 SQL
	@Select(checkId)
	public Boolean checkID(@Param("user_id") String user_id);
	
	
	
	String idList = """
			select * from(
			 select 
              ROWNUM as recNum,
              user_id, user_pwd,user_name,user_email,regdate
				from (
				select 
               user_id, user_pwd,user_name,user_email, regdate
               from users 
		)WHERE user_id LIKE '%'||#{user_id}||'%'
	)  where recNum between (#{section}-1)*100 + (#{pageNum}-1)*10+1 and (#{section}-1) *100 + (#{pageNum})*10
			""";
	@Select(idList) // 아이디로 검색 조회
	public List<UsersVO> idList(Map<String,String> pageingMap);
	
	String nameList = """
			select * from(
			 select 
              ROWNUM as recNum,
              user_id, user_pwd,user_name,user_email,regdate
				from (
				select 
               user_id, user_pwd,user_name,user_email, regdate
               from users 
		)WHERE user_name LIKE '%'||#{user_name}||'%'
	)  where recNum between (#{section}-1)*100 + (#{pageNum}-1)*10+1 and (#{section}-1) *100 + (#{pageNum})*10
			""";
	@Select(nameList) // 이름으로 검색 조회
	public List<UsersVO> nameList(Map<String,String> pageingMap);
	
	
	String emailList = """
			select * from(
			 select 
              ROWNUM as recNum,
              user_id, user_pwd,user_name,user_email,regdate
				from (
				select 
               user_id, user_pwd,user_name,user_email, regdate
               from users 
		)WHERE user_email LIKE '%'||#{user_email}||'%'
	)  where recNum between (#{section}-1)*100 + (#{pageNum}-1)*10+1 and (#{section}-1) *100 + (#{pageNum})*10
		
			""";
	@Select(emailList) // 이메일로 검색 조회
	public List<UsersVO> emailList(Map<String,String> pageingMap);
	
	
	String numList = """
			select * from(
			 select 
              ROWNUM as recNum,
              user_id, user_pwd,user_name,user_email,regdate
				from (
				select 
               user_id, user_pwd,user_name,user_email, regdate
               from users 
		)
	)  where recNum between (#{section}-1)*100 + (#{pageNum}-1)*10+1 and (#{section}-1) *100 + (#{pageNum})*10
			""";
	@Select(numList)
	public List<UsersVO> numList(Map<String,Integer> pageingMap);
	
	@Select("select count(*) from t_member")
	public int recNum();
	
	
	
	
	
	
	
}