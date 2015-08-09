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
	<form>
		<div class="form-group">
		<label for="twitterHandle">Twitter Handle:</label>
		<input type="text" name="merchant.twitterHandle" value="${merchant.twitterHandle}" disabled readonly="readonly"/>
		</div>
		<div class="form-group">
			<label for="merchant_businessName">Business Name:</label>
			<input type="text" name="merchant.businessName" value="${merchant.businessName}" disabled readonly="readonly"/>
		</div>
		<div class="form-group">
			<label for="merchant_phoneNumber">Phone Number:</label>
			<input type="text" name="merchant.phoneNumber" id="merchant_phoneNumber" value="${merchant.phoneNumber}" disabled readonly="readonly"/>
		</div>
		<div class="form-group">
			<label for="merchant_email">Email:</label>
			<input type="text" name="merchant.email" id="merchant_email" value="${merchant.email}" disabled readonly="readonly"/>
		</div>
		<div class="form-group">
			<label for="merchant_firstFoodOption">Quick Order Option:</label>
			<input type="text" name="merchant.firstFoodOption" id="merchant_firstFoodOption" value="${merchant.firstFoodOption}" disabled readonly="readonly"/>
		</div>
	
	</form>
</body>
</html>