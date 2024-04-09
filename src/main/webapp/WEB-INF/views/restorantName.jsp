<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p>restorantName
	<c:forEach items="${r_Map}" var="name">
		<p> ${name.key} <a href="/reservation/resotrant_info/r_name?r_num=${name.key}">${name.value}</a>
	</c:forEach>
</body>
</html>