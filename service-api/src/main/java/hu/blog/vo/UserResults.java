package hu.blog.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;
@Data
@NoArgsConstructor
public class UserResults {
    private List<UserVO> results = new ArrayList<>();
}
