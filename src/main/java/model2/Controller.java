package model2;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * 모든 Controller를 구현할 메소드가 정의된 인터페이스다.
 * @author eungs
 *
 */
public interface Controller {
	
	/**
	 * 클라이언트의 요청을 처리하는 메소드다.
	 * 모든 컨트롤러는 execute(request, response) 메소드를 재정의해서 클라이언트의 요청을 처리해야 한다.
	 * execute(request, response) 메소드가 반환하는 값은 요청을 처리 후 이동할 JSP페이지 경로 혹은 재요청할 URI이다.
	 * @param request 요청 객체
	 * @param response 응답 객체
	 * @return JSP 페이지 경로 혹은 재요청할 URI
	 * @throws Exception
	 */
	String execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
