<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CREATE STAFF</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: url('https://english.onlinekhabar.com/wp-content/uploads/2021/03/food-delivery-5217579__340.png') no-repeat center center fixed;
        background-size: cover;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }
    form {
        background: rgba(255, 255, 255, 0.9);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        width: 300px;
        text-align: center;
    }
    fieldset {
        border: none;
    }
    input[type="text"], input[type="email"], input[type="password"] {
        width: 100%;
        padding: 8px;
        margin: 5px 0;
        border: 1px solid #ddd;
        border-radius: 5px;
    }
    input[type="submit"], input[type="reset"] {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px 20px;
        margin-top: 10px;
        border-radius: 5px;
        cursor: pointer;
    }
    input[type="submit"]:hover, input[type="reset"]:hover {
        background-color: #0056b3;
    }
    a {
        display: inline-block;
        margin-top: 10px;
        text-decoration: none;
        background-color: #28a745;
        color: white;
        padding: 10px 20px;
        border-radius: 5px;
    }
    a:hover {
        background-color: #218838;
    }
</style>
</head>
<body>

<form action="createStaff">
    <fieldset>
        <legend>CREATE STAFF</legend>
        Name: <input type="text" name="name"><br><br>
        Email: <input type="email" name="email"><br><br>
        Password: <input type="password" name="pass"><br><br>
        <input type="submit" value="CREATE STAFF">
        <input type="reset" value="CANCEL">
    </fieldset>
</form>
<a href="menu.jsp">GO TO</a>

</body>
</html>
