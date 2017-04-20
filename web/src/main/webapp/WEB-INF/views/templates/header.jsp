<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <title>Blog Template for Bootstrap</title>
    <script src="<c:url value="/resources/js/index.js"/>"></script>

    <link href="<c:url value="/resources/css/bootstrap.min.css"/>"
          rel="stylesheet">
    <link rel="stylesheet" href="<c:url value="/resources/css/button.css"/>">
    <!-- javascript imports -->
    <script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/resources/js/bootstrap.js"/>"></script>
    <script src="<c:url value="/resources/js/registration_js.js"/>"></script>
    <script src="<c:url value="https://use.fontawesome.com/c46cf86766.js"/>"></script>
    <script src="<c:url value="https://code.jquery.com/jquery-1.12.4.js"/>"></script>
    <script src="<c:url value="https://code.jquery.com/ui/1.12.1/jquery-ui.js"/>"></script>
    <script src="<c:url value="/resources/js/validator.min.js"/>"></script>
    <script src="<c:url value="/resources/js/validator.js"/>"></script>
    <link href="<c:url value="/resources/css/blog.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/signin.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/my.css"/>" rel="stylesheet">

</head>

<body>

<div class="blog-masthead">
    <div class="container">
        <nav class="blog-nav">
            <a class="blog-nav-item active" href="<c:url value="/"/>">Home</a>

            <c:if test="${sessionScope.user ==null}">
                <a class="blog-nav-item" href="<c:url value="/login"/>">Login</a>

            </c:if>
            <c:if test="${sessionScope.user ==null}">
                <a class="blog-nav-item" href="<c:url value="/register"/>">Registration</a>
            </c:if>

            <sec:authorize access="hasAnyRole('USER','ADMIN')">
                <a class="blog-nav-item" href="<c:url value="/logout"/>">Logout</a>
            </sec:authorize>

            <a class="blog-nav-item"
               href="<c:url value="/secured/secured"/>">Users</a>

        </nav>
    </div>
</div>
