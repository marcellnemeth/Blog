package hu.blog.service;

import hu.blog.vo.UserVO;

import java.util.Collection;

public interface UserService {
    UserVO findByUserName(String username);
    
    Collection<UserVO> findAll();
    
    UserVO save(UserVO vo);
}
