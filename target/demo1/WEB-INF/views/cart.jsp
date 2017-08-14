<%@ include file="header.jsp" %>
<h3>List of Products</h3>

<div class="container">
<div>
<c:url value="/cart/clearcart/${cart.id }" var="clear"></c:url>
 <a href="${clear }" class="btn btn-danger" pull-left>
<span class="glyphicon glyhicon-remove-sign"></span>
Clear Cart
</a>
<a href="<c:url value="/cart/billingaddressform/${cart.id}"></c:url>" class="btn btn-success pull-right">
<span class="glyphicon glyphicon-shopping-cart"></span>Check out </a>
<table class="table table-striped">
	<thead>
		<tr>
		<!-- <th>Image</th> -->
		<th>Name</th>
		<th>Quantity</th>
		<th>Total Price</th>
		<th>Remove</th>
  		</tr>
  	</thead>
  	
  	<c:set var="grandTotal" value="0"></c:set>
  	<c:forEach items="${cart.cartItems}" var="ct" >
  	<tr>
  	
  	<td>${ct.product.pname }</td>
  	<td>${ct.quantity }</td>
  	<td>${ct.totalPrice}</td>
  	<c:url value="/cart/removecartitem/${ct.cartItemId }" var="remove"></c:url>
  	<td><a href="${remove}" class="label label-danger" pull-left>
  	<span class="glyphicon glyhicon-remove"></span>Remove
  	<c:set var="grandTotal" value="${ct.totalPrice + grandTotal }"></c:set>
  	
  	
  	</a></td>
  	<td></td>
  	
  	
 </tr>
  </c:forEach>
   </tbody>
  </table>
  <b>Total Price  :  ${grandTotal }</b>
  </div>
</div>

<%@ include file="footer.jsp" %>  	
