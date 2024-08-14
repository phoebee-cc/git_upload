package com.cathaybk.practice.nt50335.b;

import java.math.BigDecimal;

public class Sales extends Employee {

	private BigDecimal bonus;
	private BigDecimal payment;

	public Sales(String name, String department, BigDecimal salary, BigDecimal bonus) {
		super(name, department, salary);
		this.bonus = bonus.multiply(new BigDecimal("0.05"));
		this.payment = salary.add(getBonus());
	}

	@Override
	public void printInfo() {
		super.printInfo();
		System.out.println("業績獎金：" + bonus.stripTrailingZeros().toPlainString());
		System.out.println("總計：" + payment.stripTrailingZeros().toPlainString());
	}

	public BigDecimal getBonus() {
		return bonus;
	}

	public void setBonus(BigDecimal bonus) {
		this.bonus = bonus;
	}

	public BigDecimal getPayment() {
		return payment;
	}

	public void setPayment(BigDecimal payment) {
		this.payment = payment;
	}

}
