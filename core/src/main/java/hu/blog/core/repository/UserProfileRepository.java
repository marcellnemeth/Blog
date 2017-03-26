package hu.blog.core.repository;

import hu.blog.core.domain.UserProfile;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by marci on 2017.03.26..
 */
public interface UserProfileRepository extends JpaRepository<UserProfile,Integer> {

}
