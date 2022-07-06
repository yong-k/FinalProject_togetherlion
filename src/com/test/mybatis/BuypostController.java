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
public class BuypostController
{
	@Autowired
	private SqlSession sqlSession;
	
	
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
		
		// 남은 일, 시, 분 구하기 ---------------------------------------------------------------------------------------		
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
		// --------------------------------------------------------------------------------------- 남은 일, 시, 분 구하기 
		
		model.addAttribute("buypost", dto); 
		model.addAttribute("member",member.search(member_code));		
				
		return "/WEB-INF/view/user/user_buyPostArticle.jsp";
	}
	
	
	@RequestMapping(value="/buypostnew.lion")
	public String buypostNew(Model model)
	{
		IBuypostDAO dao = sqlSession.getMapper(IBuypostDAO.class);
		IMainCateDAO mainDao = sqlSession.getMapper(IMainCateDAO.class);	
		
		ArrayList<BuypostDTO> list = dao.newList();
		ArrayList<MainCateDTO> mainList = mainDao.list();
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
		model.addAttribute("mainList", mainList);
		
		return "/WEB-INF/view/user/user_buyPost_new.jsp";
	}
	
	
	@RequestMapping(value="/buypostnewcate.lion")
	public String buypostNewCate(String code, Model model)
	{
		IBuypostDAO dao = sqlSession.getMapper(IBuypostDAO.class);
		IMainCateDAO mainDao = sqlSession.getMapper(IMainCateDAO.class);	
		
		ArrayList<BuypostDTO> list = dao.newListCate(code);
		ArrayList<MainCateDTO> mainList = mainDao.list();
		String count = dao.newListCateNum(code);
		
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
		model.addAttribute("mainList", mainList);
		model.addAttribute("code", code);
		
		if (code.equals("every"))
			return "/buypostnew.lion";
		
		return "/WEB-INF/view/user/user_buyPost_new.jsp";
	}
	
	
	@RequestMapping(value="/buypostfinal.lion")
	public String buypostFinal(Model model)
	{
		IBuypostDAO dao = sqlSession.getMapper(IBuypostDAO.class);
		IMainCateDAO mainDao = sqlSession.getMapper(IMainCateDAO.class);	
		
		ArrayList<BuypostDTO> list = dao.finalList();
		ArrayList<MainCateDTO> mainList = mainDao.list();
		String count = dao.finalListNum();
		
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
		model.addAttribute("mainList", mainList);
		
		return "/WEB-INF/view/user/user_buyPost_final.jsp";
	}
	
	
	@RequestMapping(value="/buypostmaincate.lion", method=RequestMethod.GET)
	public String buypostMainCate(String code, Model model)
	{
		IBuypostDAO dao = sqlSession.getMapper(IBuypostDAO.class);
		ISubCateDAO subDao = sqlSession.getMapper(ISubCateDAO.class);
		IMainCateDAO mainDao = sqlSession.getMapper(IMainCateDAO.class);
		
		
		// 대분류 카테고리별 공동구매 게시물 리스트 
		ArrayList<BuypostDTO> list = dao.mainCateList(code);
		
		// 게시물 개수
		String count = dao.mainCateListNum(code);
		
		// 해당 대분류 카테고리의 소분류 카테고리 리스트
		ArrayList<SubCateDTO> subList = subDao.searchByMainCateCode(code);
		
		MainCateDTO mainCate = mainDao.search(code);
		
		
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
		model.addAttribute("subList", subList);
		model.addAttribute("mainCate", mainCate);
		model.addAttribute("code", code);
		
		return "/WEB-INF/view/user/user_buyPost_category.jsp";
	}
	
	
	@RequestMapping(value="/buypostsubcate.lion", method=RequestMethod.GET)
	public String buypostSubCate(String code, Model model)
	{
		IBuypostDAO dao = sqlSession.getMapper(IBuypostDAO.class);
		ISubCateDAO subDao = sqlSession.getMapper(ISubCateDAO.class);
		IMainCateDAO mainDao = sqlSession.getMapper(IMainCateDAO.class);
		
		
		// 대분류 카테고리별 공동구매 게시물 리스트 
		ArrayList<BuypostDTO> list = dao.subCateList(code);
		
		// 게시물 개수
		String count = dao.subCateListNum(code);
		
		// 해당 대분류 카테고리의 소분류 카테고리 리스트
		ArrayList<SubCateDTO> subList = subDao.searchBySubCateCode(code);
		
		MainCateDTO mainCate = mainDao.searchBySubCate(code);
		
		
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
		model.addAttribute("subList", subList);
		model.addAttribute("mainCate", mainCate);
		model.addAttribute("code", code);
		
		return "/WEB-INF/view/user/user_buyPost_category.jsp";
	}
	
}
