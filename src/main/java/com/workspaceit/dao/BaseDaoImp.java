package com.workspaceit.dao;

import com.workspaceit.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * @author dipanjal on 10/26/18
 **/
@Repository
public class BaseDaoImp implements BaseDao {

    @Autowired
    private SessionFactory sessionFactory;

    protected Session getCurrentHibernateSession(){
          return this.sessionFactory.getCurrentSession();
    }

    public Object save(Object obj) {
        try {
            Session session = this.getCurrentHibernateSession();
            session.saveOrUpdate(obj);
            return obj;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean update(Object obj) {
        try {
            Session session = this.getCurrentHibernateSession();
            session.saveOrUpdate(obj);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }

    }

    public User getUser(long id) {
        User user = (User) getCurrentHibernateSession().get(User.class, id);
        return user;
    }

    public boolean delete(long id) {
        try {
            User user = getUser(id);
            if(user != null) {
                getCurrentHibernateSession().delete(user);
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

}
