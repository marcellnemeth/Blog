package hu.blog.impl;

import hu.blog.core.domain.UserEntity;
import hu.blog.core.repository.UserRepository;
import hu.blog.mapper.UserMapper;
import hu.blog.service.UserService;
import hu.blog.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;
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
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user = userRepository.save(user);

        return UserMapper.toVo(user);
    }

    @Override
    public UserVO findById(long id) {
        return UserMapper.toVo(userRepository.findById(id));
    }
}
