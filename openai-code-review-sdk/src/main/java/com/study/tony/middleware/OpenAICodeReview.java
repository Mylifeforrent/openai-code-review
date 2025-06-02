package com.study.tony.middleware;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;

public class OpenAICodeReview {
    public static void main(String[] args) throws Exception {
        System.out.println("OpenAI Code Review SDK is running successfully!");
        // You can add more functionality here, such as initializing the SDK or performing code reviews.
        // 1. 代码检出
        ProcessBuilder processBuilder = new ProcessBuilder("git", "diff", "HEAD~1", "HEAD");
        processBuilder.directory(new File("."));

        Process process = processBuilder.start();

        BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
        String line;

        StringBuilder diffCode = new StringBuilder();
        while ((line = reader.readLine()) != null) {
            diffCode.append(line);
        }

        int exitCode = process.waitFor();
        System.out.println("Exited with code:" + exitCode);

        System.out.println("评审代码：" + diffCode.toString());
    }
}
