package by.denis.medcentre.service;

import by.denis.medcentre.dao.UserDAO;
import by.denis.medcentre.model.Login;
import by.denis.medcentre.model.User;

import org.springframework.stereotype.Service;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import javax.annotation.Resource;

@Service
public class UserServiceImpl implements UserService{
    private Log log= LogFactory.getLog(UserServiceImpl.class);
    @Resource
    private UserDAO userDao;


    @Override
    public void register(User user) {
        userDao.register(user);
        log.info("регистарция отправлена");
    }

    @Override
    public User validateUser(Login login) {
        log.info("Пользователь проинициализирован");
        return userDao.validateUser(login);

    }
}
