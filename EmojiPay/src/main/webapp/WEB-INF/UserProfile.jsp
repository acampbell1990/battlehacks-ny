<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
	<jsp:include page="header.jsp"/>
	<jsp:include page="navbar.jsp"/>
	  <form>
		<div class="form-group">
			<label for="twitterHandle">Twitter Handle</label>
			<input type="text" value="${client.twitterHandle}" id="twitterHandle" disabled readonly="readonly"/>
		</div>
    
  	  </form>
<jsp:include page="footer.jsp"/>