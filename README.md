
# Java Web App – Detailed Code Explanation

This project follows a typical Java Web Application architecture using Servlet + JSP + MVC.

---

## 1. `Message.java` – The Model

**File:** `com/example/model/Message.java`

```java
package com.example.model;
```

Declares the package where this class resides.

```java
public class Message {
    private String content;
    private String author;
```

Defines two private fields.

```java
    public Message() {}
```

No-argument constructor.

```java
    public Message(String content, String author) {
        this.content = content;
        this.author = author;
    }
```

Parameterized constructor.

```java
    public String getContent() { return content; }
    public void setContent(String content) { this.content = content; }
    public String getAuthor() { return author; }
    public void setAuthor(String author) { this.author = author; }
```

Standard getters and setters.

```java
    @Override
    public String toString() {
        return "Message[content=" + content + ", author=" + author + "]";
    }
}
```

Overrides toString for display.

---

## 2. `MessageService.java` – The Service Layer

**File:** `com/example/service/MessageService.java`

```java
package com.example.service;

import com.example.model.Message;
import java.util.ArrayList;
import java.util.List;

public class MessageService {
    private static final List<Message> messages = new ArrayList<>();

    static {
        messages.add(new Message("Hello, World!", "System"));
        messages.add(new Message("Welcome to our web app!", "Admin"));
    }

    public List<Message> getAllMessages() {
        return new ArrayList<>(messages);
    }

    public void addMessage(Message message) {
        messages.add(message);
    }

    public Message getMessage(int index) {
        if (index >= 0 && index < messages.size()) {
            return messages.get(index);
        }
        return null;
    }
}
```

Manages the in-memory list of messages.

---

## 3. `MessageServlet.java` – The Controller

**File:** `com/example/servlet/MessageServlet.java`

Handles web request routing.

```java
@WebServlet(name = "MessageServlet", urlPatterns = {"/messages"})
```

Maps this servlet to `/messages`.

```java
public class MessageServlet extends HttpServlet {
    private final MessageService messageService = new MessageService();
```

### `doGet` method

```java
protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    String action = request.getParameter("action");
    if (action == null) action = "list";
    switch (action) {
        case "new": showNewForm(request, response); break;
        case "add": addMessage(request, response); break;
        default: listMessages(request, response); break;
    }
}
```

Handles routing by action.

### `doPost` method

```java
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    doGet(request, response);
}
```

Delegates to `doGet`.

### Helper methods

```java
private void listMessages(...) {...}
private void showNewForm(...) {...}
private void addMessage(...) {...}
```

Each method forwards/redirects appropriately.

---

## 4. `messages.jsp` – List View

**File:** `webapp/WEB-INF/messages.jsp`

Displays all messages.

```jsp
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:forEach items="${messages}" var="message">
<tr><td>${message.author}</td><td>${message.content}</td></tr>
</c:forEach>
```

---

## 5. `new-message.jsp` – Form View

**File:** `webapp/WEB-INF/new-message.jsp`

Form to submit a new message.

```html
<form action="messages" method="post">
    <input type="hidden" name="action" value="add">
    <input type="text" name="author" required>
    <textarea name="content" required></textarea>
    <input type="submit" value="Submit">
</form>
```

---

## 6. `web.xml`

**File:** `webapp/WEB-INF/web.xml`

```xml
<welcome-file-list>
    <welcome-file>index.jsp</welcome-file>
</welcome-file-list>
```

Defines default landing page.

---

## 7. `index.jsp`

Landing page.

```html
<h1>Welcome to our Simple WebApp</h1>
<a href="messages">View Messages</a>
```

---

## Summary of Relationships

| Component | Role | Connected To |
|----------|------|--------------|
| `Message` | Model | Used by `MessageService` and JSP |
| `MessageService` | Business Logic | Used in `MessageServlet` |
| `MessageServlet` | Controller | Routes requests to JSP |
| `*.jsp` | View | Rendered with servlet-set attributes |
| `web.xml` / `@WebServlet` | Config | Maps routes |

---
