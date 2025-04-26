package com.example.model;

public class User extends Person {
    private String password;

    public User(String name, String email, String password) {
        super(name, email);
        this.password = password;
    }

    @Override
    public void displayRole() {
        System.out.println("Regular User");
    }
}