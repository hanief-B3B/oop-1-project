package com.example;

import static spark.Spark.*;
import com.example.dao.UserDAO;
import com.example.model.User;
import com.google.gson.Gson;

public class App {
    public static void main(String[] args) {
        UserDAO userDao = new UserDAO();
        Gson gson = new Gson();

        // REST API
        post("/users", (req, res) -> {
            User user = gson.fromJson(req.body(), User.class);
            userDao.create(user);
            return gson.toJson(user);
        });

        get("/users", (req, res) -> {
            res.type("application/json");
            return gson.toJson(userDao.readAll());
        });
    }
}
