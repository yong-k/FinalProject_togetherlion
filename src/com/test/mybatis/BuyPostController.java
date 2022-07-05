/*=====================
 	BuypostController.java
 	- 컨트롤러 객체
======================*/

package com.test.mybatis;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BuyPostController
{
	@Autowired
	private SqlSession sqlSession;
	
	
	// 헤더 페이지
	@RequestMapping(value="/header.lion")
	public String header(Model model)
	{
		return "/WEB-INF/view/user/user_header.jsp";
	}
	
	
	// 메인 페이지
	@RequestMapping(value="/main.lion")	
	public String userMain(Model model)
	{
		IBuypostDAO dao = sqlSession.getMapper(IBuypostDAO.class);
		
		ArrayList<BuypostDTO> list = dao.list();
		
		
		// 남은 일, 시, 분 구하기 ---------------------------------------------------------------------------------------
		for (BuypostDTO dto : list)
		{
			SimpleDateFormat format = new SimpleDateFormat("yyyy/mm/dd HH:mm:ss");
			
			Date deadDate = null;
			Date sysDate = null;
			String dead = dto.getDeadline();
			
			try
			{
				deadDate = format.parse(dead);
				sysDate = new Date();
				String sys = format.format(sysDate);
				sysDate = format.parse(sys);
				
				long day = (deadDate.getTime() - sysDate.getTime()) / (1000*24*60*60); // 일
				long hour = (deadDate.getTime() - sysDate.getTime()) % (1000*24*60*60) / 3600000; // 시
				long minute = (deadDate.getTime() - sysDate.getTime()) % (1000*24*60*60) % 3600000 / 60000; // 분
				
				dto.setDay(Long.toString(day));
				dto.setHour(Long.toString(hour));
				dto.setMinute(Long.toString(minute));
				
			} catch (Exception e)
			{
				System.out.println(e.toString());
			}
			
		}
		// --------------------------------------------------------------------------------------- 남은 일, 시, 분 구하기 
		
		model.addAttribute("list", list);
		
		return "/WEB-INF/view/user/user_main.jsp";
	}
	
	
	// 공동구매 상세보기
	@RequestMapping(value="/buypostarticle.lion", method=RequestMethod.GET)
	public String buypost(String code, Model model)
	{	
		IBuypostDAO buypost = sqlSession.getMapper(IBuypostDAO.class); 
		IMemberDAO member = sqlSession.getMapper(IMemberDAO.class);
		 
		BuypostDTO dto = buypost.search(code); 
		String member_code = dto.getMember_code();
		System.out.println(member_code);
		
		model.addAttribute("buypost", dto); 
		model.addAttribute("member",member.search(member_code));		
				
		return "/WEB-INF/view/user/user_buyPostArticle.jsp";
	}
	
	
	@RequestMapping(value="/buypostnew.lion")
	public String buypostNew(Model model)
	{
		IBuypostDAO dao = sqlSession.getMapper(IBuypostDAO.class);
		
		ArrayList<BuypostDTO> list = dao.newList();
		String count = dao.newListNum();
		
		// 남은 일, 시, 분 구하기 ---------------------------------------------------------------------------------------
		for (BuypostDTO dto : list)
		{
			SimpleDateFormat format = new SimpleDateFormat("yyyy/mm/dd HH:mm:ss");
			
			Date deadDate = null;
			Date sysDate = null;
			String dead = dto.getDeadline();
			
			try
			{
				deadDate = format.parse(dead);
				sysDate = new Date();
				String sys = format.format(sysDate);
				sysDate = format.parse(sys);
				
				long day = (deadDate.getTime() - sysDate.getTime()) / (1000*24*60*60); // 일
				long hour = (deadDate.getTime() - sysDate.getTime()) % (1000*24*60*60) / 3600000; // 시
				long minute = (deadDate.getTime() - sysDate.getTime()) % (1000*24*60*60) % 3600000 / 60000; // 분
				
				dto.setDay(Long.toString(day));
				dto.setHour(Long.toString(hour));
				dto.setMinute(Long.toString(minute));
				
			} catch (Exception e)
			{
				System.out.println(e.toString());
			}
			
		}
		
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		
		return "/WEB-INF/view/user/user_buyPost_new.jsp";
	}
	
	
	@RequestMapping(value="/buypostcate.lion", method=RequestMethod.GET)
	public String buypostCate(String code, Model model)
	{
		IBuypostDAO dao = sqlSession.getMapper(IBuypostDAO.class);
		ArrayList<BuypostDTO> list = dao.mainCateList(code);
		String count = dao.mainCateListNum(code);
		
		// 남은 일, 시, 분 구하기 ---------------------------------------------------------------------------------------
		for (BuypostDTO dto : list)
		{
			SimpleDateFormat format = new SimpleDateFormat("yyyy/mm/dd HH:mm:ss");
			
			Date deadDate = null;
			Date sysDate = null;
			String dead = dto.getDeadline();
			
			try
			{
				deadDate = format.parse(dead);
				sysDate = new Date();
				String sys = format.format(sysDate);
				sysDate = format.parse(sys);
				
				long day = (deadDate.getTime() - sysDate.getTime()) / (1000*24*60*60); // 일
				long hour = (deadDate.getTime() - sysDate.getTime()) % (1000*24*60*60) / 3600000; // 시
				long minute = (deadDate.getTime() - sysDate.getTime()) % (1000*24*60*60) % 3600000 / 60000; // 분
				
				dto.setDay(Long.toString(day));
				dto.setHour(Long.toString(hour));
				dto.setMinute(Long.toString(minute));
				
			} catch (Exception e)
			{
				System.out.println(e.toString());
			}			
		}
		
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		
		
		return "/WEB-INF/view/user/user_buyPost_category.jsp";
	}
	
}
