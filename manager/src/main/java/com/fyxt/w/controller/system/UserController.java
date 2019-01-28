package com.fyxt.w.controller.system;

import java.util.Date;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fyxt.w.common.config.Constants;
import com.fyxt.w.common.utils.PasswordHelper;
import com.fyxt.w.common.utils.SessionUtils;
import com.fyxt.w.common.vo.MessageStatus;
import com.fyxt.w.common.vo.PasswordVo;
import com.fyxt.w.controller.base.BaseController;
import com.fyxt.w.entity.common.UserStatus;
import com.fyxt.w.entity.system.User;
import com.fyxt.w.service.system.DepartmentService;
import com.fyxt.w.service.system.RoleService;
import com.fyxt.w.service.system.UserService;

/**
 * 系统用户
* @author ZhangBo   
* @date 2017年4月6日 上午10:31:21
 */
@Controller
@RequestMapping(value = "/sys/system/user")
public class UserController extends BaseController{
    
    @Autowired
	private UserService userService;
    
    @Autowired
    private DepartmentService departmentService;
    
    @Autowired
    private PasswordHelper passwordHelper;
    
    @Autowired
    private RoleService roleService;
    
    private void setModel(Model model){
        model.addAttribute("roles", this.roleService.findAll());
        model.addAttribute("departmentsTree", super.buildTree(this.departmentService.findTree()));
    }

	@GetMapping("/create")
	public String createForm(Model model) {
	    setModel(model);
		return "system/user/form";
	}

	@PostMapping("/create")
	public String create(User user, BindingResult result, Model model, RedirectAttributes attrs) {
	    User temp = this.userService.findByLoginName(user.getLoginName());
        if(temp != null){
            super.addMessage(model, MessageStatus.WARN, "登录名已存在，请更换");
            setModel(model);
            return "system/user/form";
        }
	    
        passwordHelper.encryptPassword(user);//加密密码
        user.setCreateDate(new Date());
		userService.save(user);
		super.addMessage(attrs, "保存用户成功");
		return "redirect:/sys/system/user";
	}

	@GetMapping("/update/{pid}")
	public String updateForm(@PathVariable("pid") Long id, Model model) {
		model.addAttribute("user", userService.get(id));
		setModel(model);
		return "system/user/form";
	}
	
	@PostMapping("/update/{pid}")
    public String update(User user, BindingResult result, Model model, RedirectAttributes attrs) {
        userService.update(user);
        super.addMessage(attrs, "更新用户成功");
        return "redirect:/sys/system/user";
    }

	@GetMapping("/delete/{pid}")
	public String delete(@PathVariable("pid") Long id, RedirectAttributes attrs) {
	    User user = userService.get(id);
	    if(user != null && user.getLoginName().equals(Constants.ADMIN)){
	        super.addMessage(attrs, MessageStatus.WARN, "管理员用户不可以删除");
	        return "redirect:/sys/system/user";
	    }
	    
	    this.userService.delete(id);
        super.addMessage(attrs, "删除用户成功");
		return "redirect:/sys/system/user";
	}
	
	//初始化密码
	@GetMapping("/init")
    public String initPassword(User user, RedirectAttributes attrs) {
	    user.filterUsers();
        for(User u : user.getUsers()){
            u.setPassword(Constants.INIT_PASSWORD);
            passwordHelper.encryptPassword(u);//加密密码
        }
        this.userService.initPasswordBatch(user.getUsers());
        super.addMessage(attrs, "密码初始化成功, 默认为：" + Constants.INIT_PASSWORD);
        return "redirect:/sys/system/user";
    }
	
	//启用
	@GetMapping("/open")
	public String open(User user, RedirectAttributes attrs) {
	    user.filterUsers();
	    for(User u : user.getUsers()){
	        u.setStatus(UserStatus.OPEN);
	    }
	    
	    this.userService.updateUserStatusBatch(user.getUsers());
	    super.addMessage(attrs, "启用成功");
	    return "redirect:/sys/system/user";
	}
	
	//禁用
    @GetMapping("/close")
    public String close(User user, RedirectAttributes attrs) {
        user.filterUsers();
        for(User u : user.getUsers()){
            u.setStatus(UserStatus.CLOSE);
        }
        
        this.userService.updateUserStatusBatch(user.getUsers());
        super.addMessage(attrs, "禁用成功");
        return "redirect:/sys/system/user";
    }
    
    //修改密码
    @PostMapping("/modifyPassword")
    @ResponseBody
    public PasswordVo modifyPassword(User user, RedirectAttributes attrs) {
        PasswordVo vo = new PasswordVo();
        if(StringUtils.isBlank(user.getPassword()) || StringUtils.isBlank(user.getRePassword()) || StringUtils.isBlank(user.getReTwoPassword())){
            vo.setMessage("密码不能为空");
            return vo;
        }
        
        if(!user.getRePassword().equals(user.getReTwoPassword())){
            vo.setMessage("两次新密码输入不一致");
            return vo;
        }
        
        User sessionUser = SessionUtils.getUser();
        String saltPass = passwordHelper.getNewPassword(user.getPassword(), sessionUser.getCredentialsSalt());
        if(!sessionUser.getPassword().equals(saltPass)){
            vo.setMessage("旧密码输入不正确");
            return vo;
        }
        
        sessionUser.setPassword(user.getRePassword());
        passwordHelper.encryptPassword(sessionUser);
        
        this.userService.modifyPassword(sessionUser);
        vo.setMessage("密码修改成功");
        vo.setResult(Boolean.TRUE);
        return vo;
    }
	
	@RequestMapping
    public String list(Model model, User user) {
	    user.getIsNot().add(Constants.ADMIN);
	    model.addAttribute("page", this.userService.findPage(user));
	    
	    this.setModel(model);
        return "system/user/list";
    }
}
