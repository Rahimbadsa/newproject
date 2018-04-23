package com.Dao;

import com.pojo.Loan;
import com.util.NewHibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

public class LoanDao {

    public void doAdd(Loan lo) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.save(lo);
        s.getTransaction().commit();
        s.close();
    }

    public void doDel(Loan lo) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.delete(lo);
        s.getTransaction().commit();
        s.close();
    }

    public void doUp(Loan lo) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.update(lo);
        s.getTransaction().commit();
        s.close();
    }

    public List<Integer> allId() {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("select id from Loan");
        List<Integer> lis = q.list();
        return lis;
    }

    public List<Loan> showallLoan() {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Loan");
        List<Loan> lis = q.list();
        return lis;
    }

    public Loan aLoan(int id) {
        Loan lo = new Loan();
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Loan where id="+id);
        List<Loan> lis=q.list();
        lo=lis.get(0);
        return lo;
    }
}
