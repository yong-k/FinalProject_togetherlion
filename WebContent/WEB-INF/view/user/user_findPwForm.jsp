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
button.swal2-confirm.swal2-styled {
    background-color: #fca652;
    width: 100px;
}
button.swal2-cancel.swal2-styled {
    width: 100px;
}
button.swal2-confirm.swal2-styled:focus {
    box-shadow: none;
}
</style>
<script type="text/javascript">

	$(function()
	{
		$('.findBtn').click(function()
		{	
			// 아이디-핸드폰번호-인증번호 일치하면, user_findPw_modifyForm.jsp 로 연결
			// 일단 지금은 true로 그냥 처리해놓음
			if (true)
			{
				location.href = "user_findPw_modifyForm.jsp";
			}
	    	else 
	    	{
	    		Swal.fire({
	    			icon: 'error',
	    			text: '인증번호가 일치하지 않습니다.',
	    			confirmButtonText: '확인'
	    		});
		    }
		});	
	});

</script>
</head>
<body>
	<!-- import HEADER -->
	<c:import url="user_header.jsp"></c:import>
    
    <section class="featured spad">

		<div class="join-title-container">
			<h2 class="findForm-title">비밀번호 찾기</h2>
			<hr class="findForm-hr"/>
		</div>

		<div class="join-container">
			<form action="" class="join-form">
				<table class="join-table">
					<thead>
					</thead>
					<tbody>
						<tr>
							<th>아이디</th>
							<td>
								<input type="text" name="id" id="id" placeholder="예) togetherlion@lion.com" required="required"/>
							</td>
						</tr>
						<tr>
							<th>휴대폰</th>
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
							<td colspan="2">
								<button type="button" class="btn btn-primary lion-primary-btn findBtn">확인</button>
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