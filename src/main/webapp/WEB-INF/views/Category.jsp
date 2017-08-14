<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 
 <%@include file="header.jsp" %>
	<div class="container">
		<div class="row">
			<div class="form-horizontal">
				<form:form action="addcategories" commandName="categories" method="post"  >
				
				<!-- enctype="multipart/form-data"  -->
				
				  
					<%-- <div class="form-group">
						<label class="col-md-4 control-label" for="pid">PID</label>
						<div class="col-md-6">
							<form:label path="pid" class="form-control" />
						</div>
					</div> --%>
 

					<div class="form-group">
						<label class="col-md-4 control-label" for="categoryName">categoryName</label>
						<div class="col-md-6">
							<form:input path="categoryName" class="form-control" />
						</div>
					</div>					
					
				
					
					<div class="form-group">
						<label class="col-md-4 control-label" for="singlebutton"></label>
						<div class="col-md-4">
							<button value="submit" name="submit" class="btn btn-primary">Add
								Category</button>
						</div>
					</div>


				</form:form>
			</div>
		</div>
	</div>
	
	<%@include file="footer.jsp" %>
	