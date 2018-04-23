package com.Dao;

import com.pojo.Admin;
import com.util.NewHibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

public class AdminDao {

    public void doAdd(Admin a) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.save(a);
        s.getTransaction().commit();
        s.close();
    }

    public void doDel(Admin a) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.delete(a);
        s.getTransaction().commit();
        s.close();
    }

    public void doUp(Admin a) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.update(a);
        s.getTransaction().commit();
        s.close();
    }

    public List<Admin> findAllInfo(Admin a) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Admin");
        List<Admin> lis = q.list();
        return lis;
    }

    public boolean doLogin(String name, String password) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Admin where name=:a and password=:b");
        q.setString("a", name);
        q.setString("b", password);
        List<Admin> lis = q.list();
        if (lis.size() > 0) {
            return true;
        } else {
            return false;
        }
    }
}
