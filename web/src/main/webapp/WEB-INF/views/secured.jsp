<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="templates/header.jsp"%>

<div class="container">
    <div class="row">
        <c:forEach items="${users}" var="user">
        <div class="col-md-3 col-sm-6" id="team" style="margin-top: 30px">
            <div class="our-team">
                <div class="pic">
                    <img src="${user.img}" alt="">
                    <a href="#" class="read-more">read more</a>
                </div>
                <div class="team-content">
                    <h3 class="title">${user.firstName} ${user.lastName}</h3>
                    <span class="post">web developer</span>
                </div>
            </div>
        </div>
        </c:forEach>
    </div>
</div>

<%@include file="templates/footer.jsp"%>