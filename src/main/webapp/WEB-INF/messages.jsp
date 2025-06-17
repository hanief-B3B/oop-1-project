<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Messages</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container py-5">
    <h1 class="mb-4">Messages</h1>

    <table class="table table-bordered table-hover bg-white">
        <thead class="table-dark">
            <tr>
                <th>Author</th>
                <th>Content</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${messages}" var="message">
                <tr>
                    <td>${message.author}</td>
                    <td>${message.content}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <div class="mt-4">
        <a href="messages?action=new" class="btn btn-success">Add New Message</a>
        <a href="../" class="btn btn-secondary">Home</a>
    </div>
</div>
</body>
</html>
