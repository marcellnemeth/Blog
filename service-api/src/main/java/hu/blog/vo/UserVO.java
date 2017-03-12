package hu.blog.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@NoArgsConstructor
public class UserVO {
    private int id;
    private String firstName;
    private String LastName;
    private String username;
    private String password;
    private String email;
    private String gender;
    private String date_of_birth;
    private String location;
    private String phone;
    private String img;
    private String userRole;
}
