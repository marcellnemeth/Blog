package hu.blog.impl;

import hu.blog.core.repository.UserProfileRepository;
import hu.blog.mapper.UserProfileMapper;
import hu.blog.service.UserProfileService;
import hu.blog.vo.UserProfileVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by marci on 2017.03.26..
 */
@Service
public class UserProfileServiceImpl implements UserProfileService {
    @Autowired
    private UserProfileRepository userProfileRepository;

    @Override
    public void save(UserProfileVO vo) {
        userProfileRepository.save(UserProfileMapper.toDto(vo));
    }
}
