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
Select file to upload and add new word of the day: <br />
<form method="POST" action="/admin/uploadWord" enctype="multipart/form-data">
    Word: <input type="text" name="word">
    <br>
    Definition: <input type="text" name="definition">
    <br>
    Example 1: <input type="text" name="example1">
    <br>
    Example 2: <input type="text" name="example2">
    <br>
    Example 3: <input type="text" name="example3">
    <br>
    Part:  <input type="text" name="part">
    <br>

    <input type="file" name="file" /><br/>
    <input type="submit" value="Submit" />
</form>
</body>
</html>