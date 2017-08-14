<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css"/>
 <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
  <!-- Angular Js -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
      
       <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
<title>Car Store | Right destination for your car</title>

</head>

  <body style="background-color:#E6E6FA;">   <!-- #E6E6FA; -->
  <nav class="navbar navbar-inverse ">
  <div class="container-fluid">
    <div class="navbar-header">
     <img height="47px" width="110px" class="img-rounded"style="padding-top:1px;border-round:2px;" src="<c:url value="/resources/images/logo.jpg" />" />
    
	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
	  </div>
	  <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav navbar-left">
    
      <li > <a href="<c:url value="/home" />" > Home</a></li>
      
      <li class="dropdown"><a  class="dropdown-toggle" data-toggle="dropdown" href="#">Contents
	  <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Mini cars</a></li>
          <li><a href="#">Sedan cars</a></li>
          <li><a href="#">SUV cars</a></li>
		  <li><a href="#">Luxury cars</a></li>
        </ul>
	  </li>
	 
	  <li class="dropdown"><a  class="dropdown-toggle" data-toggle="dropdown" href="#">Brands Available
	  <span class="caret"></span></a>
        <ul class="dropdown-menu">
        <li>
        	<c:forEach items="${cat}" var="c">
        	<c:url value="/all/product/searchbycategory?searchCondition=${c.categoryName }" var="url"></c:url>
        	<a href="${url }" >${c.categoryName } </a>
        	</c:forEach>
        	<c:url value="/all/product/searchbycategory?searchCondition=All" var="url1"></c:url>
        	<a href="${url1 }" > ALL </a>
          </li>
        </ul>
	 
	  	
      <li><a href="<c:url value="/about" />" >About Us</a></li>
      
       <security:authorize access="hasRole('ROLE_ADMIN')">
      <li class="dropdown"><a  class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-floppy-save"></span>ADD
	  <span class="caret"></span></a>
        <ul class="dropdown-menu">
         <li><a href="<c:url value="/getcategory" />"><span class="glyphicon glyphicon-certificate"></span> Add category</a></li>
         <li><a href="<c:url value="/getproduct" />"><span class="glyphicon glyphicon-shopping-cart"></span> Add Items</a></li>
        </ul>
	  </li>
	  </security:authorize>
	  
     <li><a href="<c:url value="/getallproduct" />"><span class="glyphicon glyphicon-list"></span> Product List</a> </li> 
       <li><form class="navbar-form">
         <div class="input-group">
      <input type="text" class="form-control" placeholder="Search" name="search">
      <div class="input-group-btn">
        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
      </div>
    </div>
      </form>  
     </li> 
    </ul>
    <ul class="nav navbar-nav navbar-right">
     	
     
      <li>
      <c:if test="${pageContext.request.userPrincipal.name!=null }">
			<a href="">Welcome ${pageContext.request.userPrincipal.name }</a>
			</c:if>
			</li>
			
			<c:if test="${pageContext.request.userPrincipal.name==null }">
			<c:url value="/registrationform" var="url5"></c:url>
			<li><a href="${url5 }"><span class="glyphicon glyphicon-user"></span>Sign up</a></li>
			<c:url value="/login" var="url6"></c:url>
		    <li><a href="${url6 }"><span class="glyphicon glyphicon-log-in"></span>Sign In</a></li>	
		    </c:if>
		    <c:url value="/j_spring_security_logout" var="logoutUrl"></c:url>
		    <c:if test="${pageContext.request.userPrincipal.name!=null }">
		    <li><a href="${logoutUrl }">logout</a></li>
		 </c:if>   
		    
		   <%--  <security:authorize access="hasRole('ROLE_USER')">
		    <li>
		    	<li><a href="<c:url value="/cart/getcart" />" ><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
		    </li>
		    </security:authorize> --%>
		    
		    <%-- <c:if test="${pageContext.request.userPrincipal.name==null }">
		    <li><a href="<c:url value="/newuser" />" ></a>
		    </li></c:if> --%>
		    
		  
		    
		    <c:if test="${pageContext.request.userPrincipal.name!='admin' }">
		    <li><a href="<c:url value="/cart/getcart" />" ><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
		    </c:if>
		    
      
      <%-- <a href="<c:url value="/registrationform" />" ><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href= "<c:url value="/login" />" ><span class="glyphicon glyphicon-log-in"></span> Login</a></li> --%>
      
    </ul>
  </div>
  </div>
</nav>

