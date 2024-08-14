package com.cathaybk.practice.nt50335.b;

import java.time.LocalDate;
import java.time.YearMonth;
import java.util.Scanner;

public class RandomMonth {

	public static void main(String[] args) {
		try (Scanner scanner = new Scanner(System.in)) {
			System.out.print("輸入介於1-12的整數m：");
			int month = scanner.nextInt();
			if (month < 1 || month > 12) {
				System.out.print("輸入的數字無效");
				return;
			}

			int year = LocalDate.now().getYear();

			System.out.println("      " + year + "年" + month + "月");
			System.out.println("--------------------");
			System.out.println(" 日　一　二　三　四　五　六");
			System.out.println("====================");

			YearMonth yearMonth = YearMonth.of(year, month);
			LocalDate firstDate = yearMonth.atDay(1);
			int daysaMonth = yearMonth.lengthOfMonth();
			int daysaWeek = firstDate.getDayOfWeek().getValue();
			int emptyDays = daysaWeek % 7;
			for (int i = 0; i < emptyDays; i++) {
				System.out.print("   ");
			}
			for (int days = 1; days <= daysaMonth; days++) {
				System.out.printf("%2d ", days);
				if ((days + emptyDays) % 7 == 0) {
					System.out.println();
				}
			}
		}
		System.out.println();
	}
}
