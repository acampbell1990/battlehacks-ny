<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<head class="head">
<jsp:include page="header.jsp" />
<jsp:include page="navbar.jsp" />
</head>
<body>
	<div class="container" style="margin-top: 7%;">

		<h3>Hey there, ${message}.</h3>
		<h3>Welcome to EmojiPAY, the one and only service that lets you
			tweet your favorite orders and pay them automatically, ready for you
			to pick up or have delivered as fast as you can type!</h3>

		<h3>Let's see if we can find your favorite merchant...</h3>
		<div class="input-group input-group-lg">
			<span class="input-group-addon" id="sizing-addon1">@</span> <input
				type="text" class="form-control" placeholder="Merchant"
				aria-describedby="sizing-addon1">
		</div>
		<br /> <input type="button" class="btn .btn-primary"
			onclick="location.href='/search'" value="Search">
	</div>
</body>
</html>