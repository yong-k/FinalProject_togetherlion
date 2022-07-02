package com.test.mybatis;

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
   
   //-- http://localhost:8090/togetherlion/loginform.lion
   @RequestMapping("/loginform.lion")   
   public String login(Model model)
   {
      //return "/WEB-INF/view/user/user_loginForm.jsp";
      return "/user/user_loginForm.jsp";
   }
   
   
   @RequestMapping(value="/loginmember.lion", method=RequestMethod.POST)
   public String loginMember(MemberDTO member, Model model)
   {
      String result = null;
      
      IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
      
      String member_code = null;
      member_code = dao.loginMember(member);
      
      if (member_code == null)
      {
         result = "redirect:loginform.lion";
      }
      else if (member_code.equals("M12"))
      {
         result = "/user/user_main_banMember.jsp";
      }
      else
      {
         model.addAttribute("result", dao.search(member_code));
         result = "/main.lion";
      }
      
      return result;
   }
   
   @RequestMapping(value="/loginadmin.lion", method=RequestMethod.POST)
   public String loginAdmin(AdminDTO admin, Model model)
   {
      String result = null;
      
      IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
      String member_code = null;
      member_code = dao.loginAdmin(admin);
      
      if (member_code == null)
      {
         result = "redirect:loginform.lion";
      }
      else
      {
         model.addAttribute("result", dao.search(member_code));
         result = "/admin/admin_main.jsp";
      }
      return result;
   }
   
   
}













