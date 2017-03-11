package hu.blog.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Data
@NoArgsConstructor
public class PostVO {
    private String name;
    private String title;
    private String textArea;
    private Date date;
}

