package hu.blog.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.List;


@Data
@NoArgsConstructor
public class PostVO {
    private long id;
    private String name;
    private String title;
    private String textArea;
    private LocalDateTime date;
}

