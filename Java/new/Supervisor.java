package com.cathaybk.practice.nt50335.b;

import java.math.BigDecimal;

public class Supervisor extends Employee {

	private BigDecimal payment;

	@Override
	public void printInfo() {
		super.printInfo();
		System.out.println("月薪：" + payment);// 拿到employee
		System.out.println("總計：" + payment);
	}

	public Supervisor(String name, String department, BigDecimal salary) {
		super(name, department, salary);
		this.payment = salary;
	}// 拿到前面

	public BigDecimal getPayment() {
		return payment;
	}

	public void setPayment(BigDecimal payment) {
		this.payment = payment;
	}
}
