<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<nav class="navbar navbar-inverse navbar-static-top">
		<div class="container">
			<div class="navbar-header">
				<a href="<spring:url value="/"/>" class="navbar-brand">Le's Cleaning Service Center</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="<spring:url value="/services/"/>">Services</a></li>
				<li><a href="<spring:url value="/appointments/" />">Appointments</a></li>
				<li><a href="<spring:url value="/schedule/" />">Schedule</a></li>

                <sec:authorize access="authenticated" var="authenticated"/>

				<c:choose>
					<c:when test="${authenticated}">
						<li>
                            <p class="navbar-text">
							    Welcome <sec:authentication property="name" />
							    <a id = "logout" href="<c:url value="#"/>">Logout</a>
                            </p>
							<form id="logout-form" action="<c:url value="/logout"/>" method="POST">
								<sec:csrfInput/>
							</form>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="<spring:url value="/login/"/>">Sign In</a>
						</li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</nav>

<script src="${pageContext.request.contextPath}/resources/js/global.js"></script>