package hu.blog.vo;

import hu.blog.core.enums.UserProfileType;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Created by marci on 2017.03.26..
 */
@Data
@NoArgsConstructor
public class UserProfileVO {
    private int id;
    private String type = UserProfileType.USER.getUserProfileType();
}
