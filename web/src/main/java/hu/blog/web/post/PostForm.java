package hu.blog.web.post;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.servlet.http.HttpServletRequest;

@Data
@NoArgsConstructor
public class PostForm {
    private String name;
    private String title;
    private String textArea;

    public PostForm(HttpServletRequest request) {
        name = request.getParameter("blogFormName");
        title = request.getParameter("blogFormTitle");
        textArea = request.getParameter("blogFormPost");
    }
}
