package wap.w3d2;

import java.util.ArrayList;
import java.util.List;

public class UserUtil {
    public static List<User> getUsers()
    {
        //create an empty list
        List<User> users=new ArrayList<>();

        //add sample data
        users.add(new User("Daniel","123456"));
        users.add(new User("dawit","654321"));
        users.add(new User("john","111111"));
        //return list
        return users;
    }
}
