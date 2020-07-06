<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
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
           padding-bottom: 50px;
	 	}
	 	.main-img
	 	{
	 		height: 350px;
	 		width: 100%;
	 		border-radius: 5px;
	 		margin-right: 10px;
	 	}
	 	.main-text
	 	{
	 		margin-top: 180px;
	 	}
	 	.img-home
	 	{
	 		width: 100%;
	 		height: 200px;
	 	}
	   .main-card-content
       {
            background-image: url(assets/images/bgmain.jpg);
	 	    background-repeat: no-repeat;
	 		background-size: 100% 100%;
	     	padding-bottom: 250px; 
	 		padding-top: 1px;
	   }
     
    .card-body-img-wedding
   {
       background-image: url(assets/images/all.jpg);
      background-repeat: no-repeat;
      background-size: 100% 100%;
  
  }
    .card-body-img-festival
   {
       background-image: url(assets/images/all.jpg);
      background-repeat: no-repeat;
      background-size: 100% 100%;

  
  }
     
       .card-body-img-kid
   {
       background-image: url(assets/images/all.jpg);
      background-repeat: no-repeat;
      background-size: 100% 100%;
  
  }
     
      .img-gallery
    {
      width: 100%;
      height: 180px;
    }
        .img-home
    {
      width: 100%;
      height: 260px;
    
    }

  .btn
  {
       margin-left: 100px;
       border-radius:0px;
        background-color: #e4b118;
  }

#wedding,#festival,#kid
{
  display: none;
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
 		   background-color:#212529; #e9ecef;
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
	 .main-heading
       {
           
       }
	
	.d1
	{
	   width:30%;
	   height:50px;
	   background-color: #e4b118;
	   margin-top: 180px;
       margin-left:250px;
       text-align:center;
	 }
	 	.d2
	{
	   width:65%;
	   height:74px;
	   background-color: #e4b118;
	    margin-top: 20px;
       margin-left:250px;
       font-size:22px;
	 		padding-top: 4px;
  
	 }
	 </style>
</head>
<body>
<div class="container">
   <div class="main-card ">
      <%@ include file="views/navbar.jsp" %> 	  

             <div class="container-Fluid">

                  <div class="main-card-content">
                
                   <div class="main-content-header ">
                      <div class="d1">
                            <h1>Delicious Cake ...</h1>
                      </div>
                      <div class="d2">
                         <p class="ml-3 ">We create each product with best quality ingredients to ensure you , <br> enjoy your every occasion. </p>
                      </div>
                    
                   
                                       
                     </div>
                  </div>
             
                 <div class="row mt-5 mb-5">
                    
                        <div class="col-xl-4 col-sm-4">
                        <div class="card">
                                <div class="card-body  card-body-img-wedding">
                                      
                                      <h1 class="text-white">Wedding Cakes</h1><br>
                                      <h2 class="text-white">Create Your Wedding Memories</h2>
                                      <button class="btn btn-sm  btn-info" id="btn-wedding">View All</button>
                                </div>                             
                        </div>
                       </div> 
                       <div class="col-xl-4 col-sm-4">
                        <div class="card">
                                 <div class="card-body card-body-img-festival ">
                                      
                                      <h1 class="text-white">Birthday Cakes</h1><br>
                                      <h2 class="text-white">Enjoy Your Birthday With Delicious Cake</h2>
                                      <button class="btn btn-sm  btn-info" id="btn-festival">View All</button>
                                </div>         
                        </div>
                       </div> 
                       <div class="col-xl-4 col-sm-4">
                        <div class="card">
                                <div class="card-body card-body-img-kid">
                                      
                                      <h1 class="text-white">Kids Cakes</h1><br>
                                      <h2 class="text-white">Customized Your Cake</h2>
                                      <button class="btn btn-sm  btn-info" id="btn-kid">View All</button>
                                </div>         
                        </div>
                       </div> 

                      
                    </div>   <!--  Ending of  view all -->

                     
                     <div id="wedding">
                           <div class="row mt-3">
                
                     <div class="col-xl-3 col-sm-3">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/w1.jpeg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                      <span>Cake</span>
                                </div>

                        </div>
                     </div> 
                        <div class="col-xl-3 col-sm-3">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/w2.jpeg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                      <span>Cake</span>
                                </div>

                        </div>
                     </div> 
                        <div class="col-xl-3 col-sm-3">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/w3.jpeg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                      <span>Cake</span>
                                </div>

                        </div>
                     </div> 
                        <div class="col-xl-3 col-sm-3">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/w4.jpeg" class="img-gallery">
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
                                      <img src="assets/images/w5.jpeg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                      <span>Cake</span>
                                </div>

                        </div>
                     </div> 
                        <div class="col-xl-3 col-sm-3">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/w6.jpeg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                      <span>Cake</span>
                                </div>

                        </div>
                     </div> 
                        <div class="col-xl-3 col-sm-3">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/w7.jpeg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                      <span>Cake</span>
                                </div>

                        </div>
                     </div> 
                        <div class="col-xl-3 col-sm-3">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/w8.jpeg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                      <span>Cake</span>
                                </div>

                        </div>
                     </div> 
                  
   
                  </div>
                     </div>        <!--  Ending of wedding -->


                     <div id="festival">
                           <div class="row mt-3">
                
                     <div class="col-xl-3 col-sm-3">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/b1.jpeg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                      <span>Cake</span>
                                </div>

                        </div>
                     </div> 
                        <div class="col-xl-3 col-sm-3">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/b3.jpeg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                      <span>Cake</span>
                                </div>

                        </div>
                     </div> 
                        <div class="col-xl-3 col-sm-3">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/b7.jpeg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                      <span>Cake</span>
                                </div>

                        </div>
                     </div> 
                        <div class="col-xl-3 col-sm-3">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/b8.jpeg" class="img-gallery">
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
                                      <img src="assets/images/b6.jpeg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                      <span>Cake</span>
                                </div>

                        </div>
                     </div> 
                        <div class="col-xl-3 col-sm-3">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/b5.jpeg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                      <span>Cake</span>
                                </div>

                        </div>
                     </div> 
                        <div class="col-xl-3 col-sm-3">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/b4.jpeg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                      <span>Cake</span>
                                </div>

                        </div>
                     </div> 
                        <div class="col-xl-3 col-sm-3">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/b2.jpeg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                      <span>Cake</span>
                                </div>

                        </div>
                     </div> 
                  
   
                  </div>
                     </div>


                     <div id="kid">
                          <div class="row mt-3">
                
                     <div class="col-xl-3 col-sm-3">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/c1.jpeg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                      <span>Cake</span>
                                </div>

                        </div>
                     </div> 
                        <div class="col-xl-3 col-sm-3">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/c2.jpeg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                      <span>Cake</span>
                                </div>

                        </div>
                     </div> 
                        <div class="col-xl-3 col-sm-3">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/c3.jpeg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                      <span>Cake</span>
                                </div>

                        </div>
                     </div> 
                        <div class="col-xl-3 col-sm-3">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/c4.jpeg" class="img-gallery">
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
                                      <img src="assets/images/c5.jpeg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                      <span>Cake</span>
                                </div>

                        </div>
                     </div> 
                        <div class="col-xl-3 col-sm-3">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/c6.jpeg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                      <span>Cake</span>
                                </div>

                        </div>
                     </div> 
                        <div class="col-xl-3 col-sm-3">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/c7.jpeg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                      <span>Cake</span>
                                </div>

                        </div>
                     </div> 
                        <div class="col-xl-3 col-sm-3">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/c8.jpeg" class="img-gallery">
                                </div>
                                <div class="card-footer">
                                      <span>Cake</span>
                                </div>

                        </div>
                     </div> 
                  
   
                  </div>
                     </div>   <!-- Ending of Kids -->


                     <div class="jumbotron mt-5" style="background-color:#b9d5f1">
                              <h1 class="text-center">Most Popular Cake From MyCake</h1>
                      </div>


                <div class="popular-cake">
 
                     <div class="row mt-5" >
                    
                        <div class="col-xl-4 col-sm-4">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/b1.jpeg" class="img-home">
                                </div>
                                <div class="card-footer">
                                     <span class="cake_info">Chocolate Cake </span><br>
                                      <span class="price">Price : Rs 900</span>
                                </div>

                        </div>
                       </div> 
                       <div class="col-xl-4 col-sm-4">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/c6.jpeg" class="img-home">
                                </div>
                                <div class="card-footer">
                                      <span class="cake_info"> Cake Regular</span><br>
                                      <span class="price">Price : Rs 700</span>
                                </div>

                        </div>
                       </div> 
                       <div class="col-xl-4 col-sm-4">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/w8.jpeg" class="img-home">
                                </div>
                                <div class="card-footer">
                                       <span class="cake_info">Chocolate Cake Regular</span><br>
                                      <span class="price">Price : Rs 1000</span>
                                </div>

                        </div>
                       </div> 

            </div>
             <div class="row mt-5 mb-5" >
                    
                        <div class="col-xl-4 col-sm-4">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/c5.jpeg" class="img-home">
                                </div>
                                <div class="card-footer">
                                     <span class="cake_info">Cake Regular</span><br>
                                      <span class="price">Price : Rs 900</span>
                                </div>

                        </div>
                       </div> 
                       <div class="col-xl-4 col-sm-4">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/w2.jpeg" class="img-home">
                                </div>
                                <div class="card-footer">
                                      <span class="cake_info">Chocolate Cake Regular</span><br>
                                      <span class="price">Price : Rs 900</span>
                                </div>

                        </div>
                       </div> 
                       <div class="col-xl-4 col-sm-4">
                        <div class="card">
                                <div class="card-body">
                                      <img src="assets/images/b8.jpeg" class="img-home">
                                </div>
                                <div class="card-footer">
                                       <span class="cake_info">Chocolate Cake Regular</span><br>
                                      <span class="price">Price : Rs 800</span>
                                </div>

                        </div>
                       </div> 

            </div>
             </div>        <!--  end of Popular cake -->







               </div>   
	   	    
	   	    









	   	    
	   	    
	   	    
      </div>
      
      <footer class="footer">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span class="text-white copyright-text" > Cake Shop Management System 2020</span>
          </div>
        </div>
      </footer>
</div> 

</body>
</html>