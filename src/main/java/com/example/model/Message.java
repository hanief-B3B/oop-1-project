package com.example.model;

public class Message {
    private String content;
    private String author;
    
    public Message() {}
    
    public Message(String content, String author) {
        this.content = content;
        this.author = author;
    }
    
    // Getters and Setters
    public String getContent() {
        return content;
    }
    
    public void setContent(String content) {
        this.content = content;
    }
    
    public String getAuthor() {
        return author;
    }
    
    public void setAuthor(String author) {
        this.author = author;
    }
    
    @Override
    public String toString() {
        return "Message[content=" + content + ", author=" + author + "]";
    }
}
