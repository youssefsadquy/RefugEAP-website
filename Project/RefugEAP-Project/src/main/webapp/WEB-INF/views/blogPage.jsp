<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="en">
<head>
    <title>RefugEAP - Blogs</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>

        html {
            min-width: auto;
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
            font-family: 'Oswald', sans-serif;
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
            color: black;
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
            color: black;
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
            text-decoration:none;
            font-size:18px;
        }

        .footer-slogan {
            font-size: 15px;
            max-width: 300px;
        }

        body {
            font-family: Arial, sans-serif;
            margin: 0;
        }

        .post-header {
            background-color: #023047; /*#333*/
            color: #fff;
            padding: 20px;
        }

        .post-footer {
            background-color: #f5f5f5;
            color: #333;
            padding: 10px;
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
            flex: 0 0 calc(33.33% - 20px);
            box-sizing: border-box;
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

        .containerBlog {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: space-between;
        }

        .blog-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        .blog-post {
            background-color: #f8f8f8;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
            margin-bottom: 20px;
            width: calc(33.33% - 10px);
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
            padding: 150px ;
            border: 0px solid gray;
            /*border-radius: 10px;*/
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

        .sec1 {
            background-color: white; /* add a blue background color to the team section */
            padding: 10px;
            font-size:16px;
            max-width: 1200px; /* limit the maximum width of the section to 800 pixels */
            margin: 0 auto; /* center the section horizontally within its parent container */
            color: black; /* set the text color to white */
            line-height: 2.0; /* add some spacing between lines */
            font-family: "Calibri", sans-serif;
        }

        .contribution-popup {
            display: none;
            position: fixed;
            font-size: 12px;
            font-family: Calibri, sans-serif;
            text-align: left;
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

        .contribution-popup li {
            text-align: left;
            font-family: Calibri, sans-serif;
        }

        .contribution-popup h2 {
            text-align: left;
            font-family: Calibri, sans-serif;
            font-size: 24px;
        }

        .contribution-overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 99;
        }


        .popup-text {
            font-size: 12px;
            font-family: Calibri, sans-serif;
            text-align: left;
        }

        .contribution-popup button {
            position: absolute;
            bottom: 20px;
            right: 20px;
        }

        .button-container {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }

        .button-container button {
            margin: 0 10px;
            padding: 10px 20px;
            background-color: #f2f2f2;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .button-container button.active {
            background-color: #e6e6e6;
        }

        .containerBlog {
            display: none;
        }

        .containerBlog.show {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: space-between;
        }


    </style>
    <script>
        function showSection(sectionId) {
            // Hide all sections
            const sections = document.querySelectorAll('.containerBlog');
            sections.forEach(section => {
                section.classList.remove('show');
            });

            // Show selected section
            const selectedSection = document.getElementById(sectionId);
            selectedSection.classList.add('show');

            // Set active button
            const buttons = document.querySelectorAll('.button-container button');
            buttons.forEach(button => {
                button.classList.remove('active');
                if (button.getAttribute('onclick').includes(sectionId)) {
                    button.classList.add('active');
                }
            });
        }

        function showConfirmation(event) {
            event.preventDefault(); // Prevent form submission
            var popup = document.getElementById("popup");
            var overlay = document.getElementById("overlay");
            var guidelinesCheckbox = document.getElementById("readGuidelines");

            // Check if the guidelines checkbox is checked
            if (!guidelinesCheckbox.checked) {
                alert("Please read and agree to the contribution guidelines before submitting the form.");
                return;
            }

            $.ajax({
                type: 'POST',
                url: '/addBlog',
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

        function viewGuideline() {
            var overlay = document.querySelector('.contribution-overlay');
            var popup = document.querySelector('.contribution-popup');
            overlay.style.display = 'block';
            popup.style.display = 'block';
        }

        function closeGuideline() {
            var overlay = document.querySelector('.contribution-overlay');
            var popup = document.querySelector('.contribution-popup');
            overlay.style.display = "none";
            popup.style.display = "none";
        }

        var closeButtons = document.querySelectorAll(".contribution-popup button");
        for (var i = 0; i < closeButtons.length; i++) {
            closeButtons[i].addEventListener("click", function() {
                var overlay = document.querySelector(".contribution-overlay");
                overlay.style.display = "none";
            });
        }


    </script>
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

    <img class="logo" src="https://eap4socialjustice.files.wordpress.com/2022/01/refugeap-banner-pencil.png" />
</div>

<!-- Header -->

<header>
    <div class="container">
        <div class="background-image"></div>
        <div class="overlays" style="padding-top: 70px">
            <h1>BLOG</h1>
        </div>
    </div>

</header>

<div class="button-container">
    <button class="active" onclick="showSection('blog')">Blog</button>
    <button onclick="showSection('testimonials')">Testimonials</button>
    <button onclick="showSection('case-studies')">Case Studies</button>
</div>

<main id="blog" class="containerBlog show">
    <c:forEach var="blog" items="${approvedOther}">
        <article>
            <header class="post-header">
                <h3>${blog.title}</h3>
                <p class="meta">Posted on <fmt:formatDate value="${blog.date}" pattern="dd MMMM, yyyy" />, by ${blog.name}</p>
            </header>
            <section>
                <p>${blog.content}</p>
            </section>
            <footer class="post-footer">
                <!-- Add any additional footer content here -->
            </footer>
        </article>
    </c:forEach>
</main>

<main id="testimonials" class="containerBlog">
    <c:forEach var="blog" items="${approvedTestimonials}">
        <article>
            <header class="post-header">
                <h3>${blog.title}</h3>
                <p class="meta">Posted on <fmt:formatDate value="${blog.date}" pattern="dd MMMM, yyyy" />, by ${blog.name}</p>
            </header>
            <section>
                <p>${blog.content}</p>
            </section>
            <footer class="post-footer">
                <!-- Add any additional footer content here -->
            </footer>
        </article>
    </c:forEach>
</main>

<main id="case-studies" class="containerBlog">
    <c:forEach var="blog" items="${approvedCaseStudies}">
        <article>
            <header class="post-header">
                <h3>${blog.title}</h3>
                <p class="meta">Posted on <fmt:formatDate value="${blog.date}" pattern="dd MMMM, yyyy" />, by ${blog.name}</p>
            </header>
            <section>
                <p>${blog.content}</p>
            </section>
            <footer class="post-footer">
                <!-- Add any additional footer content here -->
            </footer>
        </article>
    </c:forEach>
</main>


<div class="containerForm">
    <div class="form">
        <h2>Contribute to the Blog</h2><br>

        <label>
            <input type="checkbox" id="readGuidelines" name="readGuidelines" required="required" />
            I have read and agree to the contribution guidelines
        </label>
        <button type="button" onclick="viewGuideline()">View Guidelines</button>

        <%--@elvariable id="blog" type=""--%>
        <form:form action="/addBlog" modelAttribute="blog" onsubmit="showConfirmation(event)">
            <form:label path="name">Name:</form:label>
            <form:input path="name" required="required"/>

            <form:label path="email">Email:</form:label>
            <form:input type="email" path="email" required="required"/>

            <form:label path="affiliation">Affiliation (if any):</form:label>
            <form:input path="affiliation" required="required"/>

            <form:label path="role">Role:</form:label>
            <form:input path="role" required="required"/>

            <form:label path="typeOfContribution">Type of Contribution:</form:label>
            <form:select path="typeOfContribution" required="required">
                <form:option value="case study">Case Study</form:option>
                <form:option value="testimonial">Testimonial</form:option>
                <form:option value="other">Other</form:option>
            </form:select>

            <form:label path="title">Title:</form:label>
            <form:input path="title" required="required"/>

            <form:label path="content">Content:</form:label>
            <form:input path="content" required="required"/>


            <br>
            <br>

            <form:hidden path="status" value="pending"/>

            <input type="submit"/>
        </form:form>

    </div>
</div>


<div class="contribution-overlay">
    <div class="contribution-popup">
        <h2>Contribution Guidelines</h2>
        <p class="popup-text">We encourage contributions to our RefugEAP Network Blog in accordance with the submission guidelines below:</p>
        <ol>
            <li>
                <p class="popup-text">Ensure that your submission is relevant to the RefugEAP Network's main objective of facilitating the development and implementation of 'pathway to Higher Education' English language provision for refugee-background students (RBS), with a particular focus on English for Academic Purposes (EAP).</p>
            </li>
            <li>
                <p class="popup-text">Indicate which of the following categories your submission falls under:</p>
                <ul>
                    <li>
                        <strong>Case study</strong> - this can focus on one of more types of 'pathway to HE' English language provision, and should outline what the provision is, how it was set up, what challenges were faced along the way, how these were tackled, what the impact of the initiative was, etc.
                    </li>
                    <li>
                        <strong>Testimonial</strong> - these can be submitted by practitioners, researchers or students involved in this provision:
                        <ol>
                            <li>For practitioner/researcher testimonials, these should include name (if happy to share), role, institution, initiative involved with, reasons for getting involved, impact on themselves and on the students. </li>
                            <li>For student testimonials, these should include name (if happy to share), country of origin, future goal, what they need to study at university to reach this goal, what challenges they have faced along the way, what EAP provision they have accessed to help them reach this goal, what impact it has had on them, what advice they would give to future students</li>
                        </ol>
                    </li>
                    <li>
                        <strong>Other</strong> - this category is deliberately broad, and might cover submissions such as those which focus on one aspect relating to developing or running this type of 'pathway to HE' English language provision - perhaps related to developing suitable materials, how to build in progression opportunities, how to ensure provision is trauma-informed, how to work successfully with partner organisations, or how you might advocate for increased opportunities for RBS within your institution.
                    </li>
                </ul>
            </li>
            <li>
                <p class="popup-text">We accept posts from a range of perspectives - practitioner, student, research, policy or personal. Submissions might also span two or more perspectives, perhaps by being written in collaboration with others (e.g. student-practitioner)</p>
            </li>
            <li>
                <p class="popup-text">In order for your post to contribute to the RefugEAP Network evidence base, please ensure it is measured in its approach and supported with evidence. Depending on the perspective you are writing from, this evidence might be from academic sources, blog posts, reports, websites and other grey literature. If you are writing from a personal perspective, please include some biographical and situational context.</p>
            </li>
            <li>
                <p class="popup-text">In terms of language, please ensure that:</p>
                <ul>
                    <li>Any terminology used is accessible to non-specialists by using clear language and explaining any acronyms or technical terms used</li>
                    <li>No offensive or discriminatory language is used</li>
                </ul>
            </li>
            <li>
                <p class="popup-text">In terms of submission format:</p>
                <ul>
                    <li>This might take the form of a written blog post, a vlog, an interview, or something else - we are open to suggestions!</li>
                    <li>If your submission contains text, you can paste it directly into the form below.</li>
                </ul>
            </li>
        </ol>
        <button type="button" onclick="closeGuideline()">Close Guidelines</button>
    </div>
</div>


<!-- Popup and overlay -->
<div id="overlay" class="overlay" onclick="closePopup()"></div>
<div id="popup" class="popup">
    <p>Your blog submission has been received!</p>
    <button onclick="closePopup()">OK</button>
</div>


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
                <li><a href="/homePage">Home</a></li>
                <li><a href="/blogPage" style="text-decoration: underline">Blog</a></li>
                <li><a href="/aboutUs">About Us</a></li>
                <li><a href="/eventPage">Events</a></li>
                <li><a href="/contactUs">Contact Us</a></li>
            </ul>
        </div>
    </div>
</footer>
</body>
</html>