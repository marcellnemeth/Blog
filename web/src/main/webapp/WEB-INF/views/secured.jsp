<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="templates/header.jsp"%>
<div class="container">

    <div class="row">
        <c:forEach items="${users}" var="user">
            <div class="col-lg-3 my-box">
                <img class="img-circle" src="${user.img}" width="140" height="140">
                <h2>${user.firstName} &nbsp;${user.lastName}</h2>
                <p>${user.username}<br></p>
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
