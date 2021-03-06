package com.fyxt.w.base.shiro;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.fyxt.w.common.config.Constants;
import com.fyxt.w.common.utils.PasswordHelper;
import com.fyxt.w.common.utils.SessionUtils;
import com.fyxt.w.entity.common.UserStatus;
import com.fyxt.w.entity.system.User;
import com.fyxt.w.service.system.RoleService;
import com.fyxt.w.service.system.UserService;

/**
 * Shiro 认证
* @author ZhangBo   
* @date 2015年5月24日 下午4:18:55
 */
public class ShiroDbRealm extends AuthorizingRealm {
    
    @Autowired
    private UserService userService;
    
    @Autowired
    private RoleService roleService;
    
    @Autowired
    private PasswordHelper passwordHelper;
    
    /**
     * 认证
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authcToken){
        UsernamePasswordToken token = (UsernamePasswordToken) authcToken;
        
        //校验账号
        User user = this.validateUser(token);
        token.setPassword(user.getPassword().toCharArray());
        //用户菜单
        user.setRole(this.roleService.getRoleMenus(user.getRole().getId()));
        SessionUtils.setSessionAttribute(Constants.USER_MENUS, user.getRole().getUserMenus());
        
        return new SimpleAuthenticationInfo(user, user.getPassword(), getName());
    }

    /**
     * 授权
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals){
        User user = (User) principals.getPrimaryPrincipal();
        if (user != null) {
            SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
            info.addStringPermissions(user.getRole().getUserPermissions());
            return info;
        }
        return null;
    }
    
    
    //验证用户
    private User validateUser(UsernamePasswordToken token){
        User user = null;
        
        try{
            user = this.userService.findByLoginName(token.getUsername());
        }catch(Exception e){
            throw new AuthenticationException("账号异常");
        }
        
        if(user == null){
            throw new UnknownAccountException("账号不存在");
        }
        
        if(user.getStatus() == UserStatus.CLOSE){
            throw new LockedAccountException("账号已禁用");
        }
        
        String newPass = this.passwordHelper.getNewPassword(token.getPassword(), user.getCredentialsSalt());
        if(newPass.equals(user.getPassword())){
            return user;
        }
        throw new IncorrectCredentialsException("密码不正确");
    }
    
}
