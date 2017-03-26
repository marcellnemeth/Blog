package hu.blog.web.security;

import hu.blog.service.UserService;
import hu.blog.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service("customUserDetailsService")
public class CustomUserDetailService implements UserDetailsService{

    @Autowired
    private UserService userService;
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserVO user = userService.findByUserName(username);

        if(user == null){
            System.out.println("User not found");
            throw new UsernameNotFoundException("Username not found");
        }
        return new User(user.getUsername(),user.getPassword(),user.getState().equals("Active"),true,true,true,setAuthorities(user.getUserRole()));
    }

    private static Set<GrantedAuthority> setAuthorities(String userRole){
        Set<GrantedAuthority> authorities = new HashSet<>();

        switch (userRole){
            case "ADMIN":
                authorities.add(new SimpleGrantedAuthority("ROLE_"+userRole));

            case "USER":
                authorities.add(new SimpleGrantedAuthority("ROLE_"+userRole));
                break;
        }
        return authorities;
    }
}
