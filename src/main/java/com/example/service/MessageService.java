package com.example.service;

import com.example.model.Message;
import java.util.ArrayList;
import java.util.List;

public class MessageService {
    private static final List<Message> messages = new ArrayList<>();
    
    static {
        // Initialize with some sample messages
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
