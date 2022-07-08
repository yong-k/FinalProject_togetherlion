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
	
	// 중복 ID 조회
	public int checkDuplicateId(String id);
	
	// 탈퇴 ID 조회
	public int checkWithdrawalId(String id);
	
	// 중복 닉네임 조회
	public int checkDuplicateNickName(String nickname);
	
	// 중복 전화번호 조회
	public int checkDuplicateTel(String tel);
	
	// 회원 데이터 추가
	public void addMember(MemberDTO member);
}
