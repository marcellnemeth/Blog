package hu.blog.web.post;

import hu.blog.service.PostService;
import hu.blog.vo.PostVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
public class PostController {

    private PostVO vo = new PostVO();
    @Autowired
    private PostService postService;

    @RequestMapping(path = "/post/new", method = RequestMethod.POST)
    public String createPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");

        PostForm postForm = new PostForm(request);
        vo.setName(postForm.getName());
        vo.setTitle(postForm.getTitle());
        vo.setTextArea(postForm.getTextArea());

        postService.save(vo);

        return "index";
    }

    @RequestMapping(value = "/")
    public String readPost(Model model){
        List<PostVO> posts = (List<PostVO>) postService.findAll();
        model.addAttribute("posts",posts);
        return "index";
    }

}
