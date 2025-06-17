<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add New Message</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container py-5">
    <h1 class="mb-4">Add New Message</h1>
    <form action="messages" method="post" class="bg-white p-4 shadow rounded">
        <input type="hidden" name="action" value="add">
        
        <div class="mb-3">
            <label for="author" class="form-label">Author</label>
            <input type="text" id="author" name="author" class="form-control" required>
        </div>
        
        <div class="mb-3">
            <label for="content" class="form-label">Content</label>
            <textarea id="content" name="content" class="form-control" rows="4" required></textarea>
        </div>
        
        <button type="submit" class="btn btn-primary">Submit</button>
        <a href="messages" class="btn btn-secondary">Back</a>
    </form>
</div>
</body>
</html>
