package com.cathaybk.practice.nt50335.b;

public class Sales extends Employee {

	private int bonus;
	private int payment;

	public Sales(String name, String department, int salary, int bonus) {
		super(name, department, salary);
		this.bonus = bonus / 20;
		this.payment = salary + getBonus();
	}

	@Override
	public void printInfo() {
		super.printInfo();
		System.out.println("月薪：" + getSalary());
		System.out.println("業績獎金：" + bonus);
		System.out.println("總計：" + payment);
	}

	public int getBonus() {
		return bonus;
	}

	public void setBonus(int bonus) {
		this.bonus = bonus;
	}

	public int getPayment() {
		return payment;
	}

	public void setPayment(int payment) {
		this.payment = payment;
	}

}
