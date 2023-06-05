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
    <h1 class="page-title">Вакцин бүртгэлийн системд тавтай морил!</h1>

    <div class="container">
    	<a href="./burtgel.jsp">Шинээр вакцинжуулалт бүртгэх бол энд дарна уу.</a>
        <h2 class="sub-title">Вакцинжуулалтын бүртгэлээс хайх иргэний нэрийг оруулна уу</h2>
        <form method="get" action="myServlet" class="form">
            <label for="name"><b>Регистрийн дугаар </b><i>(Хоосноор хайвал бүх илэрц гарч ирнэ)</i></label>
            <input type="text" name="id" id="name">
            <input type="submit" name="submit" id="submit" value="Хайх">
        </form>
        
        
            <% ArrayList<VaccinationHistory> vh = (ArrayList<VaccinationHistory>)request.getAttribute("arrayList"); %>
    
		    <% if(vh != null) { %>
		    	<table>
		    		<tr>
			    		<th>Регистрийн дугаар</th>
			    		<th>Овог</th>
			    		<th>Нэр</th>
			    		<th>Хийлгэсэн вакцин</th>
			    		<th>Хийлгэсэн огноо</th>
		    		</tr>
		    		
		    		<%for(VaccinationHistory history : vh){ %>
			    		<tr>
			    			<td><%=history.getRd() %></td>
			    			<td><%=history.getLname() %></td>
			    			<td><%=history.getFname() %></td>
			    			<td><%=history.getVaccineName() %></td>
			    			<td><%=history.getDate() %></td>
			    		</tr>
		    		<%} %>
		    		
		    	</table>
		    	
		    <% } %>
    </div>

</body>

</html>