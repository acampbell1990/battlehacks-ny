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
	<form action="/submitMerchantForm.html" method="post" id="editMerchant">
	<fieldset class="scheduler-border">
		<legend class="scheduler-border">Twitter Handle:</legend>
		<label for="twitterHandle">Twitter Handle:</label>
		<input type="text" name="merchant.twitterHandle" value="${merchant.twitterHandle}"/>
	</fieldset>
	<fieldset class="scheduler-border">
		<legend class="scheduler-border">Merchant Information:</legend>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">Merchant Name:</legend>
			<input type="text" name="merchant.businessName" value="${merchant.businessName}"/>
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">Phone Number:</legend>
			<input type="text" name="merchant.phoneNumber" value="${merchant.phoneNumber}"/>
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">Email:</legend>
			<input type="text" name="merchant.email" value="${merchant.email}"/>
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">First Preference Option:</legend>
			<input type="text" name="merchant.firstFoodOption" value="${merchant.firstFoodOption}"/>
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">Second Preference Option:</legend>
			<input type="text" name="merchant.secondFoodOption" value="${merchant.secondFoodOption}"/>
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">Third Preference Option:</legend>
			<input type="text" name="merchant.thirdFoodOption" value="${merchant.thirdFoodOption}"/>
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border"></legend>
			<label>PayPal Information:</label>
			<input type="text" name="merchant.paypalInfo" value="${merchant.paypalInfo}"/>
		</fieldset>
	</fieldset>
	<fieldset class="scheduler-border">
		<legend class="scheduler-border">Location:</legend>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">Address:</legend>
			<input type="text" name="merchant.location.address" id="Location_AddressLine1" value="${merchant.location.address}"/>
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">City:</legend>
			<input type="text" name="merchant.location.city" id="Location_City" value="${merchant.location.city}"/>
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">State:</legend>
			<input type="text" name="merchant.location.state" id="Location_State" value="${merchant.location.state}"/>
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">Zip Code:</legend>
			<input type="text" name="merchant.location.zip" value="${merchant.location.zip}"/>
		</fieldset>
	</fieldset>
	</form>
	<button type="button" onclick="$('#editMerchant').submit()">Submit</button> 
</body>
</html>