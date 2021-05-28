<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>해당업체 리뷰 목록 (최신순)</title>
<style>
	.reviewdiv {
		border : 2px solid black;
		border-radius : 10px;
		width : 38%;
		padding : 10px;
		padding-left : 20px;
		margin : auto;
	}
	.star {
		width : 90px;
	}
</style>
</head>
<body>

<h3 style="text-align : center"><br><br>${store.sName} 리뷰 목록</h3><br>

	<!-- 리뷰 정렬 선택하기 -->
	<select onchange="sort()" name="reviewSort" id="reviewSort">
		<option value="최신순" selected>최신순</option>
		<option value="평점 높은순">평점 높은순</option>
		<option value="평점 낮은순">평점 낮은순</option>
	</select>
	

	<!-- 해당 업체 리뷰 목록 -->
	<c:forEach var="storeRList" items="${storeRList}">
		<div class="reviewdiv">
			<h2>${storeRList.rsName}</h2> 
			<div><img src="resources/img/${storeRList.rStar}.png" class="star">&nbsp;&nbsp;<b>${storeRList.rStar}</b></div><br>
			<div style="word-break:break-all">${storeRList.rContents}</div><br>
			<span style="color:#8F8F8F">${storeRList.rBook}&nbsp;&nbsp;|&nbsp;&nbsp;${storeRList.rmId}</span> 
			<span style="position: absolute; left : 65%;"><button onclick="storeReviewDel('${storeRList.rmId}','${storeRList.rCode}')">삭제</button></span>
		</div><br>
		
		<input type="hidden" id="loginId" value="${sessionScope.loginId}">
		<input type="hidden" id="storeCode" value="${storeRList.rsCode}">
		
	</c:forEach>

	
</body>

<script>

	// 삭제 버튼 클릭시 본인이 작성한 리뷰만 삭제할 수 있음
	function storeReviewDel(rmId, rCode){
		
		var loginId = document.getElementById("loginId").value;
		var storeCode = document.getElementById("storeCode").value;
		
		if(loginId != rmId) {
			alert('본인이 작성한 리뷰가 아닙니다!');
		} else {
			location.href="storeReviewDel?storeCode=" + storeCode + "&rCode=" + rCode;
		}
		
	} // end storeReviewDel()
	
	
	// 리뷰 정렬
	function sort(){
		var reviewSort = document.getElementById("reviewSort").value;
		
		if(reviewSort == "최신순"){
			location.href="storeRList?storeCode=${store.storeCode}";
			
		} else if(reviewSort == "평점 높은순") {
			location.href="storeRList_high?storeCode=${store.storeCode}";
		} else {
			location.href="storeRList_low?storeCode=${store.storeCode}";
		}
		
		
		
	}
	
</script>

</html>


