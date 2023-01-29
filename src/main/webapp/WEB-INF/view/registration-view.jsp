<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
${messageAtt}
<form:form action="registration" modelAttribute="newUserAtt" method="post">
<table>
    <tr>
        <td>Email</td>
        <td><form:input path="email" /> <form:errors path="email"/></td>
    </tr>
    <tr>
        <td>First name</td>
        <td><form:input path="name"/> <form:errors path="name"/></td></td>
    </tr>
    <tr>
        <td>Surname</td>
        <td><form:input path="surname"/> <form:errors path="surname"/></td></td>
    </tr>
    <tr>
        <td>Mobile</td>
        <td><form:input path="mobile"/> <form:errors path="mobile" /></td></td>
    </tr>
    <tr>
        <td>Password</td>
        <td><input type="password" name="pass1Att" /></td>
    </tr>
    <tr>
        <td>Confirm password</td>
        <td><input type="password" name="pass2Att" /></td>
    </tr>
    <br>
    <input type="submit"  value="ok">

</form:form>

<%--

<table>
    <tr>
        <td>Email</td>
        <td><input type="text" name="email" /></td>
    </tr>
    <tr>
        <td>First Name</td>
        <td><input type="text" name="firstName" /></td>
    </tr>
    <tr>
        <td>Surname</td>
        <td><input type="text" name="surname" /></td>
    </tr>
    <tr>
        <td>Mobile</td>
        <td><input type="text" name="mobile" /></td>
    </tr>
    <tr>
        <td>Password</td>
        <td><input type="password" name="password1" /></td>
    </tr>
    <tr>
        <td>Confirm password</td>
        <td><input type="password" name="password2" /></td>
    </tr>
</table>
<input type="submit" value="Submit" />
</form>
</div>
</body>
</html>

--%>

<%--
registration view
<br>
<form:form action="registration"  modelAttribute="newUserAtt"  method="post">
    Name <form:input path="name"/>
    <br><br>
    Surname <form:input path="surname"/>
    <br><br>
    Mobile <form:input path="mobile"/>
    <br><br>
    Email<form:input path="email"/>
    <br><br>
    Password <input type="text" name="pass1Att">
    <br><br>
    Confirm Password <input type="text" name="pass2Att">
    &lt;%&ndash;
    Password <form:input path="password"/>
    <br><br>
    Confirm password <c
&ndash;%&gt;
    <input type="submit" value="OK">

</form:form>
</body>
</html>--%>
