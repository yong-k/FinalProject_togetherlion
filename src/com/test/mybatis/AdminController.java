package com.test.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.apache.taglibs.standard.lang.jstl.test.beans.Factory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.util.ArticlePage;

@Controller
public class AdminController
{
	@Autowired
	private SqlSession sqlSession;
	
	// 전체회원목록 + 페이징추가
	@RequestMapping(value = "/admin_member_all.lion")
	public String listMember(Model model, ArticlePage vo
			,@RequestParam(value="nowPage" , required=false) String nowPage
			,@RequestParam(value="cntPerPage", required=false) String cntPerPage)
	{
		String result = "";
		
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
		
		int total = dao.listAllMemberCount();
		
		if (nowPage == null && cntPerPage == null) 
		{
			nowPage = "1";
			cntPerPage = "10";
		} else if (nowPage == null) 
		{
			nowPage = "1";
		} else if (cntPerPage == null) 
		{ 
			cntPerPage = "10";
		}
		
		vo = new ArticlePage(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		MemberDTO mDto = new MemberDTO();
		
		mDto.setStart(Integer.toString(vo.getStart()));
		mDto.setEnd(Integer.toString(vo.getEnd()));
		
		model.addAttribute("list", dao.listAllMember());
		model.addAttribute("paging", vo);
		
		result = "/WEB-INF/view/admin/admin_member_all.jsp";
		
		return result;
	}
	
	
	// 공지사항 메인
    @RequestMapping(value = "/ad_notice_list.lion")
    public String noticeList(Model model) throws SQLException
    {
        String result = null;

        IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);


        model.addAttribute("list", dao.listNotice());

        result = "/WEB-INF/view/admin/admin_homepage_noticeList.jsp";

        return result;
    }


    //공지글보기
    @RequestMapping(value= "/ad_noticeArticle.lion")
    public String noticeArticle() 
    {
        String result = null;


        result = "/WEB-INF/view/admin/admin_homepage_noticeArticle.jsp";

        return result;


    }

    // 공지글쓰기
    @RequestMapping(value="/ad_noticeInsertForm.lion")
    public String noticeInsertForm()
    {
        String result=null;

        result = "/WEB-INF/view/admin/admin_homepage_noticeInsertForm.jsp";

        return result;
    }


    //공지글수정
    @RequestMapping(value="/ad_noticeUpdateForm.lion")
    public String noticeUpdateForm()
    {
        String result = null;

        result = "/WEB-INF/view/admin/admin_homepage_noticeUpdateForm.jsp";

        return result;
    }
}
