package hu.blog.web.post;

import hu.blog.service.PostService;
import hu.blog.vo.PostVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

@Controller
public class PostController {

    private PostVO vo = new PostVO();
    @Autowired
    private PostService postService;

    @RequestMapping(path = "/post", method = RequestMethod.POST)
    public String createPost(HttpServletRequest request) throws IOException {
        PostForm postForm = new PostForm(request);
        vo.setName(postForm.getName());
        vo.setTitle(postForm.getTitle());
        vo.setTextArea(postForm.getTextArea());
        vo.setDate(LocalDateTime.now());
        postService.save(vo);

        return "redirect:/";
    }

    @RequestMapping(value = "/")
    public String readPost(Model model){
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
        List<PostVO> posts = (List<PostVO>) postService.findAll();
        List<String> dates = new ArrayList<>();
        for(PostVO post: posts){
            dates.add(post.getDate().format(formatter));
        }
        model.addAttribute("dates",dates);
        model.addAttribute("posts",posts);
        return "index";
    }

    @RequestMapping(value = "/posts/{postId}")
    public String showPost(@PathVariable long postId, Model model){
        PostVO postVO = postService.findById(postId);
        model.addAttribute("post",postVO);
        return "viewPost";
    }

}
