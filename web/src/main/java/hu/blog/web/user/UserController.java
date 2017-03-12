package hu.blog.web.user;

import hu.blog.service.UserService;
import hu.blog.vo.UserVO;
import org.hibernate.annotations.SourceType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(path = "secured/secured")
    public ModelAndView showUser(HttpServletResponse response)
            throws ServletException, IOException {

        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");

        List<UserVO> users = (List<UserVO>) userService.findAll();
        System.out.println(users);
        return new ModelAndView("secured/secured","users",users);
        
        
    }


}