package com.cathaybk.practice.nt50335.b;

import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Random;
import java.util.Set;
import java.util.TreeSet;

public class NewRandomLotto {

	public static void main(String[] args) {

		Random rand = new Random();

		System.out.print("排序前：");
		Set<Integer> lottoSet = new HashSet<Integer>();
		while (lottoSet.size() < 6) {
			lottoSet.add(rand.nextInt(49) + 1);
		}
		printSet(lottoSet);

		System.out.println();

		System.out.print("排序後：");
		Set<Integer> newLottoSet = new TreeSet<>(new Comparator<Integer>() {
			@Override
			public int compare(Integer o1, Integer o2) {
				return o2.compareTo(o1);
			}
		});
		newLottoSet.addAll(lottoSet);
		printSet(newLottoSet);
	}

	private static void printSet(Set<Integer> lottoSet) {
		Iterator<Integer> iterator = lottoSet.iterator();
		while (iterator.hasNext()) {
			Integer integer = iterator.next();
			System.out.print(integer + " ");
		}

	}

}
