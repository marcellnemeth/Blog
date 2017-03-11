package hu.blog.web.user;

import com.google.gson.Gson;
import hu.blog.service.UserService;
import hu.blog.vo.UserResults;
import hu.blog.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class UserServlet
 */
@Controller
@RequestMapping("/UserServlet")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/new")
    public void createUser(HttpServletResponse response)
            throws ServletException, IOException {
       
        
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");

        List<UserVO> users = (List<UserVO>) userService.findAll();
        Gson gson = new Gson();
        UserResults result = new UserResults();
        result.setResults(users);
        String resultJson = gson.toJson(result);
      
        
        response.getWriter().write(resultJson);
        
        
    }


}