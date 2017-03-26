package hu.blog.core.domain;

import hu.blog.core.enums.State;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@Table(name = "MEMBER", schema = "public")
public class UserEntity extends BaseEntity{
    @Column(name = "first_name")
    private String firstName;
    @Column(name = "last_name")
    private String lastName;
    private String username;
    private String password;
    private String email;
    private String gender;
    @Column(name = "date_of_birth")
    private LocalDate dateOfBirth;
    private String location;
    private String phone;
    private String img;
    private String state = State.ACTIVE.getState();
    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "MEMBER_USER_PROFILE",
            joinColumns = {@JoinColumn(name = "USER_ID")},
            inverseJoinColumns = {@JoinColumn(name = "USER_PROFILE_ID")})
    private Set<UserProfile> userProfiles = new HashSet<>();

}