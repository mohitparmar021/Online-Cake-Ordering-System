 <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
	   	        	 <div class="container">
	   	        	 	<a href="#" class="navbar-brand">Cake Shop Management System</a>
                             <button class="navbar-toggler" data-toggle="collapse" id="toggler-btn"  data-target="#navbarid">
                             	<span class="navbar-toggler-icon"></span>
                             </button>
                             
                              <div class="collapse navbar-collapse" id="navbarid">
                                   	 <ul class="navbar-nav text-center ml-auto">
	   	        	 	    	        <li class="nav-item">
	   	        	 	    		         <a href="index.jsp" class="nav-link active">Home</a>
	   	        	 	    	        </li>
	   	        	 	    	        <li class="nav-item">
	   	        	 	    	            	<a href="#" class="nav-link active">Services</a>
	   	        	 	    	        </li>
	   	        	 	    	           <li class="nav-item">
	   	        	 	    	            	<a href="#" class="nav-link active">About Us</a>
	   	        	 	    	        </li>
	   	        	 	    	        <li class="nav-item">
	   	        	 	    	              	<a href="contact.jsp" class="nav-link active">Contact Us</a>
	   	        	 	    	        </li>
	   	        	 	    	        <li class="nav-item">
	   	        	 	    	             	<a href="login.jsp" class="nav-link active">Admin Login</a>
	   	        	 	    	        </li>
	   	        	 	             </ul>
                              </div>
	   	        	 	   
	   	        	 </div>
 </nav>  
	   	 
<script type="text/javascript">
	
	$('document').ready(function(){
          
           $('#toggler-btn').click(function(){
                
                 $('#navbarid').toggle();

           });


         $('#btn-wedding').click(function(){
                 
                 $('#wedding').show();
                  $('#kid').hide();
                 $('#festival').hide();
         });

         $('#btn-festival').click(function(){
                 
                 $('#festival').show();
                $('#kid').hide();
                $('#wedding').hide();
         });

         $('#btn-kid').click(function(){
                 
                 $('#kid').show();
                  $('#wedding').hide();
                $('#festival').hide();
         });   
 
	});
</script>	   	        
	   	        