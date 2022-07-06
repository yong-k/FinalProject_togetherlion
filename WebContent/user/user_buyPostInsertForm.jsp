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
	<!-- timepicker -->
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
	
	
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
	$(function()
	{
		// <등록>
		$(".saveBtn").click(function()
    	{
    		// 결제팝업
			window.open("user_buypost_pay_popup.jsp", "_blank", "top=150,left=550,width=505,height=685");
        });		

		// DatePicker
		$.datepicker.setDefaults({
			  dateFormat: 'yy-mm-dd',
			  prevText: '이전 달',
			  nextText: '다음 달',
			  monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			  monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			  dayNames: ['일', '월', '화', '수', '목', '금', '토'],
			  dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
			  dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
			  showMonthAfterYear: true,
			  yearSuffix: '년'
		});
		
		$(function()
		{
			$(".testDatepicker").datepicker({});
		});
		
		
		// TimePicker (https://timepicker.co/#)
		$('.timepicker').timepicker({
		    timeFormat: 'h:mm p',
		    interval: 30,
		    minTime: '0',
		    maxTime: '11:00pm',
		    defaultTime: '11',
		    startTime: '9:00',
		    dynamic: false,
		    dropdown: true,
		    scrollbar: true
		});
		
		$(function()
		{
			 $('input.timepicker').timepicker({});
		})
		
		$('.buypostInsertFileBtn-box').hover(function()
		{
			$('.buypostInsertFileBtn-box>hr').css('display', 'block');
		}, function()
		{
			$('.buypostInsertFileBtn-box>hr').css('display', 'none');
		});

	});
	
	// 지도
	function map()
	{
		window.open("user_map.jsp", "_blank",
				"top=150,left=550,width=1000,height=600");
	}
	
	// 사진 미리보기
	$(function() {
	    $("#buypostInsertImg-btn").on('change', function(){
	    readURL(this);
	    });
	});
	function readURL(input) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	        $('#buypostInsert-previewImg').attr('src', e.target.result);
	        }
	        reader.readAsDataURL(input.files[0]);
	    }
	}		
</script>
</head>
<body>
	<!-- import HEADER -->
	<c:import url="user_header.jsp"></c:import>

	<!-- Product Details Section Begin -->
	<section class="product-details spad buypostForm-section">
		<div class="container">

			<div class="buypost-title-container">
				<h2 class="buypostForm-title">공동구매 글쓰기</h2>
				<hr class="buypost-hr" />
			</div>
			
			<form action="">
				<div class="row">
					<div class="col-lg-6 col-md-6 pic-container">
						<div class="product__details__pic">
							<div class="product__details__pic__item buypost-form-img">
								<img style="width: auto;" id="buypostInsert-previewImg">
							</div>
							<label class="file-btn" for="buypostInsertImg-btn">
								<div class="buypostInsertFileBtn-box">
									<i class="bi bi-folder-plus"></i>
									대표 사진을 선택해주세요 Click!
									<hr />
								</div>	
							</label> 
							<input type="file" id="buypostInsertImg-btn" style="display: none;"/>
						</div>
					</div>
					<div class="col-lg-5 col-md-5 detail-container">
						<div class="product__category buypost__category">
							<div class="mainCategory">
								<select class="form-select mainCategory-select"
									aria-label="Default select example">
									<option value="0" selected>대분류 선택</option>
									<option value="1">쌀/면/빵/떡</option>
									<option value="2">과일/채소</option>
									<option value="3">수산/정육/계란</option>
									<option value="4">밀키트/간편식/냉동</option>
									<option value="5">국/반찬</option>
									<option value="6">간식/과자</option>
									<option value="7">우유/유제품</option>
									<option value="8">물/음료/커피/차</option>
									<option value="9">양념/소스</option>
								</select>
							</div>
							<div class="subCategory">
								<select class="form-select subCategory-select"
									aria-label="Default select example">
									<option value="0" selected>소분류 선택</option>
									<option value="1">쌀</option>
									<option value="2">면</option>
									<option value="3">빵</option>
									<option value="4">떡</option>
								</select>
							</div>
						</div>
						<div class="product__details__text">
							<div class="buypostForm-text">
								<input type="text" id="title" class="buypost-text" required
									placeholder="제목을 입력해주세요." />
							</div>
							<div class="buypostForm-text">
								<input type="text" id="url" class="buypost-text" required
									placeholder="상품의 url을 입력해주세요." />
							</div>
							<div class="buypostForm-text">
								<input type="text" id="expiration_date"
									class="testDatepicker buypost-text buypost-expiration-date"
									placeholder="유통기한을 선택해주세요." />
								<div class="form-check expiration-date-check">
									<input class="form-check-input buypost-checkbox" type="checkbox"
										value="" id="flexCheckDefault"> <label
										class="form-check-label buypost-check-label"
										for="flexCheckDefault">알 수 없음</label>
								</div>
							</div>
							<div class="buypostForm-text">
								<input type="number" id="total_price" class="buypost-text" required
									placeholder="상품의 총금액 + 배송비를 입력해주세요." />
							</div>
							<div class="buypostForm-text">
								<input type="number" id="goods_num" class="buypost-text" required
									placeholder="모집상품개수 입력 (진행자 구매 수량 포함)" />
							</div>
							<div class="buypostForm-text">
								<!-- 총금액, 모집상품개수 입력하면, 그걸로 계산해서 보여지는 가격 -->
								<i class="bi bi-calculator"></i>
								<span class="buypost-label">1인가격 (총금액/모집상품개수)</span> 
								<span class="price">25400</span>원
							</div>
							<div class="buypostForm-text">
								<input type="text" id="deadline"
									class="testDatepicker buypost-text buypost-date"
									placeholder="모집마감날짜를 선택해주세요." readonly/>
								<input type="text" class="timepicker" readonly/>	
							</div>
							<div class="buypostForm-text">
								<input type="text" id="trade_date"
									class="testDatepicker buypost-text buypost-date"
									placeholder="거래희망날짜를 선택해주세요." readonly/>
								<input type="text" class="timepicker" readonly/>

							</div>
							<div class="buypostForm-text">
								<a href="javascript:map()">
									<i class="bi bi-geo-alt-fill buypost-icon"></i>
									<input type="text" class="buypost-text buypost-location" required
										placeholder="거래위치를 선택해주세요." readonly/>
								</a>
							</div>
	
							<div class="product__details__quantity">
								<span>구매 개수</span>
								<div class="quantity buypost-quantity">
									<div class="pro-qty">
										<input type="text" value="1">
									</div>
								</div>
							</div>
						</div>
					</div>
	
					<div class="col-lg-12">
						<hr />
						<span class="buypost-detail-title">상세설명</span>
						<div class="buypost-detail-content buypost-content-box">
							<textarea class="form-control" id="content" rows="15"></textarea>
							<input type="file" class="buypost-file" />
						</div>
						<div class="btn-box">
							<button type="button" class="btn btn-primary lion-primary-btn saveBtn">등록</button>
						</div>
						
						<!--  
							글 등록 → 포인트 결제창 (아래에 따라서 뜨는 멘트가 다름)
							> [결제]  if 상품금액 <= 잔여포인트 
									 → 비밀번호입력창 → 결제완료창 → 공동구매상세보기페이지(user_buyPostArticle.jsp)로 이동
									 else 상품금액 > 잔여포인트
							> [충전] 마이페이지>포인트충전에서도 쓸 충전창 뜸
							
							포인트 쪽 뷰,팝업 먼저 작업하고 다시하기,,						
						-->
						
					</div>
				</div>
			</form>
		</div>
	</section>
	<!-- Product Details Section End -->

	<!-- Related Product Section Begin -->
	<section class="related-product">
		<div class="container"></div>
	</section>
	<!-- Related Product Section End -->

	<!-- import FOOTER -->
	<c:import url="user_footer.jsp"></c:import>

	<script src="<%=cp %>/js/jquery-3.3.1.min.js"></script>
	<script src="<%=cp %>/js/bootstrap.min.js"></script>
	<script src="<%=cp %>/js/jquery.nice-select.min.js"></script>
	<script src="<%=cp %>/js/jquery-ui.min.js"></script>
	<script src="<%=cp %>/js/jquery.slicknav.js"></script>
	<script src="<%=cp %>/js/owl.carousel.min.js"></script>
	<script src="<%=cp %>/js/main.js"></script>
	
	<!-- timepicker -->
	<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>

	<!-- map API -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1cf593d625e664e728990121f9c38ac7&libraries=services"></script>
	<script src="<%=cp %>/js/map-buyPostArticle.js"></script>
</body>
</html>