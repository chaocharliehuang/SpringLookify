<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Dashboard</title>
	<style>
		table {
		    border-collapse: collapse;
		    width: 100%;
		}
		
		td, th {
		    border: 1px solid #dddddd;
		    text-align: left;
		    padding: 8px;
		}
		
		tr:nth-child(even) {
		    background-color: #dddddd;
		}
	</style>
</head>
<body>
	<p><a href="/songs/new">Add New</a></p>

	<c:if test="${!empty songs}">
		<table>
			<tr>
				<th>Name</th>
				<th>Rating</th>
				<th>Actions</th>
			</tr>
			<c:forEach items="${songs}" var="song">
			<tr>    
			    <td>
			    		<a href="songs/${song.id}"><c:out value="${song.title}"/></a>
			    </td>
			    <td><c:out value="${song.rating}"/></td>
			    <td>
			    		<a href="/songs/delete/${song.id}">Delete</a>
			    </td>
			</tr>
			</c:forEach>
		</table>
		<br><br>
	</c:if>
</body>
</html>