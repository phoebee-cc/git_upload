package com.cathaybk.practice.nt50335.b;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class HRmain {

	public static void main(String[] args) {
		StringBuilder sb = new StringBuilder();

		List<Employee> employeeList = new ArrayList<>();
		employeeList.add(new Sales("張志誠", "信用卡部", new BigDecimal(35000), new BigDecimal(6000)));
		employeeList.add(new Sales("林大鈞", "保代部", new BigDecimal(38000), new BigDecimal(4000)));
		employeeList.add(new Supervisor("李中白", "資訊部", new BigDecimal(65000)));
		employeeList.add(new Supervisor("林小中", "理財部", new BigDecimal(80000)));
		for (Employee employee : employeeList) {
			employee.printInfo();

		}

		try (FileOutputStream fileOutputStream = new FileOutputStream("C:\\Users\\Admin\\Desktop\\output.csv");
				OutputStreamWriter outPutStreamWriter = new OutputStreamWriter(fileOutputStream, "UTF-8");
				BufferedWriter bufferedWriter = new BufferedWriter(outPutStreamWriter)) {

			fileOutputStream.write(0xef);
			fileOutputStream.write(0xbb);
			fileOutputStream.write(0xbf);

			for (Employee employee : employeeList) {
				if (employee instanceof Supervisor) {
					sb.append(employee.getName()).append(',').append(((Supervisor) employee).getPayment()).append('\n');
					bufferedWriter.write(sb.toString());
					sb.setLength(0);
				} else if (employee instanceof Sales) {
					sb.append(employee.getName()).append(',').append(((Sales) employee).getPayment()).append('\n');
					bufferedWriter.write(sb.toString());
					sb.setLength(0);
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
