package com.fyxt.w.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fyxt.w.controller.base.BaseController;
import com.fyxt.w.service.system.UserService;

@Controller
public class IndexController extends BaseController{

    @Autowired
    private UserService userSerivce;
    
    /**
     * 入口
     * @return
     */
    @RequestMapping(value = "/")
    public String startPage() {
        return "redirect:/sys/index";
    }

    /**
     * 登陆页
     * @return
     */
    @GetMapping("/login")
    public String loginPage(Model model) {
        return "login";
    }

    /**
     * 登陆失败
     * @return
     */
    @PostMapping("/login")
    public String login(Model model) {
        return "login";
    }

    /**
     * 首页
     * @return
     */
    @RequestMapping(value = "/sys/index")
    public String index() {

//        return "index";
          return super.getBaseIndex("/sys/info");
    }
}
