<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<head>
    <title>Listening practice</title>
</head>
<body>

Choice the level


<c:url var="A1Button" value="/listening/tasks">
    <c:param name="level" value="A1"/>
</c:url>

<c:url var="A2Button" value="/listening/tasks">
    <c:param name="level" value="A2"/>
</c:url>

<c:url var="B1Button" value="/listening/tasks">
    <c:param name="level" value="B1"/>
</c:url>

<c:url var="B2Button" value="/listening/tasks">
    <c:param name="level" value="B2"/>
</c:url>

<c:url var="C1Button" value="/listening/tasks">
    <c:param name="level" value="C1"/>
</c:url>

<c:url var="C2Button" value="/listening/tasks">
    <c:param name="level" value="C2"/>
</c:url>


<br>
<input type="button" value="A1" onClick="window.location.href='${A1Button}'"/>
<br>
<input type="button" value="A2" onClick="window.location.href='${A2Button}'"/>
<br>
<input type="button" value="B1" onClick="window.location.href='${B1Button}'"/>
<br>
<input type="button" value="B2" onClick="window.location.href='${B2Button}'"/>
<br>
<input type="button" value="C1" onClick="window.location.href='${C1Button}'"/>
<br>
<input type="button" value="C2" onClick="window.location.href='${C2Button}'"/>
<br>

</body>
</html>
