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
	<form action="/submitMerchantForm.html" method="post" id="registerMerchant">
	<fieldset class="scheduler-border">
		<legend class="scheduler-border">Twitter Handle:</legend>
		<label class="ui-hide" for="twitterHandle">Twitter Handle</label>
		<input type="text" name="merchant.twitterHandle" value="${merchant.twitterHandle}" readonly="readonly"/>
	</fieldset>
	<fieldset class="scheduler-border">
		<legend class="scheduler-border">Merchant Information:</legend>
		<fieldset class="feildset-container-two">
			<legend class="scheduler-border">Merchant Name:</legend>
			<input type="text" name="merchant.businessName" value="${merchant.businessName}" readonly="readonly"/>
		</fieldset>
		<fieldset class="feildset-container-two">
			<legend class="scheduler-border">Phone Number:</legend>
			<input type="text" name="merchant.phoneNumber" value="${merchant.phoneNumber}" readonly="readonly"/>
		</fieldset>
		<fieldset class="feildset-container-two">
			<legend class="scheduler-border">Email:</legend>
			<input type="text" name="merchant.email" value="${merchant.email}" readonly="readonly"/>
		</fieldset>
		<fieldset class="feildset-container-two">
			<legend class="scheduler-border">First Preference Option:</legend>
			<input type="text" name="merchant.firstFoodOption" value="${merchant.firstFoodOption}" readonly="readonly"/>
		</fieldset>
		<fieldset class="feildset-container-two">
			<legend class="scheduler-border">Second Preference Option:</legend>
			<input type="text" name="merchant.secondFoodOption" value="${merchant.secondFoodOption}" readonly="readonly"/>
		</fieldset>
		<fieldset class="feildset-container-two">
			<legend class="scheduler-border">Third Preference Option:</legend>
			<input type="text" name="merchant.thirdFoodOption" value="${merchant.thirdFoodOption}" readonly="readonly"/>
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">PayPal Information:</legend>
			<input type="text" name="merchant.paypalInfo" value="${merchant.paypalInfo}" readonly="readonly"/>
		</fieldset>
	</fieldset>
	<fieldset class="scheduler-border">
		<legend class="scheduler-border">Location:</legend>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">Address:</legend>
			<input type="text" name="merchant.location.address" id="Location_AddressLine1" value="${merchant.location.address}" readonly="readonly"/>
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">City:</legend>
			<input type="text" name="merchant.location.city" id="Location_City" value="${merchant.location.city}" readonly="readonly"/>
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">State:</legend>
			<input type="text" name="merchant.location.state" id="Location_State" value="${merchant.location.state}" readonly="readonly"/>
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">Zip Code:</legend>
			<input type="text" name="merchant.location.zip" value="${merchant.location.zip}" readonly="readonly"/>
		</fieldset>
	</fieldset>
	</form>
</body>
</html>