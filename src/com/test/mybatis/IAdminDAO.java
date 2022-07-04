package com.test.mybatis;

import java.sql.SQLException;
import java.util.ArrayList;

public interface IAdminDAO
{
	// 로그인
	//public String loginAdmin(String id, String pw);
	public String loginAdmin(AdminDTO admin);
	
	// 검색 조회
	public AdminDTO search(String member_code);
	
	// 전체회원출력(조회)
	public ArrayList<MemberDTO> listAllMember();
	
	//전체회원목록 페이징처리
	public int listAllMemberCount();
	
	// 공지글 목록
    public ArrayList<AdNoticeListDTO> listNotice() throws SQLException;
	
	
	
}
