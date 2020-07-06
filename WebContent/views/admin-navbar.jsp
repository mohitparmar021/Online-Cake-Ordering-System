   <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
	   	        	 <div class="container">
	   	        	 	<a href="#" class="navbar-brand">MOHIT CAFE</a>
                             <button class="navbar-toggler" data-toggle="collapse" id="toggler-btn"  data-target="#navbarid">
                             	<span class="navbar-toggler-icon"></span>
                             </button>
                             
                              <div class="collapse navbar-collapse" id="navbarid">
                                   	 <ul class="navbar-nav text-center ml-auto">
	   	        	 	    	        <li class="nav-item">
	   	        	 	    		         <a href="admin-dashboard.jsp" class="nav-link active ">Home</a>
	   	        	 	    	        </li>
	   	        	 	    	       <li class="nav-item dropdown ">
                                           <button class="dropbtn2">Add Component</button>
                                                 <div class="dropdown-menu dropdown-menu-left" id="myDropdown2"> 
                                                   <a class="dropdown-item "  href="add-cake.jsp">Add Cake</a>  
                                                   <a class="dropdown-item" href="add-category.jsp">Add Category</a>
                                                 </div>
                                        </li>
                                         <li class="nav-item dropdown ">
                                           <button class="dropbtn3"  style="cursor: pointer; font-size: 16px;  border: none; 
                                                 outline: none; color: white; padding: 8px 12px; background-color: inherit; font-family: inherit;">Staff Details</button>
                                                 <div class="dropdown-menu dropdown-menu-left" id="myDropdown3"> 
                                                   <a class="dropdown-item "  href="add-employee.jsp">Add Employee</a>  
                                                   <a class="dropdown-item" href="view-emp-detail.jsp">View Details</a>
                                                 </div>
                                        </li>
                                        
	   	        	 	    	        <li class="nav-item dropdown ">
                                           <button class="dropbtn1">Search</button>
                                                 <div class="dropdown-menu dropdown-menu-left" id="myDropdown1"> 
                                                   <a class="dropdown-item "  href="cake-order.jsp">Order</a>  
                                                   <a class="dropdown-item" href="advance-order.jsp">Advance Order</a>
                                                 </div>
                                        </li>
	   	        	 	    	         <li class="nav-item">
	   	        	 	    		         <a href="feedback.jsp" class="nav-link active ">Feedback</a>
	   	        	 	    	        </li>
                                        <li class="nav-item dropdown ">
                                           <button class="dropbtn" ><i class="fas fa-user-circle fa-fw"></i>  Account</button>
                                                 <div class="dropdown-menu dropdown-menu-right" id="myDropdown"> 
                                                   <a class="dropdown-item "  href="profile.jsp">Profile</a>  
                                                   <a class="dropdown-item "  href="changepassword.jsp">Change Password</a> 
                                                   <a class="dropdown-item" href="logout.jsp">Logout</a>  
                                                 </div>
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
           
           $('.dropbtn').click(function(){
                 $('#myDropdown').toggle();
           });
           $('.dropbtn1').click(function(){
                 $('#myDropdown1').toggle();
           });
           $('.dropbtn2').click(function(){
               $('#myDropdown2').toggle();
         });
           $('.dropbtn3').click(function(){
               $('#myDropdown3').toggle();
         });

 
	});

</script>