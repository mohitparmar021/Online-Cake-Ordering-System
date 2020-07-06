<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gallery</title>
<link rel="stylesheet" type="text/css" href="assets/libraryfile/bootstrap.min.css">
<script src="assets/libraryfile/jquery-3.4.1.min.js"></script> 
<style type="text/css">
	 	
	 	body
	 	{
	 		background-color: #e4b118;    
	 	}
	 	.main-card
	 	{
            margin-top: 30px;
             background-color: #e9ecef;
             padding-bottom: 61px;
	 	}
	 	.img-gallery
	 	{
	 		width: 100%;
	 		height: 180px;
	 	}

	 	  footer
	   {
     		display: -webkit-box;
  			display: -ms-flexbox;
  			display: flex;
 			position:relative;
 		    left: 0%;
 		    right:0%;
  			bottom: 0%;
 		    width:100%;
 		    height: 80px;
 		   background-color:#212529; 
       }
     footer .copyright
      {
       line-height: 1;
       font-size: 20px;
     }
    .copyright-text
     {
	   margin-top: 5px;
     }
     
	 </style>
</head>
<body>
<div class="container">
	 <div class=" main-card ">
            <%@ include file="views/navbar.jsp" %> 	
	   	       <div class="container"> 
                      <div class="jumbotron bg-info mt-3">
                      	      <h1 class="text-center">Welcome To Our Gallery</h1>
                      </div>
	   	       <div class="row mt-3">
                     <div class="col-xl-3 col-sm-3">
                     	  <div class="card">
                                <div class="card-body">
                                	    <img src="assets/images/fruit1.jpg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                	    <span>Cake</span>
                                </div>
                     	  </div>
                     </div> 
                        <div class="col-xl-3 col-sm-3">
                     	  <div class="card">
                                <div class="card-body">
                                	    <img src="assets/images/fruit2.jpg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                	    <span>Cake</span>
                                </div>

                     	  </div>
                     </div> 
                        <div class="col-xl-3 col-sm-3">
                     	  <div class="card">
                                <div class="card-body">
                                	    <img src="assets/images/fruit3.jpg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                	    <span>Cake</span>
                                </div>
                     	  </div>
                     </div> 
                        <div class="col-xl-3 col-sm-3">
                     	  <div class="card">
                                <div class="card-body">
                                	    <img src="assets/images/fruit4.jpg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                	    <span>Cake</span>
                                </div>
                     	  </div>
                     </div>                   
 	   	      </div>
 	   	      <div class="row mt-3">
	   	        	
                     <div class="col-xl-3 col-sm-3">
                     	  <div class="card">
                                <div class="card-body">
                                	    <img src="assets/images/fruit5.jpg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                	    <span>Cake</span>
                                </div>
                     	  </div>
                     </div> 
                        <div class="col-xl-3 col-sm-3">
                     	  <div class="card">
                                <div class="card-body">
                                	    <img src="assets/images/cake3.jpeg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                	    <span>Cake</span>
                                </div>
                     	  </div>
                     </div> 
                        <div class="col-xl-3 col-sm-3">
                     	  <div class="card">
                                <div class="card-body">
                                	    <img src="assets/images/fruit4.jpg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                	    <span>Cake</span>
                                </div>
                     	  </div>
                     </div> 
                        <div class="col-xl-3 col-sm-3">
                     	  <div class="card">
                                <div class="card-body">
                                	    <img src="assets/images/fruit1.jpg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                	    <span>Cake</span>
                                </div>
                     	  </div>
                     </div> 
 	   	       </div>
	   	   </div>
	 </div>
  <footer class="footer">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span class="text-white copyright-text" >Copyright © Cake Cafe 2020</span>
          </div>
        </div>
      </footer>
</div>  
</body>
</html>