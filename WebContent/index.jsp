<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:out value="${ 'Welcome to javaTpoint'}" />
	<c:import var="data" url="http://www.javatpoint.com" />
	<c:out value="${data}" />
	<c:set var="Income" scope="session" value="${4000*4}" />
	<c:out value="${Income}" />
	<c:set var="income2" scope="session2" value="${4000*4}" />
	<p>
		Before Remove Value is:
		<c:out value="${income}" />
	</p>
	<c:remove var="income2" />
	<p>
		After Remove Value is:
		<c:out value="${income}" />
	</p>
	<c:catch var="catchtheException">
		<%
			int x = 2 / 0;
		%>
	</c:catch>

	<c:if test="${catchtheException != null}">
		<p>
			The type of exception is : ${catchtheException} <br /> There is an
			exception: ${catchtheException.message}
		</p>
	</c:if>
	<c:set var="income3" scope="session3" value="${4000*4}" />
	<c:if test="${income > 8000}">
		<p>
			My income is:
			<c:out value="${income}" />
		<p>
	</c:if>

	<c:set var="income4" scope="session4" value="${4000*4}" />
	<p>
		Your income is :
		<c:out value="${income}" />
	</p>
	<c:choose>
		<c:when test="${income <= 1000}">  
       Income is not good.  
    </c:when>
		<c:when test="${income > 10000}">  
        Income is very good.  
    </c:when>
		<c:otherwise>  
       Income is undetermined...  
    </c:otherwise>
	</c:choose>

	<c:forEach var="j" begin="1" end="3">  
   Item <c:out value="${j}" />
		<p>
	</c:forEach>
	<c:forTokens items="Rahul-Nakul-Rajesh" delims="-" var="name">
		<c:out value="${name}" />
		<p>
	</c:forTokens>

	<c:url value="/index1.jsp" var="completeURL" />
		<c:param name="trackingId" value="786" />
		<c:param name="user" value="Nakul" />
	

	${completeURL}

	<c:set var="url" value="0" scope="request" />
	<c:if test="${url<1}">
		<c:redirect url="http://javatpoint.com" />
	</c:if>
	<c:if test="${url>1}">
		<c:redirect url="http://facebook.com" />
	</c:if>
</body>
</html>