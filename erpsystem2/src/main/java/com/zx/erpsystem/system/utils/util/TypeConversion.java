package com.zx.erpsystem.system.utils.util;

/**
 * @author Zhang Zhou
 * @date 2020-03-13 19:07
 */
public class TypeConversion {
    /**
     * string数组转为int
     * @param arrs
     * @return
     */

    public static int[]  stringarraysToInt(String[] arrs){
        int[] ints = new int[arrs.length];
        for(int i=0;i<arrs.length;i++){
            ints[i] = Integer.parseInt(arrs[i]);
        }
        return ints;
    }

}


