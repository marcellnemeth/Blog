<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Starter Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>"
          rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources/css/blog.css"/>" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources/css/my.css"/>" rel="stylesheet">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div class="blog-masthead">
    <div class="container">
        <nav class="blog-nav">
            <a class="blog-nav-item " href="<c:url value="/"/>">Home</a>
<c:if test="${sessionScope.user ==null}">
            <a class="blog-nav-item" href="<c:url value="/public/login.jsp"/>">Login</a>
</c:if>
            <sec:authorize access="hasAnyRole('USER','ADMIN')">
            <a class="blog-nav-item" href="<c:url value="/logout"/>">Logout</a>
            </sec:authorize>
            <a class="blog-nav-item active"
               href="<c:url value="/secured/secured"/>">Users</a>

        </nav>
    </div>
</div>

<div class="container">


    <div class="row">
        <c:forEach items="${users}" var="user">
            <div class="col-lg-3 my-box">
                <img class="img-circle" src="${user.img}" width="140" height="140">
                <h2>${user.firstName} &nbsp;${user.lastName}</h2>
                <p>
                        ${user.username}<br>

                </p>
                <p><a class="btn btn-default" href="#" role="button"
                      data-toggle="modal" data-target="#myModal">View details &raquo;</a>
                    <a class="btn btn-default" href="mailto:mail_addr" role="button"><span
                            class="glyphicon glyphicon-envelope"></span></a></p>
            </div>

            <div id="myModal" class="modal fade" role="dialog">

                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">user_name</h4>
                        </div>
                        <div class="modal-body">

                            <table class="table responsive">
                                <tr class="text-centered">
                                    <td colspan="2"><img src="${user.img}" class="img-thumbnail"></td>
                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td>${user.email}</td>
                                </tr>
                                <tr>
                                    <td>Username</td>
                                    <td>${user.username}</td>
                                </tr>
                                <tr>
                                    <td>Password</td>
                                    <td>${user.password}</td>
                                </tr>

                                <tr>
                                    <td>Gender</td>
                                    <td>${user.gender}</td>
                                </tr>
                                <tr>
                                    <td>Date of Birth</td>
                                    <td>${user.date_of_birth}</td>
                                </tr>
                                <tr>
                                    <td>Location</td>
                                    <td>${user.location}</td>
                                </tr>
                                <tr>
                                    <td>Phone</td>
                                    <td>${user.phone}</td>
                                </tr>

                            </table>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>

                </div>

            </div>

        </c:forEach>
    </div>
</div>
<!-- /.container -->
<div class="loader col-sm-offset-6"></div>

<input type="hidden"
       name="${_csrf.parameterName}"
       value="${_csrf.token}"/>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script
        src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
</body>
</html>
