package hu.blog.web.login;

import java.io.IOException;

import javax.net.ssl.HandshakeCompletedEvent;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hu.blog.service.UserService;
import hu.blog.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Servlet implementation class Login
 */
@Controller
public class LoginController {

	@Autowired
	private UserService userService;

	@RequestMapping(path = "/Login")
	public String login(HttpServletRequest request,HttpServletResponse response){
		String username = request.getParameter("username");
		UserVO user = userService.findByUserName(username);
		if (user != null){
			request.getSession().setAttribute("user",user);
			System.out.println(user);
		}

		return "redirect:/secured/secured.jsp";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage(Model model){
		
		return "redirect:public/login.jsp";
	}



}
