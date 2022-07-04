/*======================
	IBuypostDAO.java
	- 인터페이스
======================*/

package com.test.mybatis;

import java.util.ArrayList;

public interface IBuypostDAO
{
	// 메인 공동구매 게시물 48개 조회
	public ArrayList<BuypostDTO> list();
	
	// 메인 최근공구 게시물 조회
	public ArrayList<BuypostDTO> newList();
	
	// 특정 공동구매 게시물 상세보기
	public BuypostDTO search(String code);
	
	// 특정 공동구매 게시물 상태
	public BuypostDTO checkState(String code);
	
	
}
