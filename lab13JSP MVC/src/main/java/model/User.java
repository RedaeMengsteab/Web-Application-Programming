package model;

import java.util.UUID;

public class User {
    private String id;
    private String name;
    private String password;

    public User() {
        this.id = shortID();
    }

    public User(String name) {
        this.id = shortID();
        this.name = name;
    }

    public User(String name, String password) {
        this.id = UUID.randomUUID().toString();
        this.name = name;
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }

    public String getId() {
        return id;
    }

    private static String shortID() {
        int DIGITS = 4;
        StringBuilder sb = new StringBuilder(DIGITS);
        for (int i = 0; i < DIGITS; i++) {
            sb.append((char) (Math.random() * 10 + '0'));
        }
        return sb.toString();
    }
}
