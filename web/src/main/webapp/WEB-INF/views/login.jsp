<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="templates/header.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <c:if test="${requestScope.error != null}">
                <div class="alert alert-danger" role="alert">
					<span class="glyphicon glyphicon-exclamation-sign"
                          aria-hidden="true"></span> ${requestScope.error}
                </div>

            </c:if>
        </div>
    </div>
    <div class="row">
        <form class="form-signin" style="border-radius:10px" action="<c:url value="/Login" ></c:url>" method="post">

            <h1 class="form-signin-heading legend text-center" style="color: #FAFAFA">Please sign in</h1>
            <div id="inputemail">
                <label for="inputEmail" class="sr-only">Username</label> <input
                    type="text" name="username" id="inputEmail" class="form-control"
                    placeholder="Username" required autofocus>
            </div>
            <div>
                <label
                        for="inputPassword" class="sr-only">Password</label> <input
                    type="password" name="password" id="inputPassword"
                    class="form-control" placeholder="Password" required>
            </div>
            <div class="checkbox">
                <label style="color:#FAFAFA"> <input type="checkbox" value="remember-me">
                    Remember me
                </label>
            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign
                in
            </button>
            <input type="hidden"
                   name="${_csrf.parameterName}"
                   value="${_csrf.token}"/>

        </form>
    </div>

</div>
<!-- /container -->


</body>
</html>
