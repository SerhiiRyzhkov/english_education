<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
    <title>Image File Upload</title>
</head>
<body>
<br>
<h3>File Upload:</h3>
Select file to upload: <br />
<%--<form method="POST" action="${pageContext.request.contextPath}/upload" enctype="multipart/form-data">--%>
<form method="POST" action="/admin/upload" enctype="multipart/form-data">
    <input type="file" name="file" /><br/>
    <input type="submit" value="Submit" />
</form>
</body>
</html>