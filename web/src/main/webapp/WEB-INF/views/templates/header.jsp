
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
    <title>Blog</title>

    <link href="<c:url value="/resources/css/blog.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>"
          rel="stylesheet">
    <link rel="stylesheet" href="<c:url value="/resources/css/button.css"/>">
    <!-- javascript imports -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">


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
               href="<c:url value="/users"/>">Users</a>

        </nav>
    </div>
</div>
