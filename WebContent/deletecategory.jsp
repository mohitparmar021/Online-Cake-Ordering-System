<%@page import="java.sql.Statement"%>
<%@page import="cos.dbconnection.MyConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("id"));
Connection con=MyConnection.getMyConnection();
 try
 { 
	 Statement stmt=con.createStatement();
	 String query="delete from add_new_category where category_id='"+id+"'";
	 stmt.executeUpdate(query);
	 
	 RequestDispatcher rd= request.getRequestDispatcher("add-category.jsp");
	 rd.forward(request, response);
 }
 catch(Exception e)
 {
	 response.getWriter().print(e);
 }
%>
</body>
</html>