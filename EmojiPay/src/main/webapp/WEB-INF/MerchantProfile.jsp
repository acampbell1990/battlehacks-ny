<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<head>
<jsp:include page="header.jsp"/>
</head>
<body>
	<form action="/submitMerchantForm.html" method="post" id="registerMerchant">
	<fieldset class="fieldset-container-one">
		<legend class="legend-header-one">Twitter Handle:</legend>
		<label class="ui-hide" for="twitterHandle">Twitter Handle</label>
		<input type="text" name="merchant.twitterHandle" value="${merchant.twitterHandle}" readonly="readonly"/>
	</fieldset>
	<fieldset class="fieldset-container-one">
		<legend class="legend-header-one">Merchant Information:</legend>
		<fieldset class="feildset-container-two">
			<legend class="legend-header-two">Merchant Name:</legend>
			<input type="text" name="merchant.businessName" value="${merchant.businessName}" readonly="readonly"/>
		</fieldset>
		<fieldset class="feildset-container-two">
			<legend class="legend-header-two">Phone Number:</legend>
			<input type="text" name="merchant.phoneNumber" value="${merchant.phoneNumber}" readonly="readonly"/>
		</fieldset>
		<fieldset class="feildset-container-two">
			<legend class="legend-header-two">Email:</legend>
			<input type="text" name="merchant.email" value="${merchant.email}" readonly="readonly"/>
		</fieldset>
		<fieldset class="feildset-container-two">
			<legend class="legend-header-two">First Preference Option:</legend>
			<input type="text" name="merchant.firstFoodOption" value="${merchant.firstFoodOption}" readonly="readonly"/>
		</fieldset>
		<fieldset class="feildset-container-two">
			<legend class="legend-header-two">Second Preference Option:</legend>
			<input type="text" name="merchant.secondFoodOption" value="${merchant.secondFoodOption}" readonly="readonly"/>
		</fieldset>
		<fieldset class="feildset-container-two">
			<legend class="legend-header-two">Third Preference Option:</legend>
			<input type="text" name="merchant.thirdFoodOption" value="${merchant.thirdFoodOption}" readonly="readonly"/>
		</fieldset>
		<fieldset class="fieldset-container-two">
			<legend class="legend-header-two">PayPal Information:</legend>
			<input type="text" name="merchant.paypalInfo" value="${merchant.paypalInfo}" readonly="readonly"/>
		</fieldset>
	</fieldset>
	<fieldset class="fieldset-container-one">
		<legend class="legend-header-one">Location:</legend>
		<fieldset class="fieldset-container-two">
			<legend class="legend-header-two">Address:</legend>
			<input type="text" name="merchant.location.address" id="Location_AddressLine1" value="${merchant.location.address}" readonly="readonly"/>
		</fieldset>
		<fieldset class="fieldset-container-two">
			<legend class="legend-header-two">City:</legend>
			<input type="text" name="merchant.location.city" id="Location_City" value="${merchant.location.city}" readonly="readonly"/>
		</fieldset>
		<fieldset class="fieldset-container-one">
			<legend class="legend-header-one">State:</legend>
			<input type="text" name="merchant.location.state" id="Location_State" value="${merchant.location.state}" readonly="readonly"/>
		</fieldset>
		<fieldset class="fieldset-container-one">
			<legend class="legend-header-one">Zip Code:</legend>
			<input type="text" name="merchant.location.zip" value="${merchant.location.zip}" readonly="readonly"/>
		</fieldset>
	</fieldset>
	</form>
</body>
</html>