 
 

 
 <%@include file="header.jsp" %>
	<div class="container">
		<div class="row">
			<div class="form-horizontal">
				<form:form action="addNewProduct" commandName="product" method="post" enctype="multipart/form-data" >
				
				<!-- enctype="multipart/form-data"  -->
				
				  
					<%-- <div class="form-group">
						<label class="col-md-4 control-label" for="pid">PID</label>
						<div class="col-md-6">
							<form:label path="pid" class="form-control" />
						</div>
					</div> --%>
 

					<div class="form-group">
						<label class="col-md-4 control-label" for="pname">Product Name</label>
						<div class="col-md-6">
							<form:input path="pname" class="form-control" />
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="description">Description</label>
						<div class="col-md-6">
							<form:input path="description" class="form-control" />
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="price">Price</label>
						<div class="col-md-6">
							<form:input path="price" class="form-control" />
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="quantity">Quantity</label>
						<div class="col-md-6">
							<form:input path="quantity" class="form-control" />
						</div>
					</div>
					
					<div class="form-group">
					Select Category  :   &nbsp;
					<c:forEach items="${categories }" var="c">
						<form:radiobutton path="category.pid" value="${c.pid }" />${ c.categoryName}
						
						</c:forEach>
					</div>
					
					
				<div class="form-group">
					Upload an image
					<input type="file"  name="image" />
					</div>
					
					
					<div class="form-group">
						<label class="col-md-4 control-label" for="singlebutton"></label>
						<div class="col-md-4">
							<button value="submit" name="submit" class="btn btn-primary">Add
								Product</button>
						</div>
					</div>


				</form:form>
			</div>
		</div>
	</div>
	
	<%@include file="footer.jsp" %>
	