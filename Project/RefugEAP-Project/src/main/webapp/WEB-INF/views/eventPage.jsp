<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="en">
<head>
    <title>RefugEAP - Events</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#calendar').fullCalendar({
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,agendaWeek,agendaDay'
                },
                defaultDate: new Date(),
                editable: false,
                eventLimit: true,
                events: function(start, end, timezone, callback) {
                    $.ajax({
                        url: '/api/events',
                        dataType: 'json',
                        data: {
                            start: start.unix(),
                            end: end.unix()
                        },
                        success: function(data) {
                            callback(data);
                            applyEventStyles(data);
                        }
                    });
                },
                dayClick: function(date, jsEvent, view) {
                    // Remove the existing 'selected-date' class
                    $('td.fc-day').removeClass('selected-date');
                    // Add the 'selected-date' class to the clicked date
                    $(jsEvent.target).closest('td.fc-day').addClass('selected-date');
                    fetchEvents(date.format());
                },
            });
        });

        function fetchEvents(date) {
            $.ajax({
                url: '/api/events?date=' + date,
                dataType: 'json',
                success: function(data) {
                    displayEvents(data);
                }
            });
        }

        function applyEventStyles(events) {
            events.forEach(function(event) {
                $('td[data-date="' + event.start.slice(0, 10) + '"]').addClass('has-event');
            });
        }

        function displayEvents(events) {
            var eventList = $('#event-list');
            eventList.empty();

            if (events.length > 0) {
                events.forEach(function(event) {
                    eventList.append('<div class="event-item"><strong>' + event.event_title + '</strong><br/>' +
                        event.event_more_info + '<br/>' +
                        'Date: ' + event.formattedDate + '<br/>' +
                        'Time: ' + event.formattedTime + '</div><hr/>');
                });
            } else {
                eventList.append('<div class="event-item"><strong>No events found on this date.</strong></div><hr/>');
            }
        }


        <%-- Shows confirmation of submission --%>
        function showConfirmation(event) {
            event.preventDefault(); // Prevent form submission
            var popup = document.getElementById("popup");
            var overlay = document.getElementById("overlay");

            $.ajax({
                type: 'POST',
                url: '/addEvent',
                data: $('form').serialize(),
                success: function(response) {
                    // Show the popup message after the AJAX request is complete
                    popup.style.display = "block";
                    overlay.style.display = "block";
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    console.log('AJAX request failed: ' + textStatus + ', ' + errorThrown);
                }
            });
        }


        function closePopup() {
            var popup = document.getElementById("popup");
            var overlay = document.getElementById("overlay");
            popup.style.display = "none";
            overlay.style.display = "none";
            location.reload(); // Reload the page to clear form data
        }

    </script>


    <style>

        html {
            min-width: auto;
        }


        body {
            margin: 0;
            font-family: 'Calibri', sans-serif;       /* google font */
            padding: 0;
        }

        h1 {
            font-size: 48px;
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
            font-size: 18px;
        }



        .blog p{
            color: gray;
        }
        .blog  h5{
            padding-top: 32px;
            padding-bottom: 32px;
        }

        .toplogo{
            float: left;
            padding-top: 5px;
            padding-left: 20px;
            padding-bottom: 10px;
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
            font-family: 'Calibri', sans-serif;
        }

        .navigator {
            background-color: #29668B;
            /*position: relative;*/
            overflow: hidden;
        }

        .navigator a {
            float: right;
            /*display: block;*/
            color: #FFFFFF;
            text-align: center;
            padding: 30px 20px;
            text-decoration: none;
            font-size: 18px;
        }

        .logo {
            float: left;
            display: block;
            padding: 10px 40px;
            height: 80px;
        }

        .navigator a:hover {
            background-color: #FFFFFF;
            color: black;
        }

        .navigator a.mainB {
            background-color: #f2f2f2;
            color: #29668B;
            padding: 30px 30px;
        }

        /* Dropdown menu styles */
        .dropdown {
            float: right;
            overflow: hidden;
        }

        .dropdown .dropbtn {
            cursor: pointer;
            font-size: 19px;
            border: none;
            outline: none;
            color: #FFFFFF;
            padding: 30px 30px;
            background-color: inherit;
            font-family: inherit;
            margin: 0;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 9999;
        }

        .dropdown-content a {
            float: none;
            color: #29668B;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
        }

        .dropdown-content a:hover {
            background-color: #ddd;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .dropdown:hover .dropbtn {
            background-color: #FFFFFF;
            color: #29668B;
        }

        h2 {
            margin-top: 0;
        }

        a.link {
            display: block;
            margin-top: 20px;
            text-align: right;
            color: blue;
            text-decoration: none;
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
            max-height: 400px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: 1px solid gray;
            font-size: 18px;
            overflow-y: auto;
            resize: none;
        }

        .expanding-textarea {
            min-height: 100px;
            max-height: 400px;
            width: 100%;
            box-sizing: border-box;
            padding: 6px 12px;
            resize: none;
            overflow-y: auto;
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
            color: white;
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
            text-decoration:none;
            font-size:18px;
        }

        .footer-slogan {
            font-size: 15px;
            max-width: 300px;
        }


        header h1 {
            margin: 0;
        }

        nav ul {
            margin: 0;
            padding: 0;
            list-style: none;
        }

        nav ul li {
            display: inline-block;
            margin-right: 20px;
        }

        nav ul li a {
            color: #fff;
            text-decoration: none;
        }

        main {
            margin: 20px;
        }

        article {
            border: 1px solid #ccc;
            padding: 20px;
            width: 50%;
        }

        article header {
            margin: 0 0 20px 0;
        }

        article h2 {
            margin: 0;
        }

        article p.meta {
            margin: 0 0 10px 0;
            font-style: italic;
            font-size: 0.8em;
        }

        article footer {
            margin: 20px 0 0 0;
        }

        article p.tags {
            font-style: italic;
            font-size: 0.8em;
        }

        article p.tags a {
            text-decoration: none;
            color: #333;
            border: 1px solid;
        }

        .blog-post h2 {
            font-size: 26px;
            margin-top: 0;
        }

        .blog-post h3 {
            font-size: 12px;
            margin-top: 0;
        }
        .blog-post p {
            font-size: 16px;
        }

        .containerForm {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: space-between;
            margin-bottom: 50px; /* add margin bottom */
        }


        .form {
            width: 100%;
            margin: 0 auto;
            border: 0px solid gray;
            /*border-radius: 10px;*/
            padding: 25px 150px;
        }


        #calendar-container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }

        /* Adjust the font size of the calendar */
        .fc {
            font-size: 14px;
        }

        .fc-today-button,
        .fc-month-button,
        .fc-agendaWeek-button,
        .fc-agendaDay-button {
            text-transform: capitalize;
        }

        /* Adjust the size of the calendar's title */
        .fc-header-title h2 {
            font-size: 24px;
        }

        /* Adjust the size of the calendar's buttons */
        .fc-header-right .fc-button {
            font-size: 14px;
        }

        .selected-date {
            background-color: #3399ff;
            color: white;
        }

        .event-item {
            background-color: #f8f8f8;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center; /* Add this line to center the text */
        }

        .event-item strong {
            font-size: 26px;
        }

        .event-item p {
            font-size: 16px;
            margin-top: 0;

        }


        .has-event {
            background-color: rgba(255, 0, 0, 0.8); /* Change the background color */
            position: relative;
        }

        .has-event::before {
            content: '';
            width: 6px;
            height: 6px;
            background-color: black; /* Change the dot color */
            border-radius: 50%;
            position: absolute;
            bottom: 3px;
            right: 3px;
        }


        .event-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }
        .event {
            width: 400px;
            margin: 20px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .event-title {
            font-size: 24px;
            margin-top: 0;
        }
        .event-datetime {
            font-style: italic;
            margin-bottom: 10px;
        }
        .event-info {
            margin-bottom: 0;
        }

        .popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: #fff;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            text-align: center;
            z-index: 100;
        }

        .overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 99;
        }

        #submitting-screen {
            display: none;
            position: fixed;
            z-index: 1000;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            color: #fff;
            text-align: center;
            font-size: 20px;
            padding-top: 20px;
            align-items: center;
            justify-content: center;
            font-family: Calibri, sans-serif;
        }

        .lds-dual-ring {
            display: inline-block;
            width: 64px;
            height: 64px;
        }
        .lds-dual-ring:after {
            content: " ";
            display: block;
            width: 46px;
            height: 46px;
            margin: 1px;
            border-radius: 50%;
            border: 5px solid #fff;
            border-color: #fff transparent #fff transparent;
            animation: lds-dual-ring 1.2s linear infinite;
        }
        @keyframes lds-dual-ring {
            0% {
                transform: rotate(0deg);
            }
            100% {
                transform: rotate(360deg);
            }
        }

        /* CSS style for tablet device responsiveness */
        @media screen and (max-width: 1200px) {

            h1 {
                font-size: 24px;
            }

            h2 {
                font-family: 'Calibri', sans-serif;
                font-size: 35px;
            }

            h3 {
                font-size: 18px;
            }

            h4{
                font-size: 16px;
            }

            p {
                font-size: 12px;
            }

            li {
                font-size: 12px; /* set the font size to 20 pixels */
            }
            .container {
                position: relative;
            }

            .background-image {
                background-image: url(https://hbr.org/resources/images/article_assets/2020/06/Jun20_12_1202344480.jpg);
                background-size: cover;
                height: 200px;
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


            .navigator {
                background-color: #29668B;         /* Header Navigation Main Button */
                overflow: hidden;
                display: flex;
                flex-wrap: wrap;
                justify-content: right;
                padding: 10px 0 10px 0;
                flex-direction: row-reverse;

            }


            .navigator a {
                float: right;
                color: #FFFFFF;               /* Header Navigation Settings text color, font size, alignment */
                text-align: center;
                padding: 7px 10px;
                text-decoration: none;
                font-size: 12px;
            }

            .logo {
                position: absolute;
                top: 0;
                left: 0;
                transform: none;
                padding: 10px;
                height: 50px;
                margin: 0;
            }

            .navigator a:hover {
                background-color: #FFFFFF;     /* Header Navigation Other Buttons hover effect */
                color: black;

            }

            .navigator a.mainB {
                background-color: #f2f2f2;     /* Header Navigation Main Button */
                color: #29668B;
                padding: 7px 20px;
            }

            .dropdown {
                float: right;
                overflow: hidden;

            }

            .dropdown .dropbtn {
                cursor: pointer;
                font-size: 12px;
                border: none;
                outline: none;
                color: #FFFFFF;
                padding: 7px 10px;
                background-color: inherit;
                font-family: inherit;
                margin: 0;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 4px 8px 0px rgba(0, 0, 0, 0.2);
                z-index: 9999;
            }

            .dropdown-content a {
                float: none;
                color: black;
                padding: 6px 8px;
                text-decoration: none;
                display: block;
                text-align: left;
            }

            .dropdown-content a:hover {
                background-color: #ddd;
            }

            .dropdown:hover .dropdown-content {
                display: block;
            }

            .dropdown:hover .dropbtn {
                background-color: #FFFFFF;
                color: #29668B;
            }

            h2 {
                margin-top: 0;
            }

            #events li {
                font-size: 10px;
                padding: 5px 0;
            }


            label {
                display: block;
                margin-bottom: 5px;
                font-size: 10px;
            }

            footer {
                background-color: #29668B;
                color: #fff;
                padding: 10px 0;
            }

            .footer-columns {
                max-width: 600px;
                margin: 0 0 0 250px;
                display: flex;
                flex-wrap: wrap;
            }

            .footer-columns > div {
                flex: 1;
                text-align: left;
            }

            .footer-col-1 img {
                max-width: 75px;
                height: auto;
                margin: 7px 12px;
            }

            .social-icons {
                list-style: none;
                padding: 0;
                margin: 0;
            }

            .social-icons li {
                display: inline-block;
                margin: 0 5px;
                height: 20px;
                width: 20px;
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
                margin-bottom: 5px;
                margin-right: 5px;
            }

            .footer-links a {
                text-decoration:none;
                font-size:10px;
            }

            .footer-slogan {
                font-size: 7px;
                max-width: 100px;
            }

            .containerForm {
                display: flex;
                height: 860px;
            }

        }



        /* CSS style for mobile responsiveness */
        @media screen and (max-width: 600px) {

            h1 {
                font-size: 24px;
            }

            h2 {
                font-family: 'Calibri', sans-serif;
                font-size: 20px;
            }

            h3 {
                font-size: 18px;
            }

            h4{
                font-size: 16px;
            }

            p {
                font-size: 10px;
            }

            .blog p{
                color: gray;
            }
            .blog  h5{
                padding-top: 12px;
                padding-bottom: 12px;
            }

            .container {
                position: relative;
            }

            .background-image {
                background-image: url(https://hbr.org/resources/images/article_assets/2020/06/Jun20_12_1202344480.jpg);
                background-size: cover;
                height: 200px;
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


            .navigator {
                background-color: #29668B;         /* Header Navigation Main Button */
                overflow: hidden;
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
                /*position: relative;*/
                padding: 40px 0 0 0;
                flex-direction: row-reverse;
            }


            .navigator a {
                float: right;
                color: #FFFFFF;               /* Header Navigation Settings text color, font size, alignment */
                text-align: center;
                padding: 7px 10px;
                text-decoration: none;
                font-size: 9px;
                /*position: relative;*/
            }

            .logo {
                position: absolute;
                top: 0;
                left: 50%;
                transform: translateX(-50%);
                height: 40px;
                padding: 10px 0;
            }

            .navigator a:hover {
                background-color: #FFFFFF;     /* Header Navigation Other Buttons hover effect */
                color: black;
            }

            .navigator a.mainB {
                background-color: #f2f2f2;     /* Header Navigation Main Button */
                color: #29668B;
                padding: 7px 20px;
            }

            .dropdown .dropbtn {
                cursor: pointer;
                font-size: 9px;
                border: none;
                outline: none;
                color: #FFFFFF;
                padding: 5px 10px;
                background-color: inherit;
                font-family: inherit;
                margin: 0;
                z-index: 2;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 4px 8px 0px rgba(0, 0, 0, 0.2);
                z-index: 2;
            }

            .dropdown-content a {
                float: none;
                color: black;
                padding: 6px 8px;
                text-decoration: none;
                display: block;
                text-align: left;
                z-index: 2;
            }

            h2 {
                margin-top: 0;
            }

            #events li {
                font-size: 10px;
                padding: 5px 0;
            }


            label {
                display: block;
                margin-bottom: 5px;
                font-size: 10px;
            }


            footer {
                background-color: #29668B;
                color: #fff;
                padding: 10px 0;
            }

            .footer-columns {
                max-width: 600px;
                margin: 0 0 0 30px;
                display: flex;
                flex-wrap: wrap;
            }

            .footer-columns > div {
                flex: 1;
                text-align: left;
            }

            .footer-col-1 img {
                max-width: 75px;
                height: auto;
                margin: 7px 12px;
            }

            .social-icons {
                list-style: none;
                padding: 0;
                margin: 0;
            }

            .social-icons li {
                display: inline-block;
                margin: 0 5px;
                height: 20px;
                width: 20px;
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
                margin-bottom: 5px;
                margin-right: 5px;
            }

            .footer-links a {
                text-decoration:none;
                font-size:10px;
            }

            .footer-slogan {
                font-size: 7px;
                max-width: 100px;
            }

            li {
                font-size: 10px; /* set the font size to 20 pixels */
            }

            .containerForm {
                display: flex;
                flex-wrap: wrap;
                gap: 20px;
                justify-content: space-between;
                margin-bottom: 50px; /* add margin bottom */
                height:660px;
            }


            .form {
                width: 90%;
                margin: 0 auto;
                border: 0px solid gray;
                /*border-radius: 10px;*/
                padding: 25px 20px;
            }



        }


    </style>
</head>
<body>

<!-- Navbar -->
<div class="navigator">
    <a href="/" class="mainB">Home</a>
    <a href="/aboutUs">About</a>

    <!-- Existing provision dropdown menu -->
    <div class="dropdown">
        <button class="dropbtn">Existing Provision
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="/englishLP">English Language Provision</a>
            <a href="/refugEAP">RefugEAP Programme</a>
        </div>
    </div>

    <!-- Practitioner resources dropdown menu -->
    <div class="dropdown">
        <button class="dropbtn">Practitioner Resources
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="/developingProvisionPage">Developing provision</a>
            <a href="/evidenceBasePage">Evidence Base</a>
            <a href="/resourcesPage">Practical Resources</a>
        </div>
    </div>

    <!-- Blog dropdown menu -->
    <div class="dropdown">
        <button class="dropbtn" href="/blogPage">Blog
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="/blogPage">Case Studies</a>
            <a href="/blogPage">Testimonials</a>
            <a href="/blogPage">Other Blog Contributions</a>
        </div>
    </div>

    <a href="/eventPage">Events</a>

    <!-- Contact Us dropdown menu -->
    <div class="dropdown">
        <button class="dropbtn">Connect
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="/contactUs">Contact Us</a>
            <a href="/joinUs">Join Us</a>
            <a href="/directoryPage">Directory</a>
        </div>
    </div>

    <img class="logo" src="${pageContext.request.contextPath}/images/Logo.jpg" alt="RefugEAP Logo" />
</div>

<!-- Header -->

<header>
    <div class="container">
        <div class="background-image"></div>
        <div class="overlays" style="padding-top: 70px">
            <h1>EVENTS</h1>
        </div>
    </div>

</header>
<!-- Calendar Grid -->
<div id="calendar-container">
    <div id="calendar"></div>
</div>
<!-- Selected events -->
<div id="event-list"></div>

<!--Upcoming events List -->

<div class="event-list">
    <h2>Upcoming Events</h2>
    <c:forEach var="event" items="${acceptedEvents}">
        <div class="event">
            <h3 class="event-title">${event.getEvent_title()}</h3>
            <p class="event-datetime">${event.getFormattedDate()} at ${event.getFormattedTime()}</p>
            <p class="event-info">${event.getEvent_more_info()}</p>
        </div>
    </c:forEach>
</div>

<div>
    <div class="containerForm">
        <div class="form">
            <h2>Submit Your Event Here</h2><br>

            <%-- Form to take in an event --%>
            <%--@elvariable id="event" type="event"--%>
            <form:form action="/addEvent" modelAttribute="event" id="event-form">

                <form:hidden path="event_id" />

                <form:label path="name">Name: </form:label>
                <form:input path="name" required="required" />

                <form:label path="email">Email: </form:label>
                <form:input type="email" path="email" required="required" />

                <form:label path="event_title">Event Title: </form:label>
                <form:input path="event_title" required="required" />

                <form:label path="event_datetime">Event Date and Time (dd-MM-yyyy HH:mm): </form:label>
                <form:input type="datetime-local" path="event_datetime" required="required" />

                <form:label path="event_more_info">Event More Info: </form:label>
                <form:textarea path="event_more_info" rows="4" required="required" class="expanding-textarea" />

                <input type="submit"/>
                <div id="submitting-screen">
                    <div class="lds-dual-ring"></div>
                    <p>Please wait while your event is being submitted.</p>
                </div>

            </form:form>
        </div>
    </div>


</div>

<!-- Popup and overlay -->
<div id="overlay" class="overlay" onclick="closePopup()"></div>
<div id="popup" class="popup">
    <p>Your event submission has been received!</p>
    <button onclick="closePopup()">OK</button>
</div>


<footer>
    <div class="footer-columns">
        <div class="footer-col-1">
            <img src="${pageContext.request.contextPath}/images/Logo.jpg" alt="RefugEAP Logo" />
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
                <li><a href="/eventPage" style="text-decoration: underline">Events</a></li>
                <li><a href="/contactUs">Contact Us</a></li>
            </ul>
        </div>
    </div>
</footer>

<script>
    const submittingScreen = document.getElementById('submitting-screen');
    const form = document.getElementById('event-form');

    form.addEventListener('submit', function (event) {
        event.preventDefault(); // Prevent default form submission
        submittingScreen.style.display = 'flex'; // Display the loading screen immediately

        const formData = new FormData(form);

        fetch('/addEvent', {
            method: 'POST',
            body: formData
        })
            .then(response => {
                if (response.ok) {
                    submittingScreen.style.display = 'none'; // Hide the loading screen after submission
                    const popup = document.getElementById('popup');
                    popup.style.display = 'block';
                    form.reset();
                } else {
                    submittingScreen.style.display = 'none'; // Hide the loading screen on error
                    alert('An error occurred while submitting the event.');
                }
            })
            .catch(error => {
                submittingScreen.style.display = 'none'; // Hide the loading screen on error
                alert('An error occurred while submitting the event.');
                console.error(error);
            });
    });

    document.addEventListener('DOMContentLoaded', () => {
        const expandingTextareas = document.querySelectorAll('.expanding-textarea');
        expandingTextareas.forEach(textarea => {
            textarea.addEventListener('input', expandTextarea);
        });
    });

    function expandTextarea(e) {
        const target = e.target;
        target.style.height = 'auto';
        target.style.height = target.scrollHeight + 'px';
    }
</script>

</body>
</html>