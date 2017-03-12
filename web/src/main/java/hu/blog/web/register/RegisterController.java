package hu.blog.web.register;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import hu.blog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import hu.blog.vo.UserVO;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/Register")
public class RegisterController {
    @Autowired
	private UserService userService;
    private UserVO vo = new UserVO();

    @RequestMapping(value = "/new", method = RequestMethod.POST)
    protected String Register(HttpServletRequest request) throws ServletException, IOException {
	    request.setCharacterEncoding("UTF-8");
	   
	    RegisterForm register = new RegisterForm(request);
		
		vo.setFirstName(register.getFirstName());
		vo.setLastName(register.getLastName());
		vo.setUsername(register.getUsername());
		vo.setPassword(register.getPassword());
		vo.setEmail(register.getEmail());
		vo.setGender(register.getGender());
		vo.setDate_of_birth(register.getDate_of_birth());
		vo.setLocation(register.getLocation());
		vo.setPhone(register.getPhone());
		vo.setImg("https://randomuser.me/api/portraits/men/11.jpg");
		vo.setUserRole("USER");
		
		userService.save(vo);

		return "public/login";
	}

}
