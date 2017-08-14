
<%--    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>--%> 
  <%@ include file="header.jsp" %> 
 
 
  
<div style="margin:top" id="myCarousel" class="carousel slide" data-ride="carousel">
 
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  
  <div class="carousel-inner" style="padding:1px; padding-left:10px; padding-right:10px; margin:auto; width:100%; height:400px">
    <div class="item active">
      <img style="width:100%;  height:700px;" src="resources/images/car01.jpg" alt="car1">
      <h2 style=" position: absolute; top: 200px;  left: 0; width: 100%; ">A Movie in the Park:<br />Kung Fu Panda</h2>
    </div>

    <div class="item">
      <img  style=" width:100%; height:700px" src="resources/images/car02.jpg" alt="Car2">
    </div>

    <div class="item">
      <img style=" width:100%; height:700px"  src="resources/images/car03.jpeg" alt="car3">
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

<div style="margin: auto; width: 100%; padding-left: 200px; " class="img-responsive">       

  <img  style="border: 0.5px solid grey;" src="resources/images/offer01.jpg" class="img-circle" alt="Cinque Terre" width="300" height="300">&emsp;&emsp;
  <img  style="border: 0.5px solid grey;" src="resources/images/offer02.jpg" class="img-circle" alt="Cinque Terre" width="300" height="300">&emsp;&emsp;
  <img   style="border: 0.5px solid grey;" src="resources/images/offer03.jpg" class="img-circle" alt="Cinque Terre" width="300" height="300">

</div>

</br></br></br>


<%@ include file="footer.jsp" %> 