package hu.blog.web.login;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.servlet.http.HttpServletRequest;
import java.io.Serializable;

@Data
@NoArgsConstructor
public class LoginForm implements Serializable {

    private static final long serialVersionUID = 1L;

    private String username;

    private String password;

    public LoginForm(HttpServletRequest request) {
        username = request.getParameter("username");
        password = request.getParameter("password");
    }
}
