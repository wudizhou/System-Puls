package com.zx.erpsystem.system.constant;

/**
 * 审核状态（待审核、审核通过、审核失败）
 * @author XIANGXIN
 * @date 2020/4/3 - 16:37
 */
public interface CheckStatus {
    /**
     * 待审核
     */
    String CHECK_PENDING = "0";

    /**
     * 审核通过
     */
    String CHECK_SUCCESS = "1";

    /**
     * 审核失败
     */
    String CHECK_FAILE = "2";

    /**
     * 待审核
     */
    String CHECK_PENDING_CHINESE = "待审核";

    /**
     * 审核通过
     */
    String CHECK_SUCCESS_CHINESE = "审核通过";

    /**
     * 审核失败
     */
    String CHECK_FAILE_CHINESE = "审核失败";
}
