<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<head>
<jsp:include page="header.jsp"/>
</head>
<body>
	<form action="/submitUserForm.html" method="post" id="editUser">
	<fieldset class="fieldset-container-one">
		<legend class="legend-header-one">Twitter Handle:</legend>
		<label class="ui-hide" for="twitterHandle">Twitter Handle</label>
		<input type="text" name="client.twitterHandle" value="${client.twitterHandle}"/>
	</fieldset>
	<fieldset class="fieldset-container-one">
		<legend class="legend-header-one">Personal Information:</legend>
		<fieldset class="fieldset-container-two">
			<legend class="legend-header-two">First Name:</legend>
			<input type="text" name="client.person.firstName" value="${client.person.firstName}"/>
		</fieldset>
		<fieldset class="fieldset-container-two">
			<legend class="legend-header-two">Last Name:</legend>
			<input type="text" name="client.person.lastName" value="${client.person.lastName}"/>
		</fieldset>
		<fieldset class="fieldset-container-two">
			<legend class="legend-header-two">PayPal Information:</legend>
			<input type="text" name="client.paypalInfo" value="${client.paypalInfo}"/>
		</fieldset>
		<fieldset class="fieldset-container-two">
			<legend class="legend-header-two">Preference:</legend>
			<input type="text" name="client.preference" value="${client.preference}"/>
		</fieldset>
	</fieldset>
	<fieldset class="fieldset-container-one">
		<legend class="legend-header-one">Location:</legend>
		<fieldset class="fieldset-container-two">
			<legend class="legend-header-two">Address:</legend>
			<input type="text" name="client.location.address" id="Location_AddressLine1" value="${client.location.address}"/>
		</fieldset>
		<fieldset class="fieldset-container-two">
			<legend class="legend-header-two">City:</legend>
			<input type="text" name="client.location.city" id="Location_City" value="${client.location.city}"/>
		</fieldset>
		<fieldset class="fieldset-container-one">
			<legend class="legend-header-one">State:</legend>
			<input type="text" name="client.location.state" id="Location_State" value="${client.location.state}"/>
		</fieldset>
		<fieldset class="fieldset-container-one">
			<legend class="legend-header-one">Zip Code:</legend>
			<input type="text" name="client.location.zip" value="${client.location.zip}"/>
		</fieldset>
	</fieldset>
	</form>
	<input type="button" onclick="$('#editUser').submit()"> 
</body>
</html>