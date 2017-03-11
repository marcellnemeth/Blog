package hu.blog.impl;

import hu.blog.core.domain.UserEntity;
import hu.blog.core.repository.UserRepository;
import hu.blog.mapper.UserMapper;
import hu.blog.service.UserService;
import hu.blog.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserRepository userRepository;

    @Override
    public UserVO findByUserName(String username) {
        return UserMapper.toVo(userRepository.findByUsername(username));
    }

    @Override
    public Collection<UserVO> findAll() {
        return UserMapper.toVo(userRepository.findAll());
    }

    @Override
    public UserVO save(UserVO vo) {
        UserEntity user = UserMapper.toDto(vo);
        user = userRepository.save(user);

        return UserMapper.toVo(user);
    }
}
