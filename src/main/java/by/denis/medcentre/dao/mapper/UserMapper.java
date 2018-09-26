package by.denis.medcentre.dao.mapper;

import by.denis.medcentre.model.User;
import org.springframework.jdbc.core.RowMapper;
import java.sql.ResultSet;
import java.sql.SQLException;


public class UserMapper implements RowMapper<User> {

    @Override
    public User mapRow(ResultSet resultSet, int i) throws SQLException {
        User user = new User();
        user.setSurname(resultSet.getString("idClients"));
        user.setSurname(resultSet.getString("surname"));
        user.setUsername(resultSet.getString("name"));
        user.setMidlename(resultSet.getString("middle_name"));
        user.setDateOfBirth (resultSet.getDate("date_of_birth"));
        user.setGender(resultSet.getString("gender"));
        user.setNumPassword(resultSet.getString("password"));
        user.setPassport (resultSet.getString("pasport"));
        user.setPhoneNumber(resultSet.getString("phone_number"));
        user.setEmail(resultSet.getString("mail"));


        return user;




    }
}
