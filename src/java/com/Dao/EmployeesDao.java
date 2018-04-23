
package com.Dao;

import com.pojo.Employees;
import com.util.NewHibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;


public class EmployeesDao {
    public void doAdd(Employees e){
        Session s=NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.save(e);
        s.getTransaction().commit();
        s.close();
    }
    
    public void doDel(Employees e){
        Session s=NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.delete(e);
        s.getTransaction().commit();
        s.close();
    }
    
    public void doUp(Employees e){
        Session s=NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.update(e);
        s.getTransaction().commit();
        s.close();
    }
    
    public List<Employees> findAllInfo(Employees e){
     Session s=NewHibernateUtil.getSessionFactory().openSession();
        Query q=s.createQuery("from Employees");
        List<Employees> lis=q.list();
        return lis;
    }
    
    public List<Integer> findAllId() {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("select id from Employees");
        List<Integer> lis = q.list();
        return lis;
    }

    public Employees aEmployee(int id) {
        Employees e=new Employees();
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Employees where id="+id);
        List<Employees> lis=q.list();
        e=lis.get(0);
        return e;
    }
}
