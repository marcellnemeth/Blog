package hu.blog.core.domain;


import hu.blog.core.enums.UserProfileType;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Data
@NoArgsConstructor
@Table(name = "USER_PROFILE")
public class UserProfile extends BaseEntity{

    private String type = UserProfileType.USER.getUserProfileType();

}
