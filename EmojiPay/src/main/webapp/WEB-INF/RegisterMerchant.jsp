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

<div class="container" style="margin-top: 7%;">

	<form action="/EmoticonPayments/submitMerchantForm.html" method="post" id="editMerchant">
	<h3 class="text-center">Merchant Information</h3>
		<div class="form-group">
	      <label for="businessName">Business Name:</label>
	      <input type="text" class="form-control" name="businessName" placeholder="Enter business name">
	    </div>
	    <div class="form-group">
	     <label for="merchant_phoneNumber">Phone Number:</label>
		 <input type="text" class="form-control" name="phoneNumber" id="merchant_phoneNumber" placeholder="Enter phone number"/>
	    </div>
	    <div class="form-group">
	     	<label for="merchant_email">Email:</label>
			<input type="text" name="email" id="merchant_email" class="form-control"placeholder="Enter email"/>
	    </div>
	     <div class="form-group">
	     <label for="merchant_firstFoodOption">First Preference Option:</label>
			<input type="text" name="firstFoodOption" id="merchant_firstFoodOption" class="form-control"placeholder="Enter food option"/>
	    </div>
	    <!--  <div class="form-group">
	     <label for="merchant_secondFoodOption">Second Preference Option:</label>
			<input type="text" name="secondFoodOption" id="merchant_secondFoodOption" class="form-control"placeholder="Enter food option"/>
	    </div>
	    <div class="form-group">
	     <label for="merchant_thirdFoodOption">Third Preference Option:</label>
			<input type="text" name="thirdFoodOption" id="merchant_thirdFoodOption" class="form-control"placeholder="Enter food option"/>
	    </div>
		<div class="form-group">
	     <label for="merchant_location_address">Street Address:</label>
		 <input type="text" name="location.address" id="merchant_location_address" class="form-control"placeholder="Enter address"/>
	    </div>
	    <div class="form-group">
	     <label for="merchant_location_city">City:</label>
			<input type="text" name="location.city" id="merchant_location_city" class="form-control"placeholder="Enter city"/>
	    </div>
	    <div class="form-group">
	    <label for="merchant_location_state">State:</label>
			<input type="text" name="location.state" id="merchant_location_state" class="form-control"placeholder="Enter state"/>
	    </div>
	    <div class="form-group">
	     <label for="merchant_location_zip">Zip Code:</label>
			<input type="text" name="location.zip" id="merchant_location_zip" class="form-control"placeholder="Enter zipcode"/>
	    </div> -->
	<button type="submit" class="btn btn-default">Submit</button>
	</form>
	<div/>
	 
</body>
</html>