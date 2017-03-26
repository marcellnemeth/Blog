package hu.blog.vo;

import hu.blog.core.enums.State;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.HashSet;
import java.util.Set;

@Data
@NoArgsConstructor
public class UserVO {
    private long id;
    private String firstName;
    private String lastName;
    private String username;
    private String password;
    private String email;
    private String gender;
    private String date_of_birth;
    private String location;
    private String phone;
    private String img;
    private String state = State.ACTIVE.getState();
    private String userRole;
}
