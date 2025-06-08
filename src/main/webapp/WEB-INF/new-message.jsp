<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add New Message</title>
</head>
<body>
    <h1>Add New Message</h1>
    <form action="messages" method="post">
        <input type="hidden" name="action" value="add">
        
        <label for="author">Author:</label>
        <input type="text" id="author" name="author" required><br>
        
        <label for="content">Content:</label>
        <textarea id="content" name="content" required></textarea><br>
        
        <input type="submit" value="Submit">
    </form>
    <p><a href="messages">Back to Messages</a></p>
</body>
</html>
