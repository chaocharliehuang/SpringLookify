<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Details</title>
</head>
<body>
	<p><a href="/dashboard">Dashboard</a></p>
	<p>Title: ${song.title}</p>
	<p>Artist: ${song.artist}</p>
	<p>Rating (1-10): ${song.rating}</p>
	<p><a href="/songs/delete/${song.id}">Delete</a></p>
</body>
</html>