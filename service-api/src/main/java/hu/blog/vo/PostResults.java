package hu.blog.vo;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class PostResults {
    private List<PostVO> results = new ArrayList<>();
}
