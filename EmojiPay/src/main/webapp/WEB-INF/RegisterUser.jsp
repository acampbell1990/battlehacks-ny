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
<br><br><br><br>
	<div class="container">
  
  <form action="/EmoticonPayments/submitUserForm.html" method="post" id="registerUser">
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" name="client.email" id="email" placeholder="Enter email">
    </div>
    <div class="form-group">
      <label for="address">Address:</label>
      <input type="text" class="form-control"name="location.address" id="Location_AddressLine1" placeholder="Enter address">
    </div>
    <div class="form-group">
      <label for="city">City:</label>
      <input type="text" class="form-control" name="location.city" id="Location_City" placeholder="Enter city">
    </div>
    <div class="form-group">
      <label for="state">State:</label>
      <input type="text" class="form-control" name="location.state" id="Location_State" placeholder="Enter state">
    </div>
    <div class="form-group">
      <label for="zip">Zip-Code:</label>
      <input type="text" class="form-control" name="location.zip" placeholder="Enter zip">
    </div>
    <div class="checkbox">
      <label><input type="checkbox"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>
</body>
</html>