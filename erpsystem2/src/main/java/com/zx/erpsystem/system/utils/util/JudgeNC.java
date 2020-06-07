package com.zx.erpsystem.system.utils.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**判断输入首字母是否为数字
 *
 */
public class JudgeNC {

    public   static   boolean   judage(String s)
    {
        Pattern pattern = Pattern.compile("[0-9]{1,}");
        Matcher matcher = pattern.matcher((CharSequence) s);
        return matcher.matches();
    }
}

