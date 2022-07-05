/* ===============================
	ad_noticeListDTO.java
	- 공지사항 게시물 자료형 클래스
=================================*/

package com.test.mybatis;

public class AdNoticeListDTO
{
	// 주요 속성 구성
	private String code, title, content, write_datetime, update_datetime, admin_code;

	
	// getter / setter 구성
	public String getCode()
	{
		return code;
	}

	public void setCode(String code)
	{
		this.code = code;
	}

	public String getTitle()
	{
		return title;
	}

	public void setTitle(String title)
	{
		this.title = title;
	}

	public String getContent()
	{
		return content;
	}

	public void setContent(String content)
	{
		this.content = content;
	}

	public String getWrite_datetime()
	{
		return write_datetime;
	}

	public void setWrite_datetime(String write_datetime)
	{
		this.write_datetime = write_datetime;
	}

	public String getUpdate_datetime()
	{
		return update_datetime;
	}

	public void setUpdate_datetime(String update_datetime)
	{
		this.update_datetime = update_datetime;
	}

	public String getAdmin_code()
	{
		return admin_code;
	}

	public void setAdmin_code(String admin_code)
	{
		this.admin_code = admin_code;
	}
	
	
	
	
	
}
