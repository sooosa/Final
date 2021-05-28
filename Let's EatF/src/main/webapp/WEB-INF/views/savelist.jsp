<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table style=margin:auto; >
		<caption>찜 목록</caption>
		
		<tr>
			
			
			<c:forEach var="savelist" items="${savelist}" varStatus="status">
			<td width="32%" height="400px">
				<div><a href="storeView?storeCode=${savelist.ssCode}&mCode=${sessionScope.mloginId}"><img src="resources/fileUpload/${savelist.sFileName1}" width="200px"></a></div>
				<div>${savelist.sName}</div>
				<div>${savelist.sFileName1}</div>
			
			</td>
			<c:if test="${status.count%3==0}">
							<tr></tr>
			</c:if>
			</c:forEach>
			
			
		</tr>
		
	
	</table>


</body>
</html>