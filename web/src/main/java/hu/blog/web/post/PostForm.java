package hu.blog.web.post;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;

@Data
@NoArgsConstructor
public class PostForm {
    private String name;
    private String title;
    private String textArea;

    public PostForm(HttpServletRequest request) throws UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");
        name = request.getParameter("blogFormName");
        title = request.getParameter("blogFormTitle");
        textArea = request.getParameter("blogFormPost");
    }
}
