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
	
	// 메인 최근공구 게시물 카테고리별 조회
	public ArrayList<BuypostDTO> newListCate(String code);
	
	// 최근공구 게시물 개수 조회
	public String newListNum();
	
	// 최근공구 게시물 카테고리별 개수 조회
	public String newListCateNum(String code);
	
	// 대분류 카테고리별 공동구매 게시물 조회
	public ArrayList<BuypostDTO> mainCateList(String code);
	
	// 대분류 카테고리별 공동구매 게시물 개수 조회
	public String mainCateListNum(String code);
	
	// 소분류 카테고리별 공동구매 게시물 조회
	public ArrayList<BuypostDTO> subCateList(String code);
	
	// 소분류 카테고리별 공동구매 게시물 개수 조회
	public String subCateListNum(String code);
	
	// 특정 공동구매 게시물 상세보기
	public BuypostDTO search(String code);
	
	// 특정 공동구매 게시물 상태
	public BuypostDTO checkState(String code);
	
	
}
