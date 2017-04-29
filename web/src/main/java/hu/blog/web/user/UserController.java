package hu.blog.web.user;

import hu.blog.service.UserService;
import hu.blog.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping(path = "/users")
    public String showUser(HttpServletResponse response,Model model)
            throws ServletException, IOException {

        response.setCharacterEncoding("UTF-8");

        List<UserVO> users = (List<UserVO>) userService.findAll();
        model.addAttribute("users",users);
        return "secured";
    }

    @RequestMapping(value = "/secured/{userId}")
    public void userById(@PathVariable long userId,Model model){
        UserVO userVO = userService.findById(userId);
        model.addAttribute("userId",userVO);
    }

}
