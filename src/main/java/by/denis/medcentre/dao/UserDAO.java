package by.denis.medcentre.dao;

import by.denis.medcentre.model.Login;
import by.denis.medcentre.model.User;


public interface UserDAO {
    void register(User user);
    User validateUser (Login login);
}
