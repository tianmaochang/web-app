package com.fyxt.w.controller.info;

import com.fyxt.w.controller.base.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/******
 * 信息模块
 */
@Controller("InfoIndexController")
public class IndexController extends BaseController {
    
    @GetMapping("/sys/info")
    public String index(){
        return super.getBaseIndex("/sys/info");
    }
}
