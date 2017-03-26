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
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <title>Blog Template for Bootstrap</title>
    <script src="<c:url value="/resources/js/index.js"/>"></script>
    <script src="<c:url value="/resources/js/blog.js"/>"></script>
    <!-- Bootstrap core CSS -->
    <link href="<c:url value="../resources/css/bootstrap.min.css"/>"
          rel="stylesheet">


    <link href="<c:url value="../resources/css/blog.css"/>" rel="stylesheet">

    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div class="blog-masthead">
    <div class="container">
        <nav class="blog-nav">
            <a class="blog-nav-item active" href="<c:url value="/"/>">Home</a>

            <c:if test="${sessionScope.user ==null}">
            <a class="blog-nav-item" href="<c:url value="/public/login.jsp"/>">Login</a>

            </c:if>
            <c:if test="${sessionScope.user ==null}">
                <a class="blog-nav-item" href="<c:url value="/public/Registration.jsp"/>">Registration</a>
            </c:if>

            <sec:authorize access="hasAnyRole('USER','ADMIN')">
            <a class="blog-nav-item" href="<c:url value="/logout"/>">Logout</a>
            </sec:authorize>

            <a class="blog-nav-item"
               href="<c:url value="/secured/secured"/>">Users</a>

        </nav>
    </div>
</div>

<div class="container">

    <div class="blog-header">
        <h1 class="blog-title">Blog</h1>
        <p></p>

        <button class="btn btn-info" data-toggle="modal" data-target="#myModal">CREATE NEW POST</button>
    </div>
    <!-- Modal -->
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Modal Header</h4>
                </div>
                <form id="blogForm" action="<c:url value="new" ></c:url>" method="post" style="padding: 20px">
                    <div class="form-group">
                        <label for="blogFormName">Name</label>
                        <input type="text" class="form-control" id="blogFormName" name="blogFormName">
                    </div>

                    <div class="form-group">
                        <label for="blogFormTitle">Title</label>
                        <input type="text" class="form-control" id="blogFormTitle" name="blogFormTitle">
                    </div>

                    <div class="form-group">
                        <label for="blogFormPost">Post</label>
                        <textarea class="form-control" rows="14" id="blogFormPost" name="blogFormPost"></textarea>

                    </div>



                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary" id="formSubmit">SEND</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
                </form>
            </div>

        </div>
    </div>


    <div class="row">

        <div class="col-sm-8 blog-main">
            <c:forEach items="${posts}" var="post">
                <div class="blog-post">
                    <h1><c:out value="${post.title}"/></h1>
                    <p></p>
                    <p class="blog-post-meta">
                        my_date <a href="#">${post.name}</a></p>
                    <p></p>
                    <p>${post.textArea}</p>
                </div>
            </c:forEach>

            <nav>
                <ul class="pager">
                    <li><a href="#">Previous</a></li>
                    <li><a href="#">Next</a></li>
                </ul>
            </nav>

        </div>
        <!-- /.blog-main -->
        <input type="hidden"
               name="${_csrf.parameterName}"
               value="${_csrf.token}"/>

        <div class="col-sm-3 col-sm-offset-1 blog-sidebar">
            <div class="sidebar-module sidebar-module-inset">
                <h4>About</h4>
                <p>
                    Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras
                    mattis consectetur purus sit amet fermentum. Aenean lacinia
                    bibendum nulla sed consectetur.
                </p>
            </div>
            <div class="sidebar-module">
                <h4>Archives</h4>
                <ol class="list-unstyled">
                    <li><a href="#">March 2014</a></li>
                    <li><a href="#">February 2014</a></li>
                    <li><a href="#">January 2014</a></li>
                    <li><a href="#">December 2013</a></li>
                    <li><a href="#">November 2013</a></li>
                    <li><a href="#">October 2013</a></li>
                    <li><a href="#">September 2013</a></li>
                    <li><a href="#">August 2013</a></li>
                    <li><a href="#">July 2013</a></li>
                    <li><a href="#">June 2013</a></li>
                    <li><a href="#">May 2013</a></li>
                    <li><a href="#">April 2013</a></li>
                </ol>
            </div>
            <div class="sidebar-module">
                <h4>Elsewhere</h4>
                <ol class="list-unstyled">
                    <li><a href="#">GitHub</a></li>
                    <li><a href="#">Twitter</a></li>
                    <li><a href="#">Facebook</a></li>
                </ol>
            </div>
        </div>
        <!-- /.blog-sidebar -->

    </div>
    <!-- /.row -->

</div>
<!-- /.container -->

<footer class="blog-footer">
    <p>
        Blog template built for <a href="http://getbootstrap.com">Bootstrap</a>
        by <a href="https://twitter.com/mdo">@mdo</a>.
    </p>
    <p>
        <a href="#">Back to top</a>
    </p>
</footer>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<script>
    window.jQuery
    || document
        .write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
</script>
<script src="../resources/js/bootstrap.min.js"></script>
<script type="text/javascript">
    function getMyContextPath() {
        return "<c:out value="${pageContext.request.contextPath}" />";
    }
</script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
</body>
</html>