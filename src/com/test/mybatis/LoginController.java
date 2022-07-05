package com.test.mybatis;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController
{
   @Autowired
   private SqlSession sqlSession;
   
   @RequestMapping(value="/loginform.lion")   
   public String login(Model model)
   {
      return "/WEB-INF/view/user/user_loginForm.jsp";
   }
   
   @RequestMapping(value="/loginmember.lion", method=RequestMethod.POST)
   public String loginMember(MemberDTO member, HttpSession session)
   {
      String result = null;
      
      IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
      
      String member_code = null;
      String nickName = null;
      int banMemberCount = 0;
      
      member_code = dao.loginMember(member);
      
      if (member_code != null)
	  {
         MemberDTO dto = dao.search(member_code);
         nickName = dto.getNickname();
    	 banMemberCount = dao.count(member_code);
	  }

      
      if (member_code == null)									// 회원 정보가 없을 경우
      {
    	result = "redirect:loginalert.lion?code=1";	
      }
      else if (banMemberCount == 1)								// 영구정지 회원일 경우
      {
    	result = "redirect:loginalert.lion?code=2";	    	  
      }
      else														// 정상 로그인
      {	
    	 session.setAttribute("member_code", member_code);
    	 session.setAttribute("nickName", nickName);
         result = "redirect:main.lion";
      }
      
      return result;
   }
   
   @RequestMapping(value="/loginadmin.lion", method=RequestMethod.POST)
   public String loginAdmin(AdminDTO admin, Model model, HttpSession session)
   {
      String result = null;
      
      IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
      String member_code = null;
      member_code = dao.loginAdmin(admin);
      
      if (member_code == null)									// 관리자 정보가 없을 경우
      {
    	  result = "redirect:loginalert.lion?code=1";
      }
      else														// 정상 로그인
      {
    	 session.setAttribute("member_code", member_code);
         result = "redirect:/admin/admin_main.jsp";
      }
      return result;
   }
   
   
	@RequestMapping(value="/loginalert.lion", method = RequestMethod.GET)
	public String loginAlert()
	{
		String result = null;
		
		result = "/WEB-INF/view/user/user_loginAlert.jsp";
		
		return result;
	}
	
	
	@RequestMapping(value="/logout.lion")
	public String logOut(HttpSession session)
	{
		session.invalidate();
		
		return "redirect:main.lion"; 
		
	}
	
   
}



