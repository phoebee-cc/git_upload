package com.cathaybk.practice.nt50335.b;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

public class RandomLotto {

	public static void main(String[] args) {
		Random rand = new Random();

		System.out.print("排序前：");
		List<Integer> LottoList = new ArrayList<>();
		while (LottoList.size() < 6) {
			int LottoNumber = rand.nextInt(49) + 1;
			if (!LottoList.contains(LottoNumber)) {
				LottoList.add(LottoNumber);
			}
		}
		for (int i = 0; i < LottoList.size(); i++) {
			System.out.print(LottoList.get(i) + " ");
		}

		System.out.println();

		System.out.print("排序後：");
		Collections.sort(LottoList);
		for (int i = 0; i < LottoList.size(); i++) {
			System.out.print(LottoList.get(i) + " ");
		}
	}
}
