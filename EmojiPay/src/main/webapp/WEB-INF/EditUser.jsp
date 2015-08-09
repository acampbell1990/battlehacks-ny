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
	<form action="/submitUserForm.html" method="post" id="registerUser">
		<label for="twitterHandle">Twitter Handle</label>
		<input type="text" value="${client.twitterHandle}" id="twitterHandle"/>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">Location Information</legend>
			<label for="Location_AddressLine1">Street Address:</label>
			<input type="text" value="${client.location.address}" id="Location_AddressLine1"/>

			<label for="Location_City">City</label>
			<input type="text" value="${client.location.city}" id="Location_City"/>

			<label class="ui-hide" for="Location_State">State</label>
			<input type="text" value="${client.location.state}" id="Location_State"/>

			<label for="Location_Zip">Zip Code:</legend>
			<input type="text" value="${client.location.zip}" id="Location_Zip"/>		
		</fieldset>
	</form>
	<button type="button" onclick="$('#editUser').submit()"> 
</body>
</html>