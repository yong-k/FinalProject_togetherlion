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
    padding-bottom: 10px;
}
button.swal2-confirm.swal2-styled {
    background-color: #fca652;
    width: 120px;
    margin-top: -12px;
}
button.swal2-confirm.swal2-styled:focus {
    box-shadow: none;
}
table.ban-info tbody tr td {
    text-align: left !important;
}
</style>
<script type="text/javascript">
		// sweetalert 예시
	$(document).ready(function()
    {
		Swal.fire({
			  title: '이용 제한 안내',
			  text: '요청하신 서비스는 아래의 사유로 이용이 제한되었습니다.',
			  html: `<table class="table table-bordered ban-info">
			        <thead>
		        </thead>
		        <tbody>
		            <tr>
		                <th>제한사유</th>
		                <td>공동구매 게시물 규정 위반</td>
		            </tr>
		            <tr>
		            	<th>상세내용</th>
		            	<td>판매금지 물품이에요</td>
		            </tr>
		            <tr>
		            	<th>제한기간</th>
		            	<td>2022-08-09 11:28:00 ~ 2023-10-31 11:28:00</td>
		            </tr>
				</tbody>
				</table>`,
			  icon: 'warning',
			  iconColor: '#f27474',
			  confirmButtonText: '확인',
			}).then((result) => {
				//location.href='user_main.jsp';
			})
	 });
</script>   
</head>
<body>
	<!-- import HEADER -->
	<c:import url="user_header.jsp"></c:import>
    
    <!-- BANNER IMAGE -->
	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel" data-interval="4500">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="7"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item banner1 active"></div>
			<div class="carousel-item banner2"></div>
			<div class="carousel-item banner3"></div>
			<div class="carousel-item banner4"></div>
			<div class="carousel-item banner5"></div>
			<div class="carousel-item banner6"></div>
			<div class="carousel-item banner7"></div>
		</div>
		
		<div class="hero__search map__search">
			<div class="hero__search__form map__search__form">
				<form action="#">
					<a target="_blank" onclick="openMap()">
					<!-- <a href="user_map.jsp" 
					onclick="window.open(this.href, '_blank', 'width=800, height=600'); return false;"> -->
						<i class="bi bi-geo-alt-fill" title="지도에서 선택하기"></i>
					</a>
					<input type="text" class="map__search__text" placeholder="장소를 입력해주세요.">
					<button type="submit" class="site-btn map-search-btn">
						<i class="bi bi-search"></i>
					</button>
				</form>
			</div>
		</div>
		
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next"
			href="#carouselExampleIndicators" role="button" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	

	<!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">

            <div class="row featured__filter">
            
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-1.jpg" onClick="location.href='user_buyPostArticle.jsp'">
                        	<span class="timeLeft">3시간 2분 42초</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">2/3</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="user_buyPostArticle.jsp">[강남구] 고기 같이 사요~~~</a></h6>
                            <h5>￦20,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-2.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">5일</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">3/10</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[마포구] 바나나바나나바나나바나나</a></h6>
                            <h5>￦6,500</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-3.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">23시간 11분 44초</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">6/7</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[서대문구] 이건무슨과일임하하</a></h6>
                            <h5>￦14,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood oranges">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-4.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">9일</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">1/5</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[은평구] 수박수박수박수박수박</a></h6>
                            <h5>￦59,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-5.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">2일</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">4/6</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[서초구] 유기농포도한박스포도</a></h6>
                            <h5>￦35,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-6.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">1시간 1분 1초</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">6/6</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[관악구] 베토디세트같이먹어용</a></h6>
                            <h5>￦99,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-7.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">11시간 2분 59초</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">1/5</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[양천구] AleMangoAMagooooo</a></h6>
                            <h5>￦120,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-8.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">11일</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">5/20</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[성북구] 사과사과솨과apple</a></h6>
                            <h5>￦32,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-1.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">3시간 2분 42초</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">2/3</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[강남구] 고기 같이 사요~~~</a></h6>
                            <h5>￦20,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-2.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">5일</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">3/10</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[마포구] 바나나바나나바나나바나나</a></h6>
                            <h5>￦6,500</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-3.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">23시간 11분 44초</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">6/7</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[서대문구] 이건무슨과일임하하</a></h6>
                            <h5>￦14,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood oranges">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-4.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">9일</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">1/5</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[은평구] 수박수박수박수박수박</a></h6>
                            <h5>￦59,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-5.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">2일</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">4/6</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[서초구] 유기농포도한박스포도</a></h6>
                            <h5>￦35,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-6.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">1시간 1분 1초</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">6/6</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[관악구] 베토디세트같이먹어용</a></h6>
                            <h5>￦99,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-7.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">11시간 2분 59초</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">1/5</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[양천구] AleMangoAMagooooo</a></h6>
                            <h5>￦120,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-8.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">11일</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">5/20</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[성북구] 사과사과솨과apple</a></h6>
                            <h5>￦32,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-1.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">3시간 2분 42초</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">2/3</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[강남구] 고기 같이 사요~~~</a></h6>
                            <h5>￦20,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-2.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">5일</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">3/10</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[마포구] 바나나바나나바나나바나나</a></h6>
                            <h5>￦6,500</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-3.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">23시간 11분 44초</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">6/7</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[서대문구] 이건무슨과일임하하</a></h6>
                            <h5>￦14,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood oranges">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-4.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">9일</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">1/5</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[은평구] 수박수박수박수박수박</a></h6>
                            <h5>￦59,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-5.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">2일</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">4/6</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[서초구] 유기농포도한박스포도</a></h6>
                            <h5>￦35,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-6.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">1시간 1분 1초</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">6/6</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[관악구] 베토디세트같이먹어용</a></h6>
                            <h5>￦99,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-7.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">11시간 2분 59초</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">1/5</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[양천구] AleMangoAMagooooo</a></h6>
                            <h5>￦120,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-8.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">11일</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">5/20</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[성북구] 사과사과솨과apple</a></h6>
                            <h5>￦32,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-1.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">3시간 2분 42초</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">2/3</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[강남구] 고기 같이 사요~~~</a></h6>
                            <h5>￦20,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-2.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">5일</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">3/10</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[마포구] 바나나바나나바나나바나나</a></h6>
                            <h5>￦6,500</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-3.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">23시간 11분 44초</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">6/7</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[서대문구] 이건무슨과일임하하</a></h6>
                            <h5>￦14,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood oranges">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-4.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">9일</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">1/5</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[은평구] 수박수박수박수박수박</a></h6>
                            <h5>￦59,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-5.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">2일</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">4/6</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[서초구] 유기농포도한박스포도</a></h6>
                            <h5>￦35,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-6.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">1시간 1분 1초</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">6/6</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[관악구] 베토디세트같이먹어용</a></h6>
                            <h5>￦99,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-7.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">11시간 2분 59초</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">1/5</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[양천구] AleMangoAMagooooo</a></h6>
                            <h5>￦120,000</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<%=cp %>/img/featured/feature-8.jpg" onClick="location.href='#'">
                        	<span class="timeLeft">11일</span>
                        	<span class="featured__item__pic__hover">
                        		<i class="bi bi-cart4"></i>
                        		<span class="item_number">5/20</span>
                        	</span>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">[성북구] 사과사과솨과apple</a></h6>
                            <h5>￦32,000</h5>
                        </div>
                    </div>
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