package hu.blog.web.register;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.servlet.http.HttpServletRequest;

@Data
@NoArgsConstructor
public class RegisterForm {
    private String firstName;
    private String LastName;
    private String username;
    private String password;
    private String email;
    private String gender;
    private String date_of_birth;
    private String location;
    private String phone;

    public RegisterForm(HttpServletRequest request) {

        firstName = request.getParameter("first_name");
        LastName = request.getParameter("last_name");
        username = request.getParameter("user_name");
        password = request.getParameter("password");
        email = request.getParameter("email");

        gender = request.getParameter("sex");
        date_of_birth = request.getParameter("date");
        location = request.getParameter("address");
        phone = request.getParameter("phone");
    }
}
