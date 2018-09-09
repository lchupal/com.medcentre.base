package by.denis.medcentre.model;

public class Login {
    private String passport;
    private String password;

    public Login() {
    }

    public String getPassport() {
        return passport;
    }

    public void setPassport(String passport) {
        this.passport = passport;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Login{" +
                "passport='" + passport + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
