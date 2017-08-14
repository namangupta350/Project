
<%--    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>--%> 
  <%@ include file="header.jsp" %> 
 
 
  
<div style="margin:top" id="myCarousel" class="carousel slide" data-ride="carousel">
 
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  
  <div class="carousel-inner" style="padding:1px;  margin:auto; width:100%; height:400px">
    <div class="item active">
      <img style="width:100%;  height:700px;" src="resources/images/car01.jpg" alt="car1">
      <h2 style=" position: absolute; top: 0;  left: 50px; width: 100%; color:white; ">Right place for Cars & accessories<br />Car Store offer you the best value</h2>
    </div>

    <div class="item">
      <img  style=" width:100%; height:700px" src="resources/images/car02.jpg" alt="Car2">
       <h2 style=" position: absolute; top: 0;  left:950px; width: 100%; color:white; ">Sign in today and get 10% <br />off on your first purchase</h2>
      
    </div>

    <div class="item">
      <img style=" width:100%; height:700px"  src="resources/images/car03.jpeg" alt="car3">
             <h2 style=" position: absolute; top: 250px;  left:10px; width: 100%; color:white; ">Free shipping and installation <br />on order of 5000 or above </h2>
      
    </div>
  </div>

  
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

</br></br></br>

<div style="margin: auto; width: 100%; padding-left: 50px; " class="img-responsive">       

  <img  style="border: 0.5px solid grey;" src="resources/images/offer01.jpg"  alt="Cinque Terre" width="400" height="200">&emsp;&emsp;
  <img  style="border: 0.5px solid grey;" src="resources/images/offer02.jpeg"  alt="Cinque Terre" width="400" height="200">&emsp;&emsp;
  <img   style="border: 0.5px solid grey;" src="resources/images/offer03.jpg" alt="Cinque Terre" width="400" height="200">

</div>
<br><br><br>
<div style="margin: auto; width: 100%; padding-left: 50px; " class="img-responsive">       

  <img  style="border: 0.5px solid grey;" src="resources/images/offer04.jpg"  alt="Cinque Terre" width="400" height="200">&emsp;&emsp;
  <img  style="border: 0.5px solid grey;" src="resources/images/offer05.jpg"  alt="Cinque Terre" width="400" height="200">&emsp;&emsp;
  <img   style="border: 0.5px solid grey;" src="resources/images/offer06.jpg" alt="Cinque Terre" width="400" height="200">

</div>
</br></br></br>


<%@ include file="footer.jsp" %> 