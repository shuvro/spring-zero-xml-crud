package com.workspaceit.controller.webview;


import com.workspaceit.entity.User;
import com.workspaceit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
//@RequestMapping(value = "/home")
public class HomeController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/")
    public ModelAndView home() {
        ModelAndView modelAndView = new ModelAndView("home/index");
        modelAndView.addObject("name", "Spring");
        return modelAndView;
    }


    @RequestMapping(value = "/populate_users")
    public ModelAndView insertDummyData(){
        userService.save(new User("Jhon", "Doe", "jhon.doe@example.com"));
        userService.save(new User("David", "Miller", "david.miller@example.com"));
        userService.save(new User("Nicol", "Kidman", "nicol.kidman@example.com"));
        userService.save(new User("Paul", "Smith", "paul.smith@example.com"));

        ModelAndView modelAndView = new ModelAndView("home/index");
        modelAndView.addObject("msg","Users Added");
        return modelAndView;
    }

    @RequestMapping(value="/delete/{id}", method= RequestMethod.GET)
    public ModelAndView deleteUser(@PathVariable Integer id) {
        ModelAndView modelAndView = new ModelAndView("home/index");
        userService.delete(id);
        String message = "User was successfully deleted.";
        modelAndView.addObject("msg", message);
        return modelAndView;
    }
    @RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
    public ModelAndView editUserPage(@PathVariable Integer id) {
        ModelAndView modelAndView = new ModelAndView("home/edit");
        User user = userService.getUser(id);
        modelAndView.addObject("user",user);
        return modelAndView;
    }
    @RequestMapping(value="/edit/{id}", method=RequestMethod.POST)
    public ModelAndView editingUser(@ModelAttribute User user, @PathVariable Integer id) {
        ModelAndView modelAndView = new ModelAndView("home/index");
        userService.update(user);

        String message = "User was successfully edited.";
        modelAndView.addObject("msg", message);

        return modelAndView;
    }
    @RequestMapping(value="/list")
    public ModelAndView listOfTeams() {
        ModelAndView modelAndView = new ModelAndView("home/list");

        List<User> users = userService.getAllUsers();
        modelAndView.addObject("users", users);

        return modelAndView;
    }

}
