package com.cathaybk.practice.nt50335.b;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

public class StudentCars {

	public static final String INSERT_CARS_SQL = "insert into STUDENT.CARS (MANUFACTURER, TYPE, MIN_PRICE, PRICE) values (?, ?, ?, ?)";

	public static final String CONN_URL = "jdbc:oracle:thin:@//localhost:1521/XE";

	public static final String SELECT_CARS_SQL = "select * from STUDENT.CARS";

	public static final String UPDATE_CARS_SQL = "update STUDENT.CARS set PRICE = ? , MIN_PRICE = ?  where MANUFACTURER = ? and TYPE = ?";

	public static final String DELETE_CARS_SQL = "delete from STUDENT.CARS where MANUFACTURER = ? and TYPE = ?";

	public static void main(String[] args) throws SQLException {
		ResultSet rs = null;
		try (Connection conn = DriverManager.getConnection(CONN_URL, "STUDENT", "student123456");) {
			try {
				conn.setAutoCommit(false);
				PreparedStatement pstmt = conn.prepareStatement(SELECT_CARS_SQL);
				rs = pstmt.executeQuery();

				List<Map<String, String>> carMapList = new ArrayList<>();
				while (rs.next()) {
					Map<String, String> carMap = new HashMap<>();
					carMap.put("MANUFACTURER", rs.getString("MANUFACTURER"));
					carMap.put("TYPE", rs.getString("TYPE"));
					carMap.put("MIN_PRICE", rs.getString("MIN_PRICE"));
					carMap.put("PRICE", rs.getString("PRICE"));
					carMapList.add(carMap);
//					System.out.println(carMap);
				}
				try (Scanner scanner = new Scanner(System.in)) {
					System.out.print("請選擇以下指令輸入：select、insert、update、delete\n");
					String string = scanner.next();
					if ("insert".equals(string)) {
						doInsert();
					} else if ("select".equals(string)) {
						doselect();
					} else if ("update".equals(string)) {
						doUpdate();
					} else {
						doDelete();
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (rs != null) {
						rs.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

	private static void doselect() throws SQLException {
		String connUrl = "jdbc:oracle:thin:@//localhost:1521/XE";
		ResultSet rs = null;

		try (Connection conn = DriverManager.getConnection(connUrl, "STUDENT", "student123456");
				PreparedStatement pstmt = conn
						.prepareStatement("select * from STUDENT.CARS where MANUFACTURER = ? and TYPE = ?");) {

			try (Scanner scanner = new Scanner(System.in)) {
				System.out.print("請輸入製造商:");
				String manufacturerString = scanner.next();
				pstmt.setString(1, manufacturerString);

				System.out.print("請輸入類型:");
				String typeString = scanner.next();
				pstmt.setString(2, typeString);
				rs = pstmt.executeQuery();

				List<Map<String, String>> carMapList = new ArrayList<>();
				while (rs.next()) {
					Map<String, String> carMap = new HashMap<>();
					carMap.put("MANUFACTURER", rs.getString("MANUFACTURER"));
					carMap.put("TYPE", rs.getString("TYPE"));
					carMap.put("MIN_PRICE", rs.getString("MIN_PRICE"));
					carMap.put("PRICE", rs.getString("PRICE"));
					carMapList.add(carMap);
					System.out.println(carMapList);
				}
			} catch (Exception e) {
				try {
					conn.rollback();
					System.out.println("查詢失敗");
				} catch (SQLException sqle) {
					sqle.printStackTrace();
				}
				e.printStackTrace();
			}
		} catch (Exception e) {
		}
	}

	private static void doInsert() throws SQLException {
		try (Connection conn = DriverManager.getConnection(CONN_URL, "STUDENT", "student123456");) {
			try {
				conn.setAutoCommit(false);
				PreparedStatement pstmt = conn.prepareStatement(INSERT_CARS_SQL);
				Scanner scanner = new Scanner(System.in);
				System.out.print("請輸入製造商:");
				String manufacturerString = scanner.next();
				pstmt.setString(1, manufacturerString);

				System.out.print("請輸入類型:");
				String typeString = scanner.next();
				pstmt.setString(2, typeString);

				System.out.print("請輸入底價:");
				BigDecimal minPriceString = scanner.nextBigDecimal();
				pstmt.setBigDecimal(3, minPriceString);

				System.out.print("請輸入售價:");
				BigDecimal priceString = scanner.nextBigDecimal();
				pstmt.setBigDecimal(4, priceString);

				pstmt.executeUpdate();
				conn.commit();
				System.out.println("新增成功");

			} catch (Exception e) {
				try {
					conn.rollback();
					System.out.println("新增失敗");
				} catch (SQLException sqle) {
					sqle.printStackTrace();
				}
				e.printStackTrace();
			}
		} catch (Exception e) {
		}
	}

	private static void doUpdate() throws SQLException {
		ResultSet rs = null;

		try (Connection conn = DriverManager.getConnection(CONN_URL, "STUDENT", "student123456");) {
			try {
				conn.setAutoCommit(false);
				PreparedStatement pstmt = conn.prepareStatement(UPDATE_CARS_SQL);
				Scanner scanner = new Scanner(System.in);

				System.out.print("請輸入製造商:");
				String manufacturerString = scanner.next();
				pstmt.setString(3, manufacturerString);

				System.out.print("請輸入類型:");
				String typeString = scanner.next();
				pstmt.setString(4, typeString);

				System.out.print("請輸入售價:");
				BigDecimal priceString = scanner.nextBigDecimal();
				pstmt.setBigDecimal(1, priceString);

				System.out.print("請輸入底價:");
				BigDecimal minPriceString = scanner.nextBigDecimal();
				pstmt.setBigDecimal(2, minPriceString);

				pstmt.executeUpdate();
				conn.commit();
				System.out.println("更新成功");

			} catch (Exception e) {
				try {
					conn.rollback();
					System.out.println("更新失敗");
				} catch (SQLException sqle) {
					sqle.printStackTrace();
				}
				e.printStackTrace();
			}
		} catch (Exception e) {
		}
	}

	private static void doDelete() throws SQLException {
		try (Connection conn = DriverManager.getConnection(CONN_URL, "STUDENT", "student123456");) {
			try {
				conn.setAutoCommit(false);
				PreparedStatement pstmt = conn.prepareStatement(DELETE_CARS_SQL);
				Scanner scanner = new Scanner(System.in);
				System.out.print("請輸入製造商:");
				String manufacturerString = scanner.next();
				pstmt.setString(1, manufacturerString);

				System.out.print("請輸入類型:");
				String typeString = scanner.next();
				pstmt.setString(2, typeString);

				pstmt.executeUpdate();
				conn.commit();
				System.out.println("刪除成功");

			} catch (Exception e) {
				try {
					conn.rollback();
					System.out.println("刪除失敗");
				} catch (SQLException sqle) {
					sqle.printStackTrace();
				}
				e.printStackTrace();
			}
		} catch (Exception e) {
		}
	}
}