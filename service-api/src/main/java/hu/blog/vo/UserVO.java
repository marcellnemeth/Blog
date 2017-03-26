package hu.blog.vo;

import hu.blog.core.domain.UserProfile;
import hu.blog.core.enums.State;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

@Data
@NoArgsConstructor
public class UserVO {
    private int id;
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
    private Set<UserProfile> userProfiles = new HashSet<>();
}
