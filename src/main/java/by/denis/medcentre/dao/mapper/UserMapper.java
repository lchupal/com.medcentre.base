package by.denis.medcentre.dao.mapper;

import by.denis.medcentre.model.User;
import org.springframework.jdbc.core.RowMapper;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.apache.commons.logging.Log;



public class UserMapper implements RowMapper<User> {
    private Log log= org.apache.commons.logging.LogFactory.getLog(UserMapper.class);
    @Override
    public User mapRow(ResultSet resultSet, int i) throws SQLException {
        User user = new User();
        try {
            user.setSurname(resultSet.getString("idClients"));
            log.info("Проверка на ID");
        } catch (SQLException e) {
            e.printStackTrace()
            ;
            log.info("Такой ID есть уже");
        }
        user.setSurname(resultSet.getString("surname"));
        user.setUsername(resultSet.getString("name"));
        user.setMidlename(resultSet.getString("middle_name"));
        user.setDateOfBirth (resultSet.getDate("date_of_birth"));
        user.setGender(resultSet.getString("gender"));
        user.setNumPassword(resultSet.getString("password"));
        try {
            user.setPassport (resultSet.getString("pasport"));
        } catch (SQLException e) {
            e.printStackTrace();
            log.info("Такой номер паспорта есть уже");
        }
        try {
            user.setPhoneNumber(resultSet.getString("phone_number"));
        } catch (SQLException e) {
            e.printStackTrace();
            log.info("Такой номер телефона есть уже");
        }
        user.setEmail(resultSet.getString("mail"));


        return user;
    }




}
