<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 
 <%@include file="header.jsp" %>

	<h3 style="margin:auto">Registration Form</h3><br>
	<div class="container wrapper">
	<div class="container">
	<c:url value="/savecustomer" var="url"></c:url>
	<form:form action="${url }" modelAttribute="customer">
	<div class="boxed" style="border:1px solid">
	<h4>User Details</h4>
	<div class="form-group">
	<form:label path="firstname">Enter Firstname</form:label>
	<form:input path="firstname" />
	<form:errors path="firstname" cssStyle="color:red"></form:errors>
	</div>
	
	<div class="form-group">
	<form:label path="lastname">Enter Lastname</form:label>
	<form:input path="lastname" class="form-control"/>
	<form:errors path="lastname" cssStyle="color:red"></form:errors>
	</div>
	
	<div class="form-group">
	<form:label path="email">Enter Email</form:label>
	<form:input path="email" class="form-control" />
	<form:errors path="email" cssStyle="color:red"></form:errors>
	<p style="color:red">${duplicateEmail }</p>
	</div>
	
	<div class="form-group">
	<form:label path="phone">Enter Phone Number</form:label>
	<form:input path="phone" />
	<form:errors path="phone" cssStyle="color:red"></form:errors>
	</div><br>
	
	<div class="boxed" style="border:1px solid">
	<div class="form-group">
	<h4>Username & Password</h4>
	<form:label path="user.username">Enter Username</form:label>
	<form:input path="user.username"  />
	<form:errors path="user.username" cssStyle="color:red"></form:errors>
	<p style="color:red">${duplicateUsername }</p>
	</div>
	
	<div class="form-group">
	<form:label path="user.password">Enter Password</form:label>
	<form:input path="user.password" />
	<form:errors path="user.password" cssStyle="color:red"></form:errors>
	</div>
	</div><br>
	
	<div class="boxed" style="border:1px solid">
	<div class="form-group">
	<h4>Billing Address</h4>
	<form:label path="billingAddress.streetname">Enter Streetname</form:label>
	<form:input path="billingAddress.streetname" />
	<form:errors path="billingAddress.streetname" cssStyle="color:red"></form:errors>
	</div>
	
	<div class="form-group">
	<form:label path="billingAddress.apartmentnumber">Enter apartmentnumber</form:label>
	<form:input path="billingAddress.apartmentnumber" />
	<form:errors path="billingAddress.apartmentnumber" cssStyle="color:red"></form:errors>
	</div>
	
	<div class="form-group">
	<form:label path="billingAddress.city">Enter City</form:label>
	<form:input path="billingAddress.city" />
	<form:errors path="billingAddress.city" cssStyle="color:red"></form:errors>
	</div>
	
	<div class="form-group">
	<form:label path="billingAddress.state">Enter State</form:label>
	<form:input path="billingAddress.state" />
	<form:errors path="billingAddress.state" cssStyle="color:red"></form:errors>
	</div>
	
	<div class="form-group">
	<form:label path="billingAddress.country">Enter Country</form:label>
	<form:input path="billingAddress.country" />
	<form:errors path="billingAddress.country" cssStyle="color:red"></form:errors>
	</div>
	
	<div class="form-group">
	<form:label path="billingAddress.zipcode">Enter Zipcode</form:label>
	<form:input path="billingAddress.zipcode" />
	<form:errors path="billingAddress.zipcode" cssStyle="color:red"></form:errors>
	</div>
	</div>
	<br>
	
	<div class="boxed" style="border:1px solid">
	<div class="form-group">
	<h4>Shipping Address</h4>
	<form:label path="shippingAddress.streetname">Enter Streetname</form:label>
	<form:input path="shippingAddress.streetname" />
	<form:errors path="shippingAddress.streetname" cssStyle="color:red"></form:errors>
	</div>
	
	<div class="form-group">
	<form:label path="shippingAddress.apartmentnumber">Enter Apartmentnumber</form:label>
	<form:input path="shippingAddress.apartmentnumber" />
	<form:errors path="shippingAddress.apartmentnumber" cssStyle="color:red"></form:errors>
	</div>
	
	<div class="form-group">
	<form:label path="shippingAddress.city">Enter City</form:label>
	<form:input path="shippingAddress.city" />
	<form:errors path="shippingAddress.city" cssStyle="color:red"></form:errors>
	</div>
	
	<div class="form-group">
	<form:label path="shippingAddress.state">Enter State</form:label>
	<form:input path="shippingAddress.state" />
	<form:errors path="shippingAddress.state" cssStyle="color:red"></form:errors>
	</div>
	
	<div class="form-group">
	<form:label path="shippingAddress.country">Enter Country</form:label>
	<form:input path="shippingAddress.country" />
	<form:errors path="shippingAddress.country" cssStyle="color:red"></form:errors>
	</div>
	
	<div class="form-group">
	<form:label path="shippingAddress.zipcode">Enter Zipcode</form:label>
	<form:input path="shippingAddress.zipcode" />
	<form:errors path="shippingAddress.zipcode" cssStyle="color:red"></form:errors>
	</div>
	</div>
	</div>
	
	<div class="form-group">
	<input type="submit" value="Register">
	</div>
	
	
	</form:form>
	</div>
	</div>
	
	<%@include file="footer.jsp" %>
	