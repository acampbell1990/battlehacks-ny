<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<jsp:include page="header.jsp"/>
<jsp:include page="navbar.jsp"/>

	<h2>Tweet and Eat! It's that simple. <b>:)</b></h2>
	<div class="container">
		<p>Welcome to EmojiPAY, the one and only service that lets you tweet your favorite orders and pay them automatically, ready for you to pick up or have delivered as fast as you can type!</p>
		<a href='<%=request.getAttribute("authUrl") %>'>Sign in with Twitter</a>
	</div>
<jsp:include page="footer.jsp"/>