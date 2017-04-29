package hu.blog.service;

import hu.blog.vo.PostVO;

import java.util.Collection;

public interface PostService {
    void save(PostVO vo);
    
    Collection<PostVO> findAll();

    PostVO findById(long id);
    
}
