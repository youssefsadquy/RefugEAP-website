<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">
<head>
    <title>RefugEAP - Blog Management</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
            font-size: 23px;
        }

        .blog p{
            color: gray;
        }
        .blog  h5{
            padding-top: 32px;
            padding-bottom: 32px;
        }

        /* Header Navigation Menu */
        body {
            margin: 0;                               /* Header Navigation google font */
            font-family: 'Calibri', sans-serif;
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

        .form {
            width: 66%;
            margin: 0 auto;
            padding: 150px ;
            border: 0px solid gray;
            /*border-radius: 10px;*/
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-size: 20px;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        select,
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

        .social-icons li {
            display: inline-block;
            margin: 0 10px;
            height: 40px;
            width: 40px;
        }

        .social-icons a {
            color: black;
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

        table {
            border-collapse: collapse;
            border-spacing: 0;
            width: 90%;
            border: 1px solid #ddd;
            margin-bottom: 25px;
        }

        th, td {
            border: 1px solid black;
            text-align: left;
            padding: 8px;
        }

        .center {
            margin-left: auto;
            margin-right: auto;
        }
        caption {
            font-size: 2em;
            font-weight: bold;
            padding-bottom: 15px;
        }

    </style>
</head>
<body>

<!-- Navbar -->
<div class="navigator">
    <a href="/">Home</a>
    <a href="/admin/adminPortal">Users Management</a>
    <a href="/admin/blogManagement"  class="mainB">Blog Management</a>
    <a href="/admin/eventManagement">Events Management</a>
    <a href="/logout">Logout</a>
    <img class="logo" src="https://eap4socialjustice.files.wordpress.com/2022/01/refugeap-banner-pencil.png" />
</div>

<div>
    <div class="form">
        <h4>Add New Blog Post</h4>
        <form method="post" action="${pageContext.request.contextPath}/admin/blog/add">
            <label for="name">Name:</label> <input type="text" id="name" name="name" required />
            <label for="email">Email:</label> <input type="email" id="email" name="email" required />
            <label for="affiliation">Affiliation:</label> <input type="text" id="affiliation" name="affiliation" required />
            <label for="role">Role:</label> <input type="text" id="role" name="role" required />
            <label for="typeOfContribution">Type of Contribution:</label>
            <select id="typeOfContribution" name="typeOfContribution">
                <option value="case study">Case Study</option>
                <option value="testimonial">Testimonial</option>
                <option value="other">Other</option>
            </select>
            <label for="title">Title:</label> <input type="text" id="title" name="title" required />
            <label for="content">Content:</label> <input type="text" id="content" name="content" required />
            <input type="submit" value="Add New Post" title="Add Post" />
        </form>
    </div>
</div>

<table class="center">
    <caption>Pending Blog Posts</caption>
    <thead>
    <tr>
        <th>ID</th>
        <th>Author</th>
        <th>Email</th>
        <th>Affiliation</th>
        <th>Role</th>
        <th>Type Of Contribution</th>
        <th>Date Posted</th>
        <th>Title</th>
        <th>Content</th>
        <th>Action</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${blogs}" var="blog">
        <tr>
            <td>${blog.blog_id}</td>
            <td>${blog.name}</td>
            <td>${blog.email}</td>
            <td>${blog.affiliation}</td>
            <td>${blog.role}</td>
            <td>${blog.typeOfContribution}</td>
            <td><fmt:formatDate value="${blog.date}" pattern="dd-MM-yyyy" /></td>
            <td>${blog.title}</td>
            <td>${blog.content}</td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/admin/acceptBlog">
                    <input type="hidden" name="blog_id" value="${blog.blog_id}">
                    <input type="submit" value="Accept">
                </form>
            </td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/admin/discardBlog">
                    <input type="hidden" name="blog_id" value="${blog.blog_id}">
                    <input type="submit" value="Discard">
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<br>

<table class="center">
    <caption>Current Blog Posts</caption>
    <thead>
    <tr>
        <th>ID</th>
        <th>Author</th>
        <th>Email</th>
        <th>Affiliation</th>
        <th>Role</th>
        <th>Type Of Contribution</th>
        <th>Date Posted</th>
        <th>Title</th>
        <th>Content</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${acceptedBlogs}" var="blog">
        <tr>
            <td>${blog.blog_id}</td>
            <td>${blog.name}</td>
            <td>${blog.email}</td>
            <td>${blog.affiliation}</td>
            <td>${blog.role}</td>
            <td>${blog.typeOfContribution}</td>
            <td><fmt:formatDate value="${blog.date}" pattern="dd-MM-yyyy" /></td>
            <td>${blog.title}</td>
            <td>${blog.content}</td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/admin/discardBlog">
                    <input type="hidden" name="blog_id" value="${blog.blog_id}">
                    <input type="submit" value="Discard">
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<br>

<table class="center">
    <caption>Discarded Blog Posts</caption>
    <thead>
    <tr>
        <th>ID</th>
        <th>Author</th>
        <th>Email</th>
        <th>Affiliation</th>
        <th>Role</th>
        <th>Type Of Contribution</th>
        <th>Date Posted</th>
        <th>Title</th>
        <th>Content</th>
        <th>Action</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${discardedBlogs}" var="blog">
        <tr>
            <td>${blog.blog_id}</td>
            <td>${blog.name}</td>
            <td>${blog.email}</td>
            <td>${blog.affiliation}</td>
            <td>${blog.role}</td>
            <td>${blog.typeOfContribution}</td>
            <td><fmt:formatDate value="${blog.date}" pattern="dd-MM-yyyy" /></td>
            <td>${blog.title}</td>
            <td>${blog.content}</td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/admin/recoverBlog">
                    <input type="hidden" name="blog_id" value="${blog.blog_id}">
                    <input type="submit" value="Recover">
                </form>
            </td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/admin/deleteBlog">
                    <input type="hidden" name="blog_id" value="${blog.blog_id}">
                    <input type="submit" value="Delete">
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<footer>
    <div class="footer-columns">
        <div class="footer-col-1">
            <img src="https://eap4socialjustice.files.wordpress.com/2022/01/refugeap-banner-pencil.png" alt="RefugEAP Logo">
            <p class="footer-slogan">The RefugEAP Network overarching objective is to facilitate the development of widening participation initiatives enabling refugee-background students to access HE via English language pathways, with a particular focus on English for Academic Purposes. </p>
        </div>
    </div>
</footer>
</body>
</html>