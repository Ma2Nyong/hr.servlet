package com.my.hr.domain;

public class NoneException extends RuntimeException {
	public NoneException(String msg) {
		super(msg);
	}
}//노동자가 존재하지 않음을 나타내는 exception
