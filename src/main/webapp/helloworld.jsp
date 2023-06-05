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
        <h2 class="sub-title">Вакцинжуулалтын бүртгэлээс хайх иргэний нэрийг оруулна уу</h2>
        <form method="get" action="myServlet">
            <label for="name">Нэр</label>
            <input type="text" name="name" id="name">
            <input type="submit" name="submit" id="submit" value="Хайх">
        </form>
    </div>
</body>

</html>