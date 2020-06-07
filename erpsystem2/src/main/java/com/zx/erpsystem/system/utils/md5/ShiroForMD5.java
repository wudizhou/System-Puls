package com.zx.erpsystem.system.utils.md5;

import org.apache.shiro.crypto.hash.SimpleHash;

/**
 * @author Zhang Zhou
 * @date 2020-05-07 14:00
 */
public class ShiroForMD5 {
    private static String hash1="MD5";
    private static String hash2="SHA1";
    private static int hashInter1 = 1024;
    /**
     * 得到MD5加密字符串
     * @param cred
     * @param salt
     * @return
     */
    public static SimpleHash getMD5Password( Object cred, Object salt){
        SimpleHash sh= new SimpleHash(hash1, cred, salt,  hashInter1);
        return sh;
    }


}
