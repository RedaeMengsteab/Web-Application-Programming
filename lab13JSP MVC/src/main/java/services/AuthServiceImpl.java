package services;

import data.AppData;
import model.User;

import java.util.List;

public class AuthServiceImpl implements AuthService {

    @Override
    public boolean login(String userName, String password) {
        List<User> users = AppData.getUsers();
        for (User user : users) {
            boolean sameName = userName.equals(user.getName());
            boolean samePassword = password.equals(user.getPassword());
            if (sameName && samePassword) {

                return true;
            }
        }
        return false;
    }

    @Override
    public User getUser(String userName) {
        List<User> users = AppData.getUsers();
        for (User user : users) {
            if (userName.equals(user.getName())) {
                return user;
            }
        }
        return null;
    }
}
