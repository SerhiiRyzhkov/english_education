<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
    <title>Image File Upload</title>
</head>
<body>
<br>

<br>
<h3>File Upload:</h3>
Select file to upload: <br />
<%--<form method="POST" action="${pageContext.request.contextPath}/upload" enctype="multipart/form-data">--%>
<form method="POST" action="/admin/uploadReading" enctype="multipart/form-data">
    <br>
    Type the question:
    <input type="text" name="nameAtt">

    <br>
    Choose the level:
    <br>
    <input type="radio" value="A1" name="levelAtt" checked> A1
    <br>
    <input type="radio" value="A2" name="levelAtt"> A2
    <br>
    <input type="radio" value="B1" name="levelAtt"> B1
    <br>
    <input type="radio" value="B2" name="levelAtt"> B2
    <br>
    <input type="radio" value="C1" name="levelAtt"> C1
    <br>
    <input type="radio" value="C2" name="levelAtt"> C2
    <br>
    Type the reading text:
    <input type="text" name="readingAtt">
    <br>
    Choose amount of questions:
    <br>
    <input type="number" name="amountAtt" min="2" max="12">
    <br>
    <input type="file" name="file" /><br/>


    <input type="submit" value="Submit" />

</form>
</body>
</html>