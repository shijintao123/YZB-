package com.yzb.pojo.vo;
/**
 * 
 * @author sjt
 * 状态表
 * @param <T>
 */
public class ResultInfo<T> {
	
	private Integer code;
	
	private String msg;

	private T result;

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public T getResult() {
		return result;
	}

	public void setResult(T result) {
		this.result = result;
	}

	@Override
	public String toString() {
		return "ResultInfo [code=" + code + ", msg=" + msg + ", result="
				+ result + "]";
	}
	
	
}
