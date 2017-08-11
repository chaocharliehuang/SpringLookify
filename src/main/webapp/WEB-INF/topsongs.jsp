<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Top Songs</title>
</head>
<body>
	<p><a href="/dashboard">Dashboard</a></p>
	<h3>Top Ten Songs:</h3>
	<c:forEach items="${songs}" var="song">
		<p>
			<c:out value="${song.rating}"/> - 
			<a href="songs/${song.id}"><c:out value="${song.title}"/></a> - 
			<c:out value="${song.artist}"/>
		</p>
	</c:forEach>
</body>
</html>