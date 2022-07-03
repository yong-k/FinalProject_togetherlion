package com.test.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController
{
	@Autowired
	private SqlSession sqlSession;
	
	// 공지사항 메인
	@RequestMapping(value = "/ad_notice_list.lion")
	public String noticeList()
	{
		return "/WEB-INF/view/admin/admin_homepage_noticeList.jsp";
	}
}
