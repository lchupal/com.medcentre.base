package by.denis.medcentre.controller;

import by.denis.medcentre.model.Login;
import by.denis.medcentre.model.User;
import by.denis.medcentre.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@SessionAttributes(value = "login")
public class LoginController {


    @Autowired
    private UserService userService;


    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView modelAndView = new ModelAndView("login");
        modelAndView.addObject("login", new Login());
        return modelAndView;
    }

    @RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
    public ModelAndView loginProcess( HttpServletRequest request, HttpServletResponse response,
                                     @ModelAttribute("login") Login login) {
        ModelAndView modelAndView;
        User user = userService.validateUser(login);
        if (user != null) {
            modelAndView = new ModelAndView("welcome");
            modelAndView.addObject("login", login.toString());
        } else {
            modelAndView = new ModelAndView("/login");
            modelAndView.addObject("message", "Не тот Паспорт или пароль");
        }
        return modelAndView;

    }
}
