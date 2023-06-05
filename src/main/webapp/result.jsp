<%@ page contentType="text/html; charset=UTF-8" %>
	<%@page import="java.util.ArrayList" %>
	<%@page import="jspdemo.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Вакцин бүртгэлийн систем</title>
    <link rel="stylesheet" href="./style.css">
</head>

<body>

	 <% 
        // Retrieve the ArrayList from the request
        ArrayList<VaccinationHistory> list = (ArrayList<VaccinationHistory>)request.getAttribute("arrayList");
    %>
    <h1 class="page-title">Вакцин бүртгэлийн системд тавтай морил!</h1>

    <div class="container">
        <ul>
        	<% for(VaccinationHistory vacHistory : list) {%>
        		<li><%=vacHistory.getFname() %></li>
        	<%} %>
        </ul>
    </div>
</body>

</html>