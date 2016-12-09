package com.hujian.springmvc.Service;

import com.hujian.springmvc.Model.User;
import com.hujian.springmvc.Repository.Query;
import org.springframework.stereotype.Service;

/**
 * Created by hujian on 2016/12/2.
 */
@Service
public class UserService extends BaseService<User> {
    public User getUserByuserName(String userName){
        Query query=new Query(entityManager);
        User user= (User) query.from(User.class)
                .whereEqual("userName",userName)
                .createTypedQuery()
                .getSingleResult();
        return user;
    }
}
