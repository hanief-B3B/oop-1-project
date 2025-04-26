package com.example.util;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class AsyncProcessor {
    private static final ExecutorService executor = Executors.newFixedThreadPool(5);

    public static void processAsync(Runnable task) {
        executor.submit(task);
    }
}