package com.zx.erpsystem.system.utils.exception;

/**
 * <p>
 * 系统自定义的异常类型<br>
 * 实际开发中可能要定义多种异常类型<br>
 * </p>
 */
public class CustomException extends Exception {

	/**  */
	private static final long serialVersionUID = -30306008073290892L;
	// 异常信息
	private String message;

	public CustomException(String message) {
		super(message);
		this.message = message;

	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
