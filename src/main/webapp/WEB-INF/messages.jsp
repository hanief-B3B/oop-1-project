<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Messages</title>
</head>
<body>
    <h1>Messages</h1>
    <table border="1">
        <tr>
            <th>Author</th>
            <th>Content</th>
        </tr>
        <c:forEach items="${messages}" var="message">
            <tr>
                <td>${message.author}</td>
                <td>${message.content}</td>
            </tr>
        </c:forEach>
    </table>
    <p><a href="messages?action=new">Add New Message</a></p>
</body>
</html>
