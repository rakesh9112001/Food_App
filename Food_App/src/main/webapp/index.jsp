<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Foodie Delight</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }
        .hero {
            background-image: url('https://thumbs.dreamstime.com/b/hand-serves-restaurant-dish-via-smartphone-yellow-background-concept-food-delivery-online-ordering-services-home-198675626.jpg');
            height: 100vh;
            background-size: cover;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            text-align: center;
        }
        .hero-content {
            background: rgba(0, 0, 0, 0.5);
            padding: 20px;
            border-radius: 10px;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            margin-top: 20px;
            background: #ff5722;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .btn:hover {
            background: #e64a19;
        }
    </style>
</head>
<body>
    <div class="hero">
        <div class="hero-content">
            <h1>Welcome to Foodie Delight</h1>
            <p>Delicious meals delivered to your doorstep</p>
            <a href="userSignup.jsp" class="btn">Get Started</a>
        </div>
    </div>
</body>
</html>
