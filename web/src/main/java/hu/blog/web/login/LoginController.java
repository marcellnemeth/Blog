package hu.blog.web.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hu.blog.service.UserService;
import hu.blog.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Servlet implementation class Login
 */
@Controller
public class LoginController {

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage(){
		return "public/login";
	}

	@RequestMapping(value = "/login?error", method = RequestMethod.GET)
	public String failedLogin(){
		return "public/login";
	}

}
