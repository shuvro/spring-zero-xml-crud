package com.workspaceit.dao;

import com.workspaceit.entity.User;
import org.hibernate.Session;
import org.springframework.stereotype.Service;


public interface BaseDao {
    Object save(Object obj);
    User getUser(long id);
    boolean update(Object obj);
    boolean delete(long id);
}
