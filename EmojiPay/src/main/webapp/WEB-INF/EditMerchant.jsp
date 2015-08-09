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
		<label for="twitterHandle">Twitter Handle:</label>
		<input type="text" name="merchant.twitterHandle" value="${merchant.twitterHandle}"/>

		<fieldset class="scheduler-border">
		<legend class="scheduler-border">Merchant Information:</legend>
			<label for="merchant_businessName">Business Name:</label>
			<input type="text" name="merchant.businessName" value="${merchant.businessName}"/>

			<label for="merchant_phoneNumber">Phone Number:</label>
			<input type="text" name="merchant.phoneNumber" id="merchant_phoneNumber" value="${merchant.phoneNumber}"/>

			<label for="merchant_email">Email:</label>
			<input type="text" name="merchant.email" id="merchant_email" value="${merchant.email}"/>

			<label for="merchant_firstFoodOption">First Preference Option:</label>
			<input type="text" name="merchant.firstFoodOption" id="merchant_firstFoodOption" value="${merchant.firstFoodOption}"/>

			<label for="merchant_secondFoodOption">Second Preference Option:</label>
			<input type="text" name="merchant.secondFoodOption" id="merchant_secondFoodOption" value="${merchant.secondFoodOption}"/>

			<label for="merchant_thirdFoodOption">Third Preference Option:</label>
			<input type="text" name="merchant.thirdFoodOption" id="merchant_thirdFoodOption" value="${merchant.thirdFoodOption}"/>
		

			<label for="merchant_paypalInfo">PayPal Information:</label>
			<input type="text" name="merchant.paypalInfo" id="merchant_paypalInfo" value="${merchant.paypalInfo}"/>
		</fieldset>
	<fieldset class="scheduler-border">
		<legend class="scheduler-border">Location Information:</legend>

			<label for="merchant_location_address">Street Address:</label>
			<input type="text" name="merchant.location.address" id="merchant_location_address" value="${merchant.location.address}"/>

			<label for="merchant_location_city">City:</label>
			<input type="text" name="merchant.location.city" id="merchant_location_city" value="${merchant.location.city}"/>

			<label for="merchant_location_state">State:</label>
			<input type="text" name="merchant.location.state" id="merchant_location_state" value="${merchant.location.state}"/>

			<label for="merchant_location_zip">Zip Code:</label>
			<input type="text" name="merchant.location.zip" id="merchant_location_zip" value="${merchant.location.zip}"/>
		</fieldset>
	</form>
	<button type="button" onclick="$('#editMerchant').submit()">Submit</button> 
</body>
</html>