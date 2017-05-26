package kz.kaznitu.lessons;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home() {
        return "home";
    }

    @RequestMapping("/services")
    public String service() {
        return "services";
    }

    @RequestMapping("/appointments")
    public String appointment() {
        return "appointments";
    }

    @RequestMapping("/schedule")
    public String schedule() {
        return "schedule";
    }

    @RequestMapping(value="/login", method= RequestMethod.GET)
    public String login() {
        return "login";
    }

}