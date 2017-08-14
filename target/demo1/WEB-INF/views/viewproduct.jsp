<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <%@include file="header.jsp" %>
 
   
 <h3>Product description</h3>
 <div>
 <ul style="list-style:none;">
 <li><label >PID : </label> ${pd.pid}</li>
 <li><label >Product name : </label>${pd.pname}</li>
 <li><label >Product price : </label>${pd.price}</li>
 <li><label >Product quantity : </label> ${pd.quantity }</li>
 <li><label >Product Description : </label> ${pd.description }</li>
 <li><label>Product Image</label><c:url value="/resources/images/${pd.pid }.png" var="imageUrl"></c:url>
  	
  	<td><img src="${imageUrl }" height="50" width="50"></td></li>
 
 <c:if  test="${pd.quantity==0 }">
Out Of Stock
</c:if>
<c:if test="${pageContext.request.userPrincipal.name!=null }">
 <c:if test="${pd.quantity!=0 }">
<c:url value="/cart/addtocart/${pd.pid }" var="url"></c:url>
<form action="${url }">
Enter Units<input  type="text" name="units"><br>
</c:if>
<button type="submit" 
 style="background:none;border:none;padding:0" class="btn btn-default btn-lg">
<span class="glyphicon glyphicon-shopping-cart"></span></button>
</form>
</c:if>
<c:url value="/getallproduct" var="url1"></c:url>
<a href="${url1 }"><button>Back to product list</button></a><br>
 </ul>
 
 </div>
 <%@include file="footer.jsp"%>
 