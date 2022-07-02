<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>같이사자</title>
    <link rel="stylesheet" href="<%=cp %>/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="<%=cp %>/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="<%=cp %>/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="<%=cp %>/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="<%=cp %>/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="<%=cp %>/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="<%=cp %>/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="<%=cp %>/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="<%=cp %>/css/userStyle.css" type="text/css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
	
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
<style type="text/css">
/* sweetalert */
h2#swal2-title {
    font-size: 23px;
    padding-top: 40px;
    padding-bottom: 10px;
}
button.swal2-confirm.swal2-styled {
    background-color: #fca652;
    width: 200px;
    height: 50px;
    font-size: 19px;
}
button.swal2-confirm.swal2-styled:focus {
    box-shadow: none;
}
div#swal2-html-container {
    text-align: inherit;
    font-size: 16px;
}
</style>
<script type="text/javascript">

	$(document).ready(function()
    {
    	$(".see-termsOfService").click(function()
		{
    		Swal.fire({
    			  title: '이용약관',
    			  html: '총칙<br />제1조(목적)<br />이 약관은 주식회사 컬리 회사(전자상거래 사업자)가 운영하는 인터넷사이트 마켓컬리(이하 "컬리"라 한다)에서 제공하는 전자상거래 관련 서비스(이하 "서비스"라 한다)를 이용함에 있어 컬리와 이용자의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.*PC통신, 스마트폰 앱, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 준용합니다. <br />제2조(정의)<br />① "컬리"란 회사가 재화 또는 용역(이하 "재화 등"이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 서비스를 운영하는 사업자의 의미로도 사용합니다.<br />② "이용자"란 "컬리"에 접속하여 이 약관에 따라 "컬리"가 제공하는 서비스를 받는 회원 및 비회원을 말합니다. <br />③ "회원"이라 함은 "컬리"에 회원등록을 한 자로서, 계속적으로 "컬리"가 제공하는 서비스를 이용할 수 있는 자를 말합니다.<br />④ "비회원"이라 함은 회원에 가입하지 않고 "컬리"가 제공하는 서비스를 이용하는 자를 말합니다.<br />⑤ "휴면회원"이라 함은 "컬리"의 "회원"중 1년 이상 서비스 이용 기록이 없는 자를 말합니다. 휴면 회원은 "컬리"의 정책에 따라 서비스 이용이 제한 될 수 있으며, 다시 서비스를 이용하기 위하여는 거래 안전 등을 위하여 "컬리"가 정하는 본인확인 절차 등을 이행하여야 올바른 "회원"의 서비스를 이용할 수 있습니다. <br />제3조 (약관 등의 명시와 설명 및 개정) <br />① "컬리"는 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호/모사전송번호/전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보 보호책임자 등을 이용자가 쉽게 알 수 있도록 컬리의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.<br />② "컬리"는 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회/배송책임/환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.<br />③ "컬리"는 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」, 「전자금융거래법」, 「전자서명법」, 「개인정보보호법」, 「방문판매 등에 관한 법률」, 「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.<br />④ "컬리"가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 "컬리"는 개정전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.<br />⑤ "컬리"가 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제4항에 의한 개정약관의 공지기간 내에 "컬리"에 송신하여 "컬리"의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.<br />⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침 및 관계법령 또는 상관례에 따릅니다.',
    			  confirmButtonText: '확인'
    			})
		});
    	$(".see-privacyPolicy").click(function()
		{
    		Swal.fire({
    			  title: '개인정보 수집·이용 (필수)',
    			  html: '총칙<br />제1조(목적)<br />이 약관은 주식회사 컬리 회사(전자상거래 사업자)가 운영하는 인터넷사이트 마켓컬리(이하 "컬리"라 한다)에서 제공하는 전자상거래 관련 서비스(이하 "서비스"라 한다)를 이용함에 있어 컬리와 이용자의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.*PC통신, 스마트폰 앱, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 준용합니다. <br />제2조(정의)<br />① "컬리"란 회사가 재화 또는 용역(이하 "재화 등"이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 서비스를 운영하는 사업자의 의미로도 사용합니다.<br />② "이용자"란 "컬리"에 접속하여 이 약관에 따라 "컬리"가 제공하는 서비스를 받는 회원 및 비회원을 말합니다. <br />③ "회원"이라 함은 "컬리"에 회원등록을 한 자로서, 계속적으로 "컬리"가 제공하는 서비스를 이용할 수 있는 자를 말합니다.<br />④ "비회원"이라 함은 회원에 가입하지 않고 "컬리"가 제공하는 서비스를 이용하는 자를 말합니다.<br />⑤ "휴면회원"이라 함은 "컬리"의 "회원"중 1년 이상 서비스 이용 기록이 없는 자를 말합니다. 휴면 회원은 "컬리"의 정책에 따라 서비스 이용이 제한 될 수 있으며, 다시 서비스를 이용하기 위하여는 거래 안전 등을 위하여 "컬리"가 정하는 본인확인 절차 등을 이행하여야 올바른 "회원"의 서비스를 이용할 수 있습니다. <br />제3조 (약관 등의 명시와 설명 및 개정) <br />① "컬리"는 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호/모사전송번호/전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보 보호책임자 등을 이용자가 쉽게 알 수 있도록 컬리의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.<br />② "컬리"는 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회/배송책임/환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.<br />③ "컬리"는 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」, 「전자금융거래법」, 「전자서명법」, 「개인정보보호법」, 「방문판매 등에 관한 법률」, 「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.<br />④ "컬리"가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 "컬리"는 개정전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.<br />⑤ "컬리"가 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제4항에 의한 개정약관의 공지기간 내에 "컬리"에 송신하여 "컬리"의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.<br />⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침 및 관계법령 또는 상관례에 따릅니다.',
    			  confirmButtonText: '확인'
    			})
		});
    	$(".see-privacyPolicy-choice").click(function()
		{
    		Swal.fire({
    			  title: '개인정보 수집·이용 (선택)',
    			  html: '총칙<br />제1조(목적)<br />이 약관은 주식회사 컬리 회사(전자상거래 사업자)가 운영하는 인터넷사이트 마켓컬리(이하 "컬리"라 한다)에서 제공하는 전자상거래 관련 서비스(이하 "서비스"라 한다)를 이용함에 있어 컬리와 이용자의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.*PC통신, 스마트폰 앱, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 준용합니다. <br />제2조(정의)<br />① "컬리"란 회사가 재화 또는 용역(이하 "재화 등"이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 서비스를 운영하는 사업자의 의미로도 사용합니다.<br />② "이용자"란 "컬리"에 접속하여 이 약관에 따라 "컬리"가 제공하는 서비스를 받는 회원 및 비회원을 말합니다. <br />③ "회원"이라 함은 "컬리"에 회원등록을 한 자로서, 계속적으로 "컬리"가 제공하는 서비스를 이용할 수 있는 자를 말합니다.<br />④ "비회원"이라 함은 회원에 가입하지 않고 "컬리"가 제공하는 서비스를 이용하는 자를 말합니다.<br />⑤ "휴면회원"이라 함은 "컬리"의 "회원"중 1년 이상 서비스 이용 기록이 없는 자를 말합니다. 휴면 회원은 "컬리"의 정책에 따라 서비스 이용이 제한 될 수 있으며, 다시 서비스를 이용하기 위하여는 거래 안전 등을 위하여 "컬리"가 정하는 본인확인 절차 등을 이행하여야 올바른 "회원"의 서비스를 이용할 수 있습니다. <br />제3조 (약관 등의 명시와 설명 및 개정) <br />① "컬리"는 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호/모사전송번호/전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보 보호책임자 등을 이용자가 쉽게 알 수 있도록 컬리의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.<br />② "컬리"는 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회/배송책임/환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.<br />③ "컬리"는 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」, 「전자금융거래법」, 「전자서명법」, 「개인정보보호법」, 「방문판매 등에 관한 법률」, 「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.<br />④ "컬리"가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 "컬리"는 개정전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.<br />⑤ "컬리"가 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제4항에 의한 개정약관의 공지기간 내에 "컬리"에 송신하여 "컬리"의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.<br />⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침 및 관계법령 또는 상관례에 따릅니다.',
    			  confirmButtonText: '확인'
    			})
		});
    	
    	$(".joinBtn").click(function()
		{
    		Swal.fire({
    			  icon: 'success',
    			  title: '회원가입이 완료되었습니다.',
    			  confirmButtonText: '확인'
    			}).then(() => {
    				// 로그아웃 상태로 로그인창으로 이동
			    	location.href='user_loginForm.jsp';
			    });
		});

    });	
</script>
</head>
<body>
	<!-- import HEADER -->
	<c:import url="user_header.jsp"></c:import>
    
    <section class="featured spad">

		<div class="join-title-container">
			<h2 class="join-title">회원가입</h2>
			<div class="join-info"><span class="required">*</span>필수입력사항</div>
			<hr class="join-hr"/>
		</div>

		<div class="join-container">
			<form action="" class="join-form">
				<table class="join-table">
					<thead>
					</thead>
					<tbody>
						<tr>
							<th>아이디<span class="required">*</span></th>
							<td>
								<input type="text" name="id" id="id" placeholder="예) togetherlion@lion.com" required="required"/>
								<button type="button" class="btn btn-outline-primary join-form-btn"
								onclick="">중복확인</button>
							</td>
						</tr>
						<tr>
							<th>비밀번호<span class="required">*</span></th>
							<td>
								<input type="password" name="pw" id="pw" placeholder="비밀번호 입력" required="required"/>
							</td>
						</tr>
						<tr>
							<th>비밀번호확인<span class="required">*</span></th>
							<td>
								<input type="password" name="pwCheck" id="pwCheck" placeholder="비밀번호 입력" required="required"/>
							</td>
						</tr>
						<tr>
							<th>이름<span class="required">*</span></th>
							<td>
								<input type="text" name="name" id="name" placeholder="이름 입력" required="required"/>
							</td>
						</tr>
						<tr>
							<th>휴대폰<span class="required">*</span></th>
							<td>
								<input type="text" name="tel" id="tel" placeholder="숫자만 입력" required="required" value pattern="[0-9]*"/>
								<button type="button" class="btn btn-outline-primary join-form-btn"
								onclick="">인증번호 받기</button>
							</td>
						</tr>
						<tr>
							<th></th>
							<td>
								<input type="text" name="telCheckNum" id="telCheckNum" required="required" value pattern="[0-9]*"/>
								<button type="button" class="btn btn-outline-primary join-form-btn"
								onclick="">인증번호 확인</button>
							</td>
						</tr>
						<tr>
							<th>닉네임</th>
							<td>
								<input type="text" name="nickname" id="nickname" placeholder="닉네임 입력"/>
								<button type="button" class="btn btn-outline-primary join-form-btn"
								onclick="">중복확인</button>
							</td>
						</tr>
						<tr class="join-agree">
							<th>이용약관동의<span class="required">*</span></th>
							<td>
								<div><input class="form-check-input join-checkbox join-allCheck" type="checkbox" name="join-check" value=""><span class="join-text">전체 동의합니다.</span></div>
								<div>
									<input class="form-check-input join-checkbox" type="checkbox" name="join-check" value="">
									<span class="join-text">[필수] 이용약관 동의에 동의합니다.</span>
									<a href="#!"><span class="see-detail see-termsOfService">약관보기<i class="bi bi-chevron-right join-arrow"></i></span></a>
								</div>
								<div>
									<input class="form-check-input join-checkbox" type="checkbox" name="join-check" value="">
									<span class="join-text">[필수] 개인정보 수집 및 이용에 동의합니다.</span>
									<a href="#!"><span class="see-detail see-privacyPolicy">약관보기<i class="bi bi-chevron-right join-arrow"></i></span></a>
								</div>
								<div>
									<input class="form-check-input join-checkbox" type="checkbox" name="join-check" value="">
									<span class="join-text">[선택] 개인정보 수집 및 이용에 동의합니다.</span>
									<a href="#!"><span class="see-detail see-privacyPolicy-choice">약관보기<i class="bi bi-chevron-right join-arrow"></i></span></a>
								</div>
								<div class="last-join-check"><input class="form-check-input join-checkbox" type="checkbox" name="join-check" value=""><span class="join-text">[필수] 본인은 만 14세 이상입니다.</span></div>
							</td>
						</tr>
						<tr class="join-agree">
							<td colspan="2">
								<button type="button" class="btn btn-primary inquiryBtn joinBtn">가입하기</button>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>

	</section>

	<!-- import FOOTER -->
	<c:import url="user_footer.jsp"></c:import>
 
    <!-- js plugins -->
    <script src="<%=cp%>/js/jquery-3.3.1.min.js"></script>
    <script src="<%=cp %>/js/bootstrap.min.js"></script>
    <script src="<%=cp %>/js/jquery.nice-select.min.js"></script>
    <script src="<%=cp %>/js/jquery-ui.min.js"></script>
    <script src="<%=cp %>/js/jquery.slicknav.js"></script>
    <script src="<%=cp %>/js/owl.carousel.min.js"></script>
    <script src="<%=cp %>/js/main.js"></script>
</body>
</html>