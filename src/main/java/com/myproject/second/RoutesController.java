package com.myproject.second;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

<<<<<<< HEAD
@Controller
public class RoutesController implements ErrorController {
    private static final String PATH = "/error";

    @RequestMapping(value = PATH)
    public String error() {
    	System.out.println(11);
        return "forward:/";
    }

    public String getErrorPath() {
        return PATH;
    }
}
=======
//@Controller
//public class RoutesController implements ErrorController {
//    private static final String PATH = "/error";
//
//    @RequestMapping(value = PATH)
//    public String error() {
//        return "forward:/";
//    }
//
//    public String getErrorPath() {
//        return PATH;
//    }
//}
>>>>>>> 33adc672e943decf69f5f2b388bc65c521cc279d
