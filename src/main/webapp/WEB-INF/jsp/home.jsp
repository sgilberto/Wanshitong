<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<c:set var="path" value="${pageContext.servletContext.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<!-- Header -->
<jsp:include page="header.jsp" />

<!-- Javascript & Css Login -->

<body>

	<jsp:include page="menu.jsp"></jsp:include>

	<div class="container-fluid main">

		<h1 class="title">Title : ${title}</h1>
		<h2 class="subtitle">Message : ${message}</h2>

		<sec:authorize access="hasRole('ROLE_USER')">
		LOGIN SUCCESSFUL
			<c:if test="${pageContext.request.userPrincipal.name != null}">
				<h2>Bienvenido : ${pageContext.request.userPrincipal.name}</h2>
			</c:if>
		</sec:authorize>

	</div>

</body>
</html>