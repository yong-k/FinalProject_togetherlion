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
<title>같이사자</title>
</head>
<body>
	<h3>kakao map</h3>
	<div id="map" style="width:500px;height:400px;"></div>
	
	<div id="text">
		<br /><br />
		도로명주소 <br />
		<input type="text" id="addr" style="width:500px; height:50px;"/><br />
		지번주소<br />
		<input type="text" id="detailAddr" style="width:500px; height:50px;"/><br />
		좌표<br />
		<input type="text" id="coords" style="width:500px; height:50px;"/><br />
		<br />
		위도<input type="text" id="lat" style="width:300px; height:50px;" /><br />
		경도<input type="text" id="lng" style="width:300px; height:50px;" /><br />
	</div>
</body>

<!-- import kakao api -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1cf593d625e664e728990121f9c38ac7&libraries=services"></script>

<!-- import app js file -->
<script src="<%=cp %>/js/mapApp.js"></script>
</html>