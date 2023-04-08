<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>English Education</title>
    <link rel="stylesheet" href="<c:url value="/resources/style/login/style.css"/>" media="screen">

</head>
<body>
<div class="login-box">
    <h2>Registration</h2>
    <h3>${messageAtt}</h3>
<form:form action="registration" name="reg" modelAttribute="newUserAtt" method="post">
        <div class="user-box">
            <form:input path="email" autocomplete="false"/> <form:errors path="email" cssStyle="font-size: 12px;
    position: absolute;
    color: red;
    top: 63%;
    right: 58%;" />
            <label>E-mail</label>
        </div>
        <div class="user-box">
            <form:input path="name" autocomplete="false"/> <form:errors path="name" cssStyle="ffont-size: 12px;
    position: absolute;
    color: red;
    top: 63%;
    right: 15%;" />
            <label>First name</label>
        </div>
        <div class="user-box">
            <form:input path="surname" autocomplete="false"/> <form:errors path="surname" cssStyle="font-size: 12px;
    position: absolute;
    color: red;
    top: 63%;
    right: 15%;" />
            <label>Surname</label>
        </div>
        <div class="user-box">
            <form:input path="mobile" autocomplete="false"/> <form:errors path="mobile"  cssStyle="font-size: 12px;
    position: absolute;
    color: red;
    top: 63%;
    right: 14%;" />
            <label>Phone</label>
        </div>
        <div class="user-box">
            <input type="password" name="pass1Att" />
            <label>Password</label>
        </div>
        <div class="user-box">
            <input type="password" name="pass2Att" />
            <label>Confirm password</label>
        </div>
        <a href="#" style="margin-left: 30px;" onClick="document.forms['reg'].submit();">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            Sign Up
        </a>
        <a href="/" style="margin-left: 60px;">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            Back
        </a>
</form:form>

</div>
</body>
</html>
