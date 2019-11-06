<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

</head>
<body>
    <%-- Forma 1 de obtener el objeto session
	<%
		String usuario = (String) session.getAttribute("user");
		out.println(usuario);
	%>
	<%=session.getAttribute("user") %>
	<%=session.getAttribute("pass") %>
	--%>
	<c:set var="usuario" value="${sessionScope.user}"></c:set>
	<%-- Forma 2 con if
	<c:if test="${usuario != null }">
		Bienvenido <c:out value="${usuario }"></c:out>
	</c:if>
	
	<c:if test="${usuario==null }">
		<c:redirect url="index.jsp"></c:redirect>
	</c:if>
	--%>
	<%-- Forma 3 con el choose que es como el switch de Java --%>
	<c:choose>
		<c:when test="${usuario != null }">
			Bienvenido <c:out value="${usuario }"></c:out>
		</c:when>
		<c:otherwise>
			<c:redirect url="index.jsp"></c:redirect>
		</c:otherwise>
	</c:choose>
</body>
</html>