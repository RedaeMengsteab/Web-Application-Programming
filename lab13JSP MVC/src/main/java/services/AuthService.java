package services;

import model.User;

public interface AuthService {
    boolean login(String userName, String password);

    User getUser(String userName);
}
