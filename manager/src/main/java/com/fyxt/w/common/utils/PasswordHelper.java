package com.fyxt.w.common.utils;

import org.apache.shiro.crypto.RandomNumberGenerator;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.springframework.stereotype.Service;

import com.fyxt.w.entity.system.User;

/**
 * 加密服务
* @author ZhangBo   
* @date 2014年7月8日 上午10:44:58
 */
@Service
public class PasswordHelper {

    private RandomNumberGenerator randomNumberGenerator = new SecureRandomNumberGenerator();

    private String algorithmName = "md5";
    
    private int hashIterations = 2;

    public void setRandomNumberGenerator(RandomNumberGenerator randomNumberGenerator) {
        this.randomNumberGenerator = randomNumberGenerator;
    }
    
    public RandomNumberGenerator getRandomNumberGenerator() {
		return randomNumberGenerator;
	}


	public void setAlgorithmName(String algorithmName) {
        this.algorithmName = algorithmName;
    }

    public void setHashIterations(int hashIterations) {
        this.hashIterations = hashIterations;
    }
    
    public String getNewPassword(Object source, Object salt){
        String newPassword = new SimpleHash(
                algorithmName,
                source,
                ByteSource.Util.bytes(salt),
                hashIterations).toHex();
        return newPassword;
    }

    public void encryptPassword(User user){
        user.setSalt(randomNumberGenerator.nextBytes().toHex());
        String newPassword = getNewPassword(user.getPassword(), user.getCredentialsSalt());
        user.setPassword(newPassword);
    }
    
    public static void main(String[] args) {
//        PasswordHelper help = new PasswordHelper();
//        String salt = help.randomNumberGenerator.nextBytes().toHex();
//
//        System.out.println("salt:" + salt);
//        System.out.println(salt.length());
        PasswordHelper ph = new PasswordHelper();
        String newPassword = ph.getNewPassword("12345678", "adminc7ccf98f7201cfbb51d8227240162d46");
        System.out.println(newPassword);
        //System.out.println("pass:" + help.getNewPassword("airport_123", "airport" + salt));
    }
}
