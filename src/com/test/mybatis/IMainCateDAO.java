package com.test.mybatis;

import java.util.ArrayList;

public interface IMainCateDAO
{
	// 대분류 카테고리 리스트 출력
	public ArrayList<MainCateDTO> list();
}
