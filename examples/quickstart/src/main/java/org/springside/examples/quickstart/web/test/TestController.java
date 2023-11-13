package org.springside.examples.quickstart.web.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/test")
public class TestController {

    @RequestMapping
    public String welcome() {
        
        return "test/welcome";
    }
}
