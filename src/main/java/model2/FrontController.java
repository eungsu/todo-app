package model2;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import com.hta.todo.controller.HomeController;
import com.hta.todo.controller.LoginController;
import com.hta.todo.controller.LogoutController;
import com.hta.todo.controller.TodoCompleteController;
import com.hta.todo.controller.TodoDeleteController;
import com.hta.todo.controller.TodoDetailController;
import com.hta.todo.controller.TodoFormController;
import com.hta.todo.controller.TodoInsertController;
import com.hta.todo.controller.TodoListController;
import com.hta.todo.controller.TodoModifyController;
import com.hta.todo.controller.TodoModifyFormController;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "*.hta")
public class FrontController extends HttpServlet {
	
	Map<String, Controller> controllers = new HashMap<String, Controller>();
	
	public FrontController() {

		controllers.put("/todo-app/home.hta", new HomeController());
		controllers.put("/todo-app/loginform.hta", new ForwardController("loginform.jsp"));
		controllers.put("/todo-app/login.hta", new LoginController());
		controllers.put("/todo-app/logout.hta", new LogoutController());
		controllers.put("/todo-app/todo/list.hta", new TodoListController());
		controllers.put("/todo-app/todo/form.hta", new TodoFormController());
		controllers.put("/todo-app/todo/insert.hta", new TodoInsertController());
		controllers.put("/todo-app/todo/detail.hta", new TodoDetailController());
		controllers.put("/todo-app/todo/delete.hta", new TodoDeleteController());
		controllers.put("/todo-app/todo/modifyform.hta", new TodoModifyFormController());
		controllers.put("/todo-app/todo/modify.hta", new TodoModifyController());
		controllers.put("/todo-app/todo/complete.hta", new TodoCompleteController());
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("FrontController??? service(request, response) ?????????");
		
		String uri = request.getRequestURI();
		System.out.println("?????? URI: " + uri);
		
		Controller controller = controllers.get(uri);
		if (controller == null) {
			throw new ServletException("["+uri+"]??? ???????????? ??????????????? ???????????? ????????????.");
		}
		System.out.println("???????????? ????????????: " + controller.getClass().getName());
		
		try {
			String path = controller.execute(request, response);
			System.out.println("????????? ??????: " + path);
			
			if (path == null || path.isBlank()) {
				throw new ServletException("??????????????? ???????????? ????????? null????????? ??????????????????.");
			}

			if (path.startsWith("redirect:")) {
				path = path.replace("redirect:", "");
				response.sendRedirect(path);
			} else {
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/views/" + path);
				requestDispatcher.forward(request, response);				
			}
			
			
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}
}
