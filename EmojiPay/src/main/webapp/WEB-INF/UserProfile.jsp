<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<head>
<jsp:include page="header.jsp"/>
</head>
<body>
	<form action="/submitUserForm.html" method="post" id="registerUser">
	<fieldset class="fieldset-container-one">
		<legend class="legend-header-one">Twitter Handle:</legend>
		<label class="ui-hide" for="twitterHandle">Twitter Handle</label>
		<input type="text" value="${client.twitterHandle}" readonly="readonly"/>
	</fieldset>
	<fieldset class="fieldset-container-one">
		<legend class="legend-header-one">Personal Information:</legend>
		<fieldset class="fieldset-container-two">
			<legend class="legend-header-two">First Name:</legend>
			<input type="text" value="${client.person.firstName}" readonly="readonly"/>
		</fieldset>
		<fieldset class="fieldset-container-two">
			<legend class="legend-header-two">Last Name:</legend>
			<input type="text" value="${client.person.lastName}" readonly="readonly"/>
		</fieldset>
		<fieldset class="fieldset-container-two">
			<legend class="legend-header-two">PayPal Information:</legend>
			<input type="text" value="${client.paypalInfo}" readonly="readonly"/>
		</fieldset>
		<fieldset class="fieldset-container-two">
			<legend class="legend-header-two">Preference:</legend>
			<input type="text" value="${client.preference}" readonly="readonly"/>
		</fieldset>
	</fieldset>
	<fieldset class="fieldset-container-one">
		<legend class="legend-header-one">Location:</legend>
		<fieldset class="fieldset-container-two">
			<legend class="legend-header-two">Address:</legend>
			<!-- <label class="ui-hide" for="Location_AddressLine1">Address</label>-->
			<input type="text" value="${client.location.address}" id="Location_AddressLine1" readonly="readonly"/>
		</fieldset>
		<fieldset class="fieldset-container-two">
			<legend class="legend-header-two">City:</legend>
			<label class="ui-hide" for="Location_City">City</label>
			<input type="text" value="${client.location.city}" id="Location_City" readonly="readonly" />
		</fieldset>
		<fieldset class="fieldset-container-one">
			<legend class="legend-header-one">State:</legend>
			<!--<label class="ui-hide" for="Location_State">State</label>-->
			<input type="text" value="${client.location.state}" id="Location_State" readonly="readonly" />
		</fieldset>
		<fieldset class="fieldset-container-one">
			<legend class="legend-header-one">Zip Code:</legend>
			<input type="text" value="${client.location.zip}" readonly="readonly"/>
		</fieldset>
	</fieldset>
	</form>
</body>
</html>