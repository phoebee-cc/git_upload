package com.cathaybk.practice.nt50335.b;

import java.math.BigDecimal;

public class Employee implements IWork {

	private String name;
	private String department;
	private BigDecimal salary;

	public Employee(String name, String department, BigDecimal salary) {
		super();
		this.name = name;
		this.department = department;
		this.salary = salary;
	}

	@Override
	public void printInfo() {
		System.out.println("薪資單\n姓名：" + name + " 工作部門：" + department + "\n月薪：" + salary);

	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public BigDecimal getSalary() {
		return salary;
	}

	public void setSalary(BigDecimal salary) {
		this.salary = salary;
	}

}
