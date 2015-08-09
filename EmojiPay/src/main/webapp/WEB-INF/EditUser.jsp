<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<head class="head">
<jsp:include page="header.jsp"/>
<jsp:include page="navbar.jsp"/>
</head>
<body>
	<form action="/submitUserForm.html" method="post" id="editUser">
	<div class="form-group">
		<label for="twitterHandle">Twitter Handle</label>
		<input type="text" value="${client.twitterHandle}" id="twitterHandle"/>
	</div>
	</form>
	<button type="button" onclick="$('#editUser').submit()"> 
</body>
</html>