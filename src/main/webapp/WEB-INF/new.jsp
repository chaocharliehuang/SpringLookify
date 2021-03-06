<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Add Song</title>
</head>
<body>
	<p><a href="/dashboard">Dashboard</a></p>
	
	<form:form method="POST" action="/songs/new" modelAttribute="song">
	    <form:label path="title">Title: 
	    <form:errors path="title"/>
	    <form:input path="title"/></form:label>
	    
	    <br><br>
	    
	    <form:label path="artist">Artist: 
	    <form:errors path="artist"/>
	    <form:input path="artist"/></form:label>
	    
	    <br><br>
	    
	    <form:label path="rating">Rating: 
	    <form:errors path="rating"/>
	    <form:select path="rating" items="${ratings}"/></form:label>
	    
	    <br><br>
	    
	    <input type="submit" value="Add Song"/>
	</form:form>
</body>
</html>