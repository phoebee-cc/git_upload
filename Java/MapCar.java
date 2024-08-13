package com.cathaybk.practice.nt50335.b;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;

public class MapCar {

	public static void main(String[] args) {
		String filePath = "C:\\Users\\Admin\\Downloads\\Java評量_第6題cars.csv";
		List<Map<String, String>> carMapList = readCsvToList(filePath);
		List<Map<String, Object>> result = new ArrayList<>();
		Collections.sort(carMapList, new Comparator<Map<String, String>>() {
			public int compare(final Map<String, String> o1, final Map<String, String> o2) {
				return o2.get("Price").compareTo(o1.get("Price"));
			}
		});

		try (FileOutputStream fileOutputStream = new FileOutputStream("C:\\Users\\Admin\\Desktop\\cars2.csv");
				OutputStreamWriter outPutStreamWriter = new OutputStreamWriter(fileOutputStream, "UTF-8");
				BufferedWriter bufferedWriter = new BufferedWriter(outPutStreamWriter)) {

			StringBuilder sb = new StringBuilder();
			bufferedWriter.write("Manufacturer, Type, Min.Price, Price");
			bufferedWriter.newLine();
			for (Map<String, String> carMap : carMapList) {
				sb.append(carMap.get("Manufacturer")).append(',').append(carMap.get("Type")).append(',')
						.append(carMap.get("Min.Price")).append(',').append(carMap.get("Price")).append("\n");
				bufferedWriter.write(sb.toString());
				sb.setLength(0);
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.printf("%-15s %-15s %10s %10s\n", "Manufacturer", "TYPE", "Min.PRICE", "PRICE");
		Map<String, List<Map<String, String>>> carByManufacturer = new TreeMap<>();
		for (Map<String, String> map : carMapList) {
			String manufacturer = map.get("Manufacturer");
			List<Map<String, String>> carInManufacturer = carByManufacturer.get(manufacturer);
			if (carInManufacturer == null) {
				carInManufacturer = new ArrayList<>();
				carByManufacturer.put(manufacturer, carInManufacturer);
			}
			carInManufacturer.add(map);
		}
		BigDecimal minPriceSum = BigDecimal.ZERO;
		BigDecimal priceSum = BigDecimal.ZERO;
		BigDecimal minPriceTotal = BigDecimal.ZERO;
		BigDecimal priceTotal = BigDecimal.ZERO;
		for (Entry<String, List<Map<String, String>>> entry : carByManufacturer.entrySet()) {
			String key = entry.getKey();
			List<Map<String, String>> list = carByManufacturer.get(key);
			minPriceSum = BigDecimal.ZERO;
			priceSum = BigDecimal.ZERO;
			for (int i = 0; i < list.size(); i++) {
				System.out.printf("%-15s %-15s %10s %10s\n", entry.getKey(), list.get(i).get("Type"),
						list.get(i).get("Min.Price"), list.get(i).get("Price"));
				minPriceSum = minPriceSum.add(new BigDecimal(list.get(i).get("Min.Price")));
				priceSum = priceSum.add(new BigDecimal(list.get(i).get("Price")));
			}
			minPriceTotal = minPriceTotal.add(minPriceSum);
			priceTotal = priceTotal.add(priceSum);
			System.out.printf("%-15s %25s %10s\n", "小計", minPriceSum, priceSum);
		}
		System.out.printf("%-15s %25s %10s\n", "合計", minPriceTotal, priceTotal);

	}

	public static List<Map<String, String>> readCsvToList(String filePath) {
		List<Map<String, String>> carMapList = new ArrayList<>();

		try (BufferedReader br = new BufferedReader(new FileReader(filePath))) {
			String[] headers = br.readLine().split(",");
			String line;
			while ((line = br.readLine()) != null) {
				String[] values = line.split(",");
				Map<String, String> carMap = new HashMap<>();
				for (int i = 0; i < headers.length; i++) {
					carMap.put(headers[i], values[i]);
				}
				carMapList.add(carMap);
			}
		} catch (IOException e) {
			System.err.println("Error reading the CSV file: " + e.getMessage());
		}

		return carMapList;
	}

}