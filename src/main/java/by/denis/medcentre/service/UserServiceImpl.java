package by.denis.medcentre.service;

import by.denis.medcentre.dao.UserDAO;
import by.denis.medcentre.model.Login;
import by.denis.medcentre.model.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserServiceImpl implements UserService{

    @Resource
    private UserDAO userDao;

    @Override
    public void register(User user) {
        userDao.register(user);
    }

    @Override
    public User validateUser(Login login) {
        return userDao.validateUser(login);
    }
}
