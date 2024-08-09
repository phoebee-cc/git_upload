package com.cathaybk.practice.nt50335.b;

public class NineNineTable {

	public static void main(String[] args) {
		for (int i = 1; i < 10; i++) {
			for (int j = 2; j < 10; j++) {
				int answer = i * j;
				if (answer < 10) {
					System.out.printf(j + "*" + i + "=" + answer + "  ");
				} else {
					System.out.printf(j + "*" + i + "=" + answer + " ");
				}
			}
			System.out.println();
		}
	}
}
