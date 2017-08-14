 
<%@ include file="header.jsp" %>
<h3>List of Products</h3>
<script>
	$(document).ready(function() {
		var searchCondition = '${searchCondition}';
		$('.table').DataTable({
			"lengthMenu" : [ [ 3, 5, 7, -1 ], [ 3, 5, 7, "All" ] ],
			"oSearch" : {
				"sSearch" : searchCondition
			}
		})
	});
</script>
<div class="container">
<table class="table table-striped">
	<thead>
		<tr>
		<th>Image</th>
		<th>PID</th>
		<th>Product</th>
		<th>Price</th>
		<th>Quantity</th>
		<th>Category</th>
		<th>Action</th>
  		</tr>
  	</thead>
  	
  	<tbody>
  	<c:forEach items="${product}" var="p" >
  	<tr>
  	<c:url value="/resources/images/${p.pid }.png" var="imageUrl"></c:url>
  	
  	<td><img src="${imageUrl }" height="50" width="50"></td>
  	
  	<td>${p.pid }</td>
  	<td>${p.pname }</td>
  	<td>${p.price }</td>
  	<td>${p.quantity}</td>
  	<td>${p.category.categoryName }</td>
  	
  	 
  	 
  	
  	<td>
  	
  		<c:url var="url" value="/viewproduct/${p.pid}"  ></c:url>
  	    <a href="${url }"> <span class="glyphicon glyphicon-info-sign"></span></a>
  	    <security:authorize access="hasRole('ROLE_ADMIN')">
  	  	<c:url var="delete" value="/deleteform/${p.pid}"  ></c:url>
  	    <a href="${delete}"> <span class="glyphicon glyphicon-trash"></span></a>
  		
  		<c:url var="edit" value="/editform/${p.pid}"  ></c:url>
  	    <a href="${edit}"><span class="glyphicon glyphicon-pencil"></span></a>
  	    </security:authorize>
  	</td>
  	
  	
 </tr>
  </c:forEach>
   </tbody>
  </table>
  
</div>

<%@ include file="footer.jsp" %>  	
