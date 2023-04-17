<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>English Education</title>
    <link rel="stylesheet" href="<c:url value="/resources/style/login/style.css"/>" media="screen">

</head>
<body>
<div class="login-box">
    <h2>Login</h2>
    <c:if test="${param.error != null}">

            <h3>Authentication Failed : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</h3>

    </c:if>
    <c:if test="${param.logout != null}">

            <h3>You have been logged out successfully.</h3>

    </c:if>

    <form action="login" method="post" name="log">
        <div class="user-box">
            <input type="text"
                   name="email" id="email" readonly
                   onfocus="this.removeAttribute('readonly')">
            <label>E-mail</label>
        </div>
        <div class="user-box">
            <input type="password"
                   id="password" name="password" >
            <label>Password</label>
        </div>
        <a href="#"  onClick="document.forms['log'].submit();">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            Sign In
        </a>
        <a href="registration" style="margin-left: 80px;">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            Sign Up
        </a>
    </form>
    <style>
        .user-box input {
            border: 1px solid black;
            background-color: transparent;
        }

        .user-box input:-webkit-autofill,
        .user-box input:-webkit-autofill:hover,
        .user-box input:-webkit-autofill:focus,
        .user-box input:-webkit-autofill:active {
            -webkit-transition-delay: 99999s;
        }
    </style>
</div>
</body>
</html>