package util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

	private static final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	
	/**
	 * "년-월-일"형식의 문자열을 java.util.Date로 변환한다.
	 * @param str "년-월-일" 형식의 문자열
	 * @return java.util.Date 객체
	 */
	public static Date stringToDate(String str) {
		if (str == null) {
			return null;
		}
		try {
			return dateFormat.parse(str);
		} catch (ParseException e) {
			return null;
		}
	}
	
	/**
	 * 지정된 날짜를 "년-월-일"형식의 문자열로 변환한다.
	 * @param date 날짜
	 * @return 형식화된 문자열
	 */
	public static String dateToString(Date date) {
		if (date == null) {
			return null;
		}
		return dateFormat.format(date);
	}
	
	/**
	 * java.util.Date를 java.sql.Date로 변환한다.
	 * @param date
	 * @return java.sql.Date 타입의 객체를 반환한다
	 */
	public static java.sql.Date dateToSQLDate(java.util.Date date) {
		if (date == null) {
			return null;
		}
		return new java.sql.Date(date.getTime());
	}
}
