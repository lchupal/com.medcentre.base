package by.denis.medcentre.model;

import org.springframework.format.annotation.DateTimeFormat;


import java.util.Date;


public class User {
    private int id;
    private String surname;
    private String username;
    private String midlename;
    @DateTimeFormat (pattern = "yyyy-mm-dd")
    private Date dateOfBirth;
    private String gender;
    private String numPassword;
    private String passport;
    private String phoneNumber;
    private String email;
    private String role;


    public User() {
    }

    public User(int id, String surname, String username, String midlename, Date dateOfBirth, String gender, String numPassword, String passport, String phoneNumber, String email) {
        this.id = id;
        this.surname = surname;
        this.username = username;
        this.midlename = midlename;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.numPassword = numPassword;
        this.passport = passport;
        this.phoneNumber = phoneNumber;
        this.email = email;
    }

    public User(int id, String surname, String username, String midlename, Date dateOfBirth, String gender, String numPassword, String passport, String phoneNumber) {
        this.id = id;
        this.surname = surname;
        this.username = username;
        this.midlename = midlename;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.numPassword = numPassword;
        this.passport = passport;
        this.phoneNumber = phoneNumber;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getMidlename() {
        return midlename;
    }

    public void setMidlename(String midlename) {
        this.midlename = midlename;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getNumPassword() {
        return numPassword;
    }

    public void setNumPassword(String numPassword) {
        this.numPassword = numPassword;
    }

    public String getPassport() {
        return passport;
    }

    public void setPassport(String passport) {
        this.passport = passport;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", surname='" + surname + '\'' +
                ", username='" + username + '\'' +
                ", midlename='" + midlename + '\'' +
                ", dateOfBirth=" + dateOfBirth +
                ", gender='" + gender + '\'' +
                ", numPassword='" + numPassword + '\'' +
                ", passport='" + passport + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}