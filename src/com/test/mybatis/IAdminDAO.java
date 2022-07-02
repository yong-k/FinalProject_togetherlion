package com.test.mybatis;

public interface IAdminDAO
{
	// 로그인
	//public String loginAdmin(String id, String pw);
	public String loginAdmin(AdminDTO admin);
	
	// 검색 조회
	public AdminDTO search(String member_code);
}
