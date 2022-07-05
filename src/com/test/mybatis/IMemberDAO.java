package com.test.mybatis;

public interface IMemberDAO
{
	// 로그인 (매개변수 2개 이상이면 DTO로)
	//public String loginMember(String id, String pw);
	public String loginMember(MemberDTO member);
	
	// 검색 조회
	public MemberDTO search(String member_code); 
	
	// 영구정지 조회
	public int count(String member_code);
	
}
