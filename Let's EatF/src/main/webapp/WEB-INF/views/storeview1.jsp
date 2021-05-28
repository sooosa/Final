<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.div1 {
	margin: 0px auto;
}

.d1 {
	width : 200px;
	margin:0 auto;
	
}

</style>

</head>

<body>

	<div>

		<div class="d1">
			<img src="resources/fileUpload/${storeView.sFileName1}" width="200px"><br>
			
			
			
		</div>
		
		<div class="d1">
			업체명 : ${storeView.sName} 
			<input type="hidden" value="${storeView.storeCode}" name="storeCode" id="storeCode">
			<input type="hidden" value="${sessionScope.mloginId}" name="mCode" id="mCode"> 
			<br>평점 : ${resaView.rStarAVG} <br>
			카테고리 : ${storeView.sFood} <br>
			키워드 : ${storeView.sKeyword} <br>

			<c:if test="${not empty resaView1.ssCode}">
				<div id="save">
					<img src="resources/img/like.png" width="30px"
						onclick="likexbutton()"><br>
				</div>

			</c:if>

			<c:if test="${empty resaView1.ssCode}">
				<div id="save">
					<img src="resources/img/likex.png" width="30px"
						onclick="likebutton()"><br>
				</div>
			</c:if>
		
			<input type="button" value="예약"> 
			<input type="button" value="리뷰"> 
			<input type="button" value="상세정보">
		</div>

		


		<table class="div1">
			<tr>
				<td>영업시간</td>
				<td>${storeView.sTime}</td>
			</tr>
			<tr>
				<td>홈페이지</td>
				<td>${storeView.sUrl}</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td>${storeView.sPhone}</td>
			</tr>
			<tr>
				<td>단체석 여부</td>
				<td>${storeView.sSeat}</td>
			</tr>
			<tr>
				<td>주차가능 여부</td>
				<td>${storeView.sPark}</td>
			</tr>
			<tr>
				<td>업체 주소</td>
				<td>${storeView.sAddr}</td>
			</tr>



		</table>



		<p style="margin-top: -12px">
			<em class="link"> </em>
		</p>
		<div id="map" style="width: 50%; height: 350px;" class="div1"></div>




	</div>




</body>

<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script>
	function likebutton() {
		console.log("test");

		var storeCode = document.getElementById("storeCode").value;
		var mCode = document.getElementById("mCode").value;
		var confirmId = document.getElementById("save");
		console.log("storeCode : " + storeCode);
		console.log("mCode : " + mCode);
		$
				.ajax({
					type : "GET",
					url : "storesave",
					data : {
						"storeCode" : storeCode,
						"mCode" : mCode

					},
					dataType : "text",

					success : function(data) {
						if (data == "OK") {
							output = "";

							output += "<img src='resources/img/like.png' width='30px' onclick='likexbutton()'>";

							document.getElementById("save").innerHTML = output;
						} else {

							output = "";
							output += "<img src='resources/img/likex.png' width='30px' onclick='likebutton()'>";

							document.getElementById("save").innerHTML = output;

						}//end if
					}, // end success

					error : function() {
						alert('함수 통신 실패!');
					}//end error

				});//end ajax

	}

	function likexbutton() {
		console.log("test");

		var storeCode = document.getElementById("storeCode").value;
		var mCode = document.getElementById("mCode").value;
		var confirmId = document.getElementById("save");
		console.log("storeCode : " + storeCode);
		console.log("mCode : " + mCode);
		$
				.ajax({
					type : "GET",
					url : "storesavex",
					data : {
						"storeCode" : storeCode,
						"mCode" : mCode

					},
					dataType : "text",

					success : function(data) {
						if (data == "OK") {
							output = "";

							output += "<img src='resources/img/likex.png' width='30px' onclick='likebutton()'>";

							document.getElementById("save").innerHTML = output;
						} else {

							output = "";
							output += "<img src='resources/img/likex.png' width='30px' onclick='likebutton()'>";

							document.getElementById("save").innerHTML = output;

						}//end if
					}, // end success

					error : function() {
						alert('함수 통신 실패!');
					}//end error

				});//end ajax

	}
</script>

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7079bba1dd97a6de15f366a1524f4ad5&libraries=services"></script>
<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
		center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		level : 2
	// 지도의 확대 레벨
	};

	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption);

	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();

	// 주소로 좌표를 검색합니다
	geocoder
			.addressSearch(
					'${storeView.sAddr}',
					function(result, status) {

						// 정상적으로 검색이 완료됐으면 
						if (status === kakao.maps.services.Status.OK) {

							var coords = new kakao.maps.LatLng(result[0].y,
									result[0].x);

							// 결과값으로 받은 위치를 마커로 표시합니다
							var marker = new kakao.maps.Marker({
								map : map,
								position : coords
							});

							// 인포윈도우로 장소에 대한 설명을 표시합니다
							var infowindow = new kakao.maps.InfoWindow(
									{
										content : '<div style="width:150px;text-align:center;padding:6px 0;">${storeView.sName}</div>'
									});
							infowindow.open(map, marker);

							// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
							map.setCenter(coords);
						}
					});
</script>
</html>