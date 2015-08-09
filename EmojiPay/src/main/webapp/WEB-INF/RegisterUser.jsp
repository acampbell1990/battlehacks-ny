<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

	<jsp:include page="header.jsp"/>
	<jsp:include page="navbar.jsp"/>

<body class="container">
	<div class="inner-container">
	<form action="/EmoticonPayments/submitUserForm.html" method="post" id="registerUser">
	<fieldset class="scheduler-border">
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">Email</legend>
			<input type="text" name="client.email" class="input-xlarge"/>
		</fieldset>
	</fieldset>
	<fieldset class="scheduler-border">
		<legend class="scheduler-border" class="control-label">Location:</legend>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">Address:</legend>
			<input type="text" name="client.location.address" id="Location_AddressLine1" class="input-xlarge"/>
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">City:</legend>
			<input type="text" name="client.location.city" id="Location_City" class="input-xlarge" />
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">State:</legend>
			<input type="text" name="client.location.state" id="Location_State" class="input-xlarge" />
		</fieldset>
		<fieldset class="scheduler-border">
			<legend class="scheduler-border">Zip Code:</legend>
			<input type="text" name="client.location.zip" class="input-xlarge" />
		</fieldset>
	</fieldset>
	</form>
	<button type="button" onclick="$('#registerUser').submit()">Submit</button>
	</div> 
<jsp:include page="footer.jsp"/>