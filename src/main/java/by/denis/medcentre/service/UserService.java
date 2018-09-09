package by.denis.medcentre.service;

import by.denis.medcentre.model.Login;
import by.denis.medcentre.model.User;


public interface UserService {
    void register(User user);
    User validateUser(Login login);
}
