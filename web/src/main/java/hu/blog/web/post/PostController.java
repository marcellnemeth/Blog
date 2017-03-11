package hu.blog.web.post;

import hu.blog.service.PostService;
import hu.blog.vo.PostVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/")
public class PostController {

    private PostVO vo = new PostVO();
    @Autowired
    private PostService postService;

    @RequestMapping(path = "/new", method = RequestMethod.POST)
    public void createPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");

        PostForm postForm = new PostForm(request);
        vo.setName(postForm.getName());
        vo.setTitle(postForm.getTitle());
        vo.setTextArea(postForm.getTextArea());

        postService.save(vo);

        response.sendRedirect("/index.jsp");
    }

    @RequestMapping(path = "/")
    public ModelAndView readPost(){
        List<PostVO> posts = (List<PostVO>) postService.findAll();
        String text= posts.get(1).getTextArea();
        return new ModelAndView("index","posts",posts);
    }

}
