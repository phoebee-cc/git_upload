package com.cathaybk.practice.nt50335.b;

public class Employee implements Iwork {

	private String name;
	private String department;
	private int salary;

	@Override
	public void printInfo() {
		System.out.printf("薪資單\n姓名：%s  工作部門： %s\n", name, department);

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

	public int getSalary() {
		return salary;
	}

	public Employee(String name, String department, int salary) {
		super();
		this.name = name;
		this.department = department;
		this.salary = salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

}
