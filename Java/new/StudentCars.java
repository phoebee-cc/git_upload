package com.cathaybk.practice.nt50335.b;

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

	public static final String SELECT_CARS_SQL = "select MANUFACTURER, TYPE, MIN_PRICE, PRICE from STUDENT.CARS";

	public static final String SELECT_CARS_SQL2 = "select MANUFACTURER, TYPE, MIN_PRICE, PRICE from STUDENT.CARS where MANUFACTURER = ? and TYPE = ?";

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
				}
				try (Scanner scanner = new Scanner(System.in)) {
					System.out.print("請選擇以下指令輸入：select、insert、update、delete\n");
					String string = scanner.next();
					if ("insert".equals(string)) {
						doInsert(conn);
					} else if ("select".equals(string)) {
						doSelect(conn);
					} else if ("update".equals(string)) {
						doUpdate(conn);
					} else if ("delete".equals(string)) {
						doDelete(conn);
					} else {
						System.out.println("指令錯誤");
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

	private static void doSelect(Connection conn) throws SQLException {
		ResultSet rs = null;

		try (PreparedStatement pstmt = conn.prepareStatement(SELECT_CARS_SQL2);) {

			try (Scanner scanner = new Scanner(System.in)) {
				System.out.print("請輸入製造商:");
				pstmt.setString(1, scanner.next());

				System.out.print("請輸入類型:");
				pstmt.setString(2, scanner.next());
				rs = pstmt.executeQuery();

				while (rs.next()) {
					Map<String, String> carMap = new HashMap<>();
					carMap.put("MANUFACTURER", rs.getString("MANUFACTURER"));
					carMap.put("TYPE", rs.getString("TYPE"));
					carMap.put("MIN_PRICE", rs.getString("MIN_PRICE"));
					carMap.put("PRICE", rs.getString("PRICE"));
					System.out
							.println("Manufacturer:" + rs.getString("MANUFACTURER") + ", Type:" + rs.getString("TYPE"));
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
			e.printStackTrace();
		}
	}

	private static void doInsert(Connection conn) throws SQLException {

		try (PreparedStatement pstmt = conn.prepareStatement(INSERT_CARS_SQL);) {
			conn.setAutoCommit(false);
			try (Scanner scanner = new Scanner(System.in)) {
				System.out.print("請輸入製造商:");
				pstmt.setString(1, scanner.next());

				System.out.print("請輸入類型:");
				pstmt.setString(2, scanner.next());

				System.out.print("請輸入底價:");
				pstmt.setBigDecimal(3, scanner.nextBigDecimal());

				System.out.print("請輸入售價:");
				pstmt.setBigDecimal(4, scanner.nextBigDecimal());

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
			e.printStackTrace();
		}
	}

	private static void doUpdate(Connection conn) throws SQLException {

		try (PreparedStatement pstmt = conn.prepareStatement(UPDATE_CARS_SQL);) {
			conn.setAutoCommit(false);
			try (Scanner scanner = new Scanner(System.in)) {
				System.out.print("請輸入製造商:");
				pstmt.setString(3, scanner.next());

				System.out.print("請輸入類型:");
				pstmt.setString(4, scanner.next());

				System.out.print("請輸入售價:");
				pstmt.setBigDecimal(1, scanner.nextBigDecimal());

				System.out.print("請輸入底價:");
				pstmt.setBigDecimal(2, scanner.nextBigDecimal());

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
			e.printStackTrace();
		}
	}

	private static void doDelete(Connection conn) throws SQLException {

		try (PreparedStatement pstmt = conn.prepareStatement(DELETE_CARS_SQL);) {
			conn.setAutoCommit(false);
			try (Scanner scanner = new Scanner(System.in)) {
				System.out.print("請輸入製造商:");
				pstmt.setString(1, scanner.next());

				System.out.print("請輸入類型:");
				pstmt.setString(2, scanner.next());

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
			e.printStackTrace();
		}
	}
}