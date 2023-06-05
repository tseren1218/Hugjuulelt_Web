<%@ page contentType="text/html; charset=UTF-8" %>
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
        <h2 class="sub-title">Вакцинжуулалтын системд бүртгүүлнэ үү</h2>
        <form method="post" action="myServlet">
            <label for="name">Нэр</label>
            <input type="text" name="name" id="name">
            <label for="age">Нас</label>
            <input type="number" name="age" id="age">
            <label for="rd">Регистерийн дугаар</label>
            <input type="text" name="rd" id="rd">
           	<label for="VacType">Вакцины төрөл</label>
           	<select Name="vaccines" Size="3">  
  				<option> Verocell </option>  
  				<option> Moderna </option>  
  				<option> Sputnik </option>  
			</select>
			<br>
           	<input type="submit" name="submit" id="submit" value="Бүртгүүлэх">
        </form>
    </div>
</body>

</html>