package by.denis.medcentre.dao.impl;

import by.denis.medcentre.model.Login;
import by.denis.medcentre.model.User;
import by.denis.medcentre.dao.UserDAO;
import by.denis.medcentre.dao.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class UserDAOImpl implements UserDAO {

    private static final String SQL_INSERT_USER = "INSERT INTO clients (surname, name, middle_name, date_of_birth, gender, password, pasport,phone_number, mail) VALUES(?,?,?,?,?,?,?,?,?)";

    private static final String SQL_SELECT_USER_BY_PASPORT_PASSWORD = "SELECT * FROM clients WHERE pasport=? and password=?";

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public void register(User user) {
        jdbcTemplate.update(SQL_INSERT_USER,

                user.getSurname(),
                user.getUsername(),
                user.getMidlename(),
                user.getDateOfBirth(),
                user.getGender(),
                user.getNumPassword(),
                user.getPassport(),
                user.getPhoneNumber(),
                user.getEmail());
    }

    @Override
    public User validateUser(Login passport) {
        List<User> users = jdbcTemplate.query(SQL_SELECT_USER_BY_PASPORT_PASSWORD,
                new Object[]{passport.getPassport(), passport.getPassword()},
                new UserMapper());
        return users.size() > 0 ? users.get(0) : null;
    }

}
