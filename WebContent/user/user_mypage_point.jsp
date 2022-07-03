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
.sidebar__item ul li:nth-child(4) {
	background-color: #f5f3ed;
}
.sidebar__item ul li:nth-child(4) a {
	color: #fc9942;
}
.sidebar__item ul li:nth-child(4) a i {
	color: #fc9942;
}

/* sweetalert */
h2#swal2-title {
    font-size: 23px;
    padding-top: 40px;
    padding-bottom: 10px;
}
input.swal2-input {
    margin-bottom: 10px;
}
input.swal2-input:focus {
    box-shadow: none;
    border: 2px solid #fca652;
}
button.swal2-confirm.swal2-styled {
    background-color: #fca652;
    width: 100px;
    margin-right: 20px;
}
button.swal2-cancel.swal2-styled {
    width: 100px;
    margin-right: 20px;
}
button.swal2-confirm.swal2-styled:focus {
    box-shadow: none;
}
button.swal2-cancel.swal2-styled:focus {
    box-shadow: none;
}
</style>
<script type="text/javascript">

	$(document).ready(function()
    {
    	$(".wish-deleteBtn").click(function()
		{
    		Swal.fire({
    			  title: '찜을 삭제하시겠습니까?',
    			  icon: 'warning',
    			  iconColor: '#f27474',
    			  showCancelButton: true,
    			  confirmButtonText: '삭제',
    			  cancelButtonText: '취소',
    			  reverseButtons: true
    			}).then((result) => {
    				if (result.isConfirmed) {
      				  Swal.fire({
        			    	title: '삭제 완료!',
        			    	icon: 'success',
        			    	confirmButtonText: '확인'
        			    }).then(() => {
        			    	location.href='#!';
        			    });
  		    	  }
    			})
		});

    });	
</script>		 
</head>
<body>
	
	<!-- mypage_point HEADER -->
	<div class="hero__item set-bg mypage-header">
		<div class="mypage-box-container">
			<div class="mypage-header-userBox myPoint-box">
				<div class="mypage-profile-photo">
					<img src="<%=cp%>/img/mannerLevel/manner_1.png" class="mannerLevel-photo">
				</div>
				<div class="mypage-info-box">
					<div class="buypost_profile_nickname participate-profile-nickname">yong__go_og 님</div>
					<h4 class="header-title-point myPoint-title">보유 포인트</h4>
					<h2 class="myPointAmount">229000 원</h2>
				</div>
			</div>
		</div>
	</div>
    
	<!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
			<div class="row featured__filter">

				<!-- import mypage_MENUBAR -->
				<c:import url="user_mypage_menubar.jsp"></c:import>

				<div class="col-lg-9 col-md-7">
					<div class="product__discount">
						<div class="section-title product__discount__title">
							<h2>참여중인 공구</h2>
						</div>
					</div>

					<table class="table noticeTable mypage-buypostTable">
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">제목</th>
								<th scope="col">상태</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">3</th>
								<td class="title"><a href="">빅 몽키 바나나 공구모집중ㅋ</a></td>
								<td>모집(10/15)</td>
							</tr>
							<tr>
								<th scope="row">2</th>
								<td class="title"><a href="">청경재 1kg 같이사영</a></td>
								<td>대기</td>
							</tr>
							<tr>
								<th scope="row">1</th>
								<td class="title"><a href="">타피오카펄 3kg 사서 나누실 분?</a></td>
								<td>모집(2/6)</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
    </section>
    <!-- Featured Section End -->

	<!-- import FOOTER -->
	<c:import url="user_footer.jsp"></c:import>
 
    <!-- js plugins -->
    <script src="<%=cp %>/js/jquery-3.3.1.min.js"></script>
    <script src="<%=cp %>/js/bootstrap.min.js"></script>
    <script src="<%=cp %>/js/jquery.nice-select.min.js"></script>
    <script src="<%=cp %>/js/jquery-ui.min.js"></script>
    <script src="<%=cp %>/js/jquery.slicknav.js"></script>
    <script src="<%=cp %>/js/owl.carousel.min.js"></script>
    <script src="<%=cp %>/js/main.js"></script>
</body>

</html>