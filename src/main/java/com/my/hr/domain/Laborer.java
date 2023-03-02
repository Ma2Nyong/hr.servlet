package com.my.hr.domain;

import java.time.LocalDate;

public class Laborer {
	private int laborerId;
	private String laborerName;
	private LocalDate hireDate;
	
	public Laborer(int laborerId, String laborerName, LocalDate hireDate) {
		this.laborerId = laborerId;
		this.laborerName = laborerName;
		this.hireDate = hireDate;
	}
	
	@Override
	public String toString() {
		return String.format("{\"laborerId\": %d," +
				"\"laborerName\": \"%s\"," +
				"\"hireDate\": \"%s\"}", laborerId, laborerName, hireDate);
	}
}
