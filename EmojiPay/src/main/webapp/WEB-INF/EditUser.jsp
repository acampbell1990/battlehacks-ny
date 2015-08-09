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
	<fieldset class="scheduler-border">
		<legend class="scheduler-border">Twitter Handle:</legend>
		<label class="ui-hide" for="twitterHandle">Twitter Handle</label>
		<input type="text" name="client.twitterHandle" value="${client.twitterHandle}"/>
	</fieldset>
	<fieldset class="scheduler-border">
		<legend class="scheduler-border">Personal Information:</legend>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">First Name:</legend>
			<input type="text" name="client.person.firstName" value="${client.person.firstName}"/>
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">Last Name:</legend>
			<input type="text" name="client.person.lastName" value="${client.person.lastName}"/>
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">PayPal Information:</legend>
			<input type="text" name="client.paypalInfo" value="${client.paypalInfo}"/>
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">Preference:</legend>
			<input type="text" name="client.preference" value="${client.preference}"/>
		</fieldset>
	</fieldset>
	<fieldset class="scheduler-border">
		<legend class="scheduler-border">Location:</legend>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">Address:</legend>
			<input type="text" name="client.location.address" id="Location_AddressLine1" value="${client.location.address}"/>
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">City:</legend>
			<input type="text" name="client.location.city" id="Location_City" value="${client.location.city}"/>
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">State:</legend>
			<input type="text" name="client.location.state" id="Location_State" value="${client.location.state}"/>
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">Zip Code:</legend>
			<input type="text" name="client.location.zip" value="${client.location.zip}"/>
		</fieldset>
	</fieldset>
	</form>
	<button type="button" onclick="$('#editUser').submit()"> 
</body>
</html>