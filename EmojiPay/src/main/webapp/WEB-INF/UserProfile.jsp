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
	<fieldset class="scheduler-border">
		<legend class="scheduler-border">Twitter Handle:</legend>
		<label class="ui-hide" for="twitterHandle">Twitter Handle</label>
		<input type="text" value="${client.twitterHandle}" readonly="readonly"/>
	</fieldset>
	<fieldset class="scheduler-border">
		<legend class="scheduler-border">Personal Information:</legend>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">First Name:</legend>
			<input type="text" value="${client.person.firstName}" readonly="readonly"/>
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">Last Name:</legend>
			<input type="text" value="${client.person.lastName}" readonly="readonly"/>
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">PayPal Information:</legend>
			<input type="text" value="${client.paypalInfo}" readonly="readonly"/>
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">Preference:</legend>
			<input type="text" value="${client.preference}" readonly="readonly"/>
		</fieldset>
	</fieldset>
	<fieldset class="scheduler-border">
		<legend class="scheduler-border">Location:</legend>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">Address:</legend>
			<!-- <label class="ui-hide" for="Location_AddressLine1">Address</label>-->
			<input type="text" value="${client.location.address}" id="Location_AddressLine1" readonly="readonly"/>
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">City:</legend>
			<label class="ui-hide" for="Location_City">City</label>
			<input type="text" value="${client.location.city}" id="Location_City" readonly="readonly" />
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">State:</legend>
			<!--<label class="ui-hide" for="Location_State">State</label>-->
			<input type="text" value="${client.location.state}" id="Location_State" readonly="readonly" />
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">Zip Code:</legend>
			<input type="text" value="${client.location.zip}" readonly="readonly"/>
		</fieldset>
	</fieldset>
	</form>
</body>
</html>