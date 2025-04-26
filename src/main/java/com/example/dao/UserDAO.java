package com.example.dao;

import com.example.model.User;
import java.util.ArrayList;
import java.util.List;

public class UserDAO implements DataOperations<User> {
    private List<User> users = new ArrayList<>();
    private int nextId = 1;

    @Override
    public void create(User user) {
        user.setId(nextId++);
        users.add(user);
    }

    @Override
    public User read(int id) {
        return users.stream()
            .filter(u -> u.getId() == id)
            .findFirst()
            .orElse(null);
    }
}