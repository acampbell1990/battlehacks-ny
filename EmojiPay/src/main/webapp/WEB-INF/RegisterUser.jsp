<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<head>
<jsp:include page="header.jsp"/>
</head>
<body>
	<form action="" method="post" id="registerUser">
	<fieldset class="fieldset-container-one">
		<legend class="legend-header-one">Twitter Handle:</legend>
		<label class="ui-hide" for="twitterHandle">Twitter Handle</label>
		<input type="text" name="TwitterHandle"/>
	</fieldset>
	<fieldset class="fieldset-container-one">
		<legend class="legend-header-one">Location:</legend>
		<fieldset class="fieldset-container-two">
			<legend class="legend-header-two">Address Line 1:</legend>
			<label class="ui-hide" for="Address_AddressLine1">Address Line 1</label>
			<input type="text" name="Address.AddressLine1" id="Address_AddressLine1"/>
		</fieldset>
		<fieldset class="fieldset-container-two">
			<legend class="legend-header-two">Address Line 2:</legend>
			<label class="ui-hide" for="twitterHandle">Address Line 2</label>
		</fieldset>
		<fieldset class="fieldset-container-two">
			<legend class="legend-header-two">City:</legend>
			<label class="ui-hide" for="twitterHandle">City</label>
		</fieldset>
		<fieldset class="fieldset-container-one">
			<legend class="legend-header-one">State:</legend>
			<label class="ui-hide" for="twitterHandle">State</label>
		</fieldset>
		<fieldset class="fieldset-container-one">
			<legend class="legend-header-one">Zip Code:</legend>
			<label class="ui-hide" for="twitterHandle">Zip Code</label>
		</fieldset>
	</fieldset>
	<fieldset class="fieldset-container-one">
		<legend class="legend-header-one">PayPal Information:</legend>
	</fieldset>
	</form>
</body>
</html>