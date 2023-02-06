<!DOCTYPE html>
<html lang="en">
<head>
    <title>Refugee eap</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
        body,h1,h2,h3,h4,h5,h6 {
            font-family: "Lato", sans-serif
        }
        .blog p{
            color: gray;
        }
        .blog  h5{
            padding-top: 32px;
            padding-bottom: 32px;
        }
        .top{
            position: fixed;
            width: 100%;
        }
        .topnav {
            overflow: hidden;
            background-color: #29668B;

        }

        .topnav a {
            float: left;
            color: black;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
        }

        .topnav a:hover {
            background-color: #ddd;
            color: black;
        }

        .topnav a.active {
            background-color: #04AA6D;
            color: white;
        }
        .topnav-text{
            float: right;
        }
        .toplogo{
            float: left;
            padding-top: 5px;
            padding-left: 20px;
            padding-bottom: 10px;
        }
        .home{
            padding:128px 16px;
            background-image: url();
            height:500px;
            border-bottom: 2px solid black;
        }
        .link1{
            background-color: black;
            color: lightblue;
            margin: 0;
            position: absolute;
            left:20%;
        }
        .link2{
            background-color: black;
            color: lightblue;
            margin: 0;
            position: absolute;
            right:20%;
        }
        .split{
            display: grid;
            height: 750px;
        }
        .blog{
            float: left;
            width:50%;
        }
        .line{
            border-left: 2px solid black;
            height: 750px;
            position:absolute;
            left: 50%;
        }
        .Events{
            float: right;
            width:45%;
        }
        .blogp{
            float: right;
            width: 20%;
        }
        .footer{
            display: grid;
            border-top: 2px solid black;
            height: 100px;
            background-color: lightblue;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<div class="top">
    <div class="topnav">
        <div class="topnav-text">
            <a href="#" class="toplink">Home</a>
            <a href="#" class="toplink">Blog</a>
            <a href="#" class="toplink">About us</a>
            <a href="#" class="toplink">Events</a>
            <a href="#" class="toplink">Contact us</a>
        </div>
        <div class="toplogo">
            <img src="https://eap4socialjustice.files.wordpress.com/2022/01/refugeap-banner-pencil.png" width="150" height="auto">
        </div>
    </div>

</div>

<!-- Header -->
<header class="home">
    <h1>Refugee Eap</h1>
    <p>||Description||</p>
</header>

<!-- First Grid -->
<div class="split">
    <div class="second">
        <div class="blog">
            <h1>Blog</h1>
            <div>
                <h5>Blog title</h5>
                <div class="blogp"><img src="" style="height: 50%; width: 50%; background-color: black;"></div>
                <p>Blog description</p>
            </div>
            <div>
                <h5>Blog title</h5>
                <div class="blogp"><img src="" style="height: 50%; width: 50%; background-color: black;"></div>
                <p>Blog description</p>
            </div>
            <div>
                <h5>Blog title</h5>
                <div class="blogp"><img src="" style="height: 50%; width: 50%; background-color: black;"></div>
                <p>Blog description</p>
            </div>
            <div>
                <h5>Blog title</h5>
                <div class="blogp"><img src="" style="height: 50%; width: 50%; background-color: black;"></div>
                <p>Blog description</p>
            </div>
            <button class="link1">view more</button>
        </div>
        <div class="line"></div>
        <div class="Events">
            <h1>Events </h1>
            <button class="link2">view more</button>
        </div>
    </div>
</div>

<div class="footer">
    <p>Footer</p>
</div>

</body>
</html>