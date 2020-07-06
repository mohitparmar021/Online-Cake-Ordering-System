<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search By Date</title>
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
            height: 627px;
            padding-bottom: 100px;    
	 	}
        .main-card-content
    {
      padding-bottom: 35px;
    }

	   .dropbtn ,.dropbtn1,.dropbtn2
         {
         cursor: pointer;
         font-size: 16px;  
         border: none;
         outline: none;
         color: white;
         padding: 8px 12px;
         background-color: inherit;
         font-family: inherit;
         margin: 0;

        }	
       .main-card-content
       {

	     }
       .btn-search
       {
        border-radius: 0px;
        width: 20%;
        font-size: 20px;
        padding: 8px;
        margin-left: 10px;

       }
      
      .btn-print{
          border-radius: 0px;
      }
      
     
	 </style>s
</head>
<body>

<div class="container">
	
	 <div class="main-card ">
           <%@ include file="views/admin-navbar.jsp" %>	
	   	       <div class="main-card-content container">
	   	       	 <div id="print-content">	   	       	        	   	       	          
                   <h2 class="mt-2">Search Details</h2>     
                     <table border="2px" class="table  mt-3 table-responsive-sm table-responsive-lg">
                                      <thead>
                                         <tr class="bg-info text-white">
                                            <th>Ad. Order Id</th>
                                            <th>Customer Name</th>
                                            <th>Item</th>
                                            <th>Mobile No.</th>                                    
                                            <th>Total</th>
                                            <th>Due Price</th>
                                            <th>Order Status</th>
                                            <th>Action</th>
                                            <th>Action</th>
                                         </tr>
                                      </thead>
                                      <tbody>
                    <%
                                 try
                                {
                                	 
                                
                                      ResultSet rs=(ResultSet)request.getAttribute("data");
                                      double sum=0.0,due=0.0;
                               	   while(rs.next())
                               	   {
                                		 sum=sum+ rs.getFloat("total_price");
                                		 due=due+ rs.getFloat("due_price");
                               		  %>
                                          
                                             <tr>
                                                   <td><%=rs.getInt("ad_id") %></td>
                                                   <td ><%=rs.getString("c_name") %></td>
                                                   <td ><%=rs.getString("cake_name") %></td>   
                                                   <td><%=rs.getLong("mobile") %></td>                                           
                                                   <td >Rs. <%=rs.getFloat("total_price") %></td>
                                                   <td >Rs. <%=rs.getFloat("due_price") %></td>
                                                   <td ><%=rs.getString("order_status") %></td>
                                                   <td><a href="updateorder.jsp?id=<%=rs.getInt(1) %>" >Update</a></td> 
                                                   <td><a href="viewadvanceorder.jsp?id=<%=rs.getInt("ad_id") %>" >View Detail</a></td>
                                             </tr>
                                           
                                   
                 
                               		 <%
                               	   }
                               	 %>
                               	  </tbody>
                      
                                   </table>
                                   <h3>Total Amount : Rs. <%=sum %></h3>
                                    <h3>Due Amount : Rs. <%=due %></h3>
                               	 <%
                               	 }
                                catch(Exception e)
                                {
                                	System.out.println(e);
                                }
                                 
                                %>
                               
                              
	   	       	   
	   	       	 </div>
                               <button onclick="printOrder('print-content')" class="btn btn-info mt-3 btn-print">Print Receipt</button>    
	            </div>	 	
	 </div>
</div>    
<script type="text/javascript">
	
  function printOrder(paravalue) 
  {
     var backup= document.body.innerHTML;
     var divcontent=document.getElementById(paravalue).innerHTML;
     document.body.innerHTML=divcontent;
     window.print();
     document.body.innerHTML=backup;
  }


</script>
</body>
</html>
</html>