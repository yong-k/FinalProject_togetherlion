package com.test.mybatis;

public class ReportDTO
{
	//행번호, 피신고자, 게시물종류, 게시물번호, 신고자, 신고사유, 일자 
	private String num, member_code, type, buypost_code, reporter, main_name, datetime, sub_name;

	// getter/ setter
	public String getNum()
	{
		return num;
	}

	public void setNum(String num)
	{
		this.num = num;
	}

	public String getMember_code()
	{
		return member_code;
	}

	public void setMember_code(String member_code)
	{
		this.member_code = member_code;
	}

	public String getType()
	{
		return type;
	}

	public void setType(String type)
	{
		this.type = type;
	}

	public String getBuypost_code()
	{
		return buypost_code;
	}

	public void setBuypost_code(String buypost_code)
	{
		this.buypost_code = buypost_code;
	}

	public String getReporter()
	{
		return reporter;
	}

	public void setReporter(String reporter)
	{
		this.reporter = reporter;
	}

	public String getMain_name()
	{
		return main_name;
	}

	public void setMain_name(String main_name)
	{
		this.main_name = main_name;
	}

	public String getDatetime()
	{
		return datetime;
	}

	public void setDatetime(String datetime)
	{
		this.datetime = datetime;
	}

	public String getSub_name()
	{
		return sub_name;
	}

	public void setSub_name(String sub_name)
	{
		this.sub_name = sub_name;
	}
	

	
	
	
}
