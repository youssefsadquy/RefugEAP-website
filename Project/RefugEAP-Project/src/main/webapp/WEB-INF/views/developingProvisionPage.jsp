<!DOCTYPE html>
<html lang="en">
<head>
    <title>RefugEAP</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet"> <!--Google font link-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>

        html {
            min-width: auto;
        }


        body {
            margin: 0;
            font-family: 'Oswald', sans-serif;       /* google font */
            padding: 0;
        }

        h1 {
            font-size: 48px;
            text-align: center;
        }

        h2 {
            font-size: 44px;
        }

        h3 {
            font-size: 40px;
        }

        h4{
            font-size: 36px;
        }

        p {
            font-size: 23px;
        }

        .blog p{
            color: gray;
        }
        .blog  h5{
            padding-top: 32px;
            padding-bottom: 32px;
        }

        .container {
            position: relative;
        }

        .background-image {
            background-image: url(https://hbr.org/resources/images/article_assets/2020/06/Jun20_12_1202344480.jpg);
            background-size: cover;
            height: 250px;
            width: 100%;
        }

        .overlays {
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            background-color: rgba(0,0,0,0.5);
            color: white;
            text-align: center;
            z-index: 1;
        }


        /* Header Navigation Menu */
        body {
            margin: 0;                               /* Header Navigation google font */
            font-family: 'Oswald', sans-serif;
        }

        .navigator {
            background-color: #29668B;         /* Header Navigation Main Button */
            overflow: hidden;
        }


        .navigator a {
            float: right;
            display: block;
            color: #FFFFFF;               /* Header Navigation Settings text color, font size, alignment */
            text-align: center;
            padding: 30px 50px;
            text-decoration: none;
            font-size: 23px;
        }

        .logo {
            float: left;
            display: block;       /* Header Navigation Settings text color, font size, alignment */
            padding: 10px 40px;
            height: 90px;
        }

        .navigator a:hover {
            background-color: #FFFFFF;     /* Header Navigation Other Buttons hover effect */
            color: black;
        }

        .navigator a.mainB {
            background-color: #f2f2f2;     /* Header Navigation Main Button */
            color: #29668B;
            padding: 30px 130px;
        }

        h2 {
            margin-top: 0;
        }

        #events li {
            font-size: 20px;
            padding: 10px 0;
        }


        label {
            display: block;
            margin-bottom: 10px;
            font-size: 20px;
        }

        input[type="text"],
        input[type="email"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: 1px solid gray;
            font-size: 18px;
        }

        input[type="submit"] {
            background-color: black;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            border: none;
            font-size: 18px;
            cursor: pointer;
        }

        footer {
            background-color: #29668B;
            color: #fff;
            padding: 20px 0;
        }

        .footer-columns {
            max-width: 1200px;
            margin: 0 0 0 250px;
            display: flex;
            flex-wrap: wrap;
        }

        .footer-columns > div {
            flex: 1;
            text-align: left;
        }

        .footer-col-1 img {
            max-width: 150px;
            height: auto;
            margin: 30px 50px;
        }

        .social-icons {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .social-icons li {
            display: inline-block;
            margin: 0 10px;
            height: 40px;
            width: 40px;
        }

        .social-icons a {
            color: black;
        }

        .footer-links {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .footer-links li {
            display: block;
            margin-bottom: 10px;
            margin-right: 50px;
        }

        .footer-links a {
            color: black;
            text-decoration:none;
        }

        .footer-slogan {
            font-size: 15px;
            max-width: 300px;
        }

        .sec1 {
            background-color: white; /* add a blue background color to the team section */
            padding: 10px;
            max-width: 1200px; /* limit the maximum width of the section to 800 pixels */
            margin: 0 auto; /* center the section horizontally within its parent container */
            color: black; /* set the text color to white */
            line-height: 2.0; /* add some spacing between lines */
            font-family: "Times New Roman";
        }

        .sec2 {
            background-color: white; /* add a blue background color to the team section */
            padding: 10px;
            max-width: 1200px; /* limit the maximum width of the section to 800 pixels */
            margin: 0 auto; /* center the section horizontally within its parent container */
            color: black; /* set the text color to white */
            line-height: 2.0; /* add some spacing between lines */
            font-family: "Times New Roman";
        }
        .sec3 {
            background-color: white; /* add a blue background color to the team section */
            padding: 10px;
            max-width: 1600px; /* limit the maximum width of the section to 800 pixels */
            max-height: 1000px;
            margin: 0 auto; /* center the section horizontally within its parent container */
            margin-bottom: 60px;
            color: black; /* set the text color to white */
            line-height: 2.0; /* add some spacing between lines */
        }

        #evidence_base_title {
            background-color: white; /* add a blue background color to the team section */
            padding: 10px;
            max-width: 1600px; /* limit the maximum width of the section to 800 pixels */
            max-height: 1000px;
            margin: 0 auto; /* center the section horizontally within its parent container */
            margin-bottom: 20px;
            color: black; /* set the text color to white */
            line-height: 2.0; /* add some spacing between lines */

        }



        li {
            font-size: 20px; /* set the font size to 20 pixels */
        }

        figure {
            display: flex; /* display the image and caption as a flex container */
            flex-direction: column; /* stack the image on top of the caption */
            align-items: center; /* center the contents horizontally */
            text-align: center; /* center the caption text */
        }

        figcaption {
            margin-top: 10px; /* add some space between the image and caption */
            font-weight: bold; /* make the caption text bold */
        }


    </style>
</head>
<body>

<!-- Navbar -->
<div class="navigator">
    <a href="/">Home</a>
    <a href="/blogPage">Blog</a>
    <a href="/aboutUs" >About Us</a>
    <a href="/eventPage">Events</a>
    <a href="/contactUs">Contacts</a>
    <img class="logo" src="https://eap4socialjustice.files.wordpress.com/2022/01/refugeap-banner-pencil.png" />
</div>

<!-- Header -->

<header>
    <div class="container">
        <div class="background-image"></div>
        <div class="overlays" style="padding-top: 70px">
            <h1>Developing Provision</h1>
        </div>
    </div>

</header>


<section class="sec1">

    <p>Developing and offering sanctuary provision isn't something to rush into. While it would be very helpful if more EAP provision were to be made available to refugee-background students across the UK, it is important to give careful consideration to what this means in practice, and whether your organisation can dedicate the time and resources to this before taking the plunge. It is useful to frame this not only in terms of whether you are able to make provision accessible to students, but also whether you are able to offer appropriate support whilst they are with you (and it is often the latter that can be overlooked).
        Below, we have compiled a number of tips and considerations for anyone thinking of setting up sanctuary provision, starting with a list of general tips, and moving on to more EAP-specific considerations. If you would like to suggest any additional tips to add to these lists, please let us know via our <a href="/contactUs" target=”_blank” >Contact Us</a> form .
    </p>
</section>




<footer>
    <div class="footer-columns">
        <div class="footer-col-1">
            <img src="https://eap4socialjustice.files.wordpress.com/2022/01/refugeap-banner-pencil.png" alt="RefugEAP Logo">
            <p class="footer-slogan">The RefugEAP Network's overarching objective is to facilitate the development of widening participation initiatives enabling refugee-background students to access HE via English language pathways, with a particular focus on English for Academic Purposes. </p>
        </div>
        <div class="footer-col-2">
            <p>Follow us on</p>
            <ul class="social-icons">
                <li><a href="https://www.facebook.com/LeicesterUniversityOfSanctuary/" target="_blank"><i class="fa fa-facebook fa-2x"></i></a></li>
                <li><a href="https://twitter.com/EapForSJ" target="_blank"><i class="fa fa-twitter fa-2x"></i></a></li>
                <li><a href="https://www.instagram.com/" target="_blank"><i class="fa fa-instagram fa-2x"></i></a></li>
            </ul>
        </div>
        <div class="footer-col-3">
            <p>Useful Links</p>
            <ul class="footer-links">
                <li><a href="/">Home</a></li>
                <li><a href="/blogPage">Blog</a></li>
                <li><a href="/aboutUs">About Us</a></li>
                <li><a href="/eventPage">Events</a></li>
                <li><a href="/contactUs">Contact Us</a></li>
            </ul>
        </div>
    </div>
</footer>
</body>
</html>