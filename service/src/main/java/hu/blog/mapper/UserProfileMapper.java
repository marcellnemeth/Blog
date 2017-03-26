package hu.blog.mapper;

import hu.blog.core.domain.UserEntity;
import hu.blog.core.domain.UserProfile;
import hu.blog.vo.UserProfileVO;
import hu.blog.vo.UserVO;
import org.dozer.DozerBeanMapper;
import org.dozer.Mapper;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by marci on 2017.03.26..
 */
public class UserProfileMapper {
    private static Mapper mapper = new DozerBeanMapper();

    public static UserProfileVO toVo(UserProfile dto){
        if(dto == null){
            return null;
        }
        return mapper.map(dto,UserProfileVO.class);
    }

    public static UserProfile toDto(UserProfileVO vo){
        if(vo == null){
            return null;
        }
        return mapper.map(vo,UserProfile.class);
    }

    public static List<UserProfileVO> toVo(List<UserProfile> userDtos){
        List<UserProfileVO> userVos = new ArrayList<>();

        for(UserProfile userDto: userDtos){
            userVos.add(toVo(userDto));
        }
        return userVos;
    }

    public static List<UserProfile> toDto(List<UserProfileVO> userVos){
        List<UserProfile> userDtos = new ArrayList<>();

        for(UserProfileVO userVo : userVos){
            userDtos.add(toDto(userVo));
        }

        return userDtos;
    }
}
