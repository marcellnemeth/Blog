package hu.blog.impl;



import hu.blog.core.domain.PostEntity;
import hu.blog.core.repository.PostRepository;
import hu.blog.mapper.PostMapper;

import hu.blog.service.PostService;
import hu.blog.vo.PostVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.List;

@Service
public class PostServiceImpl implements PostService {

    @Autowired
    PostRepository postRepository;


    @Override
    public void save(PostVO vo) {
        postRepository.save(PostMapper.toDto(vo));

    }
    @Override
    public Collection<PostVO> findAll()  {
        List<PostEntity> posts = null;

        posts = postRepository.findAll();

        return PostMapper.toVo(posts);
    }
}
