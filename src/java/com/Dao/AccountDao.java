package com.Dao;

import com.pojo.Account;
import com.pojo.Loan;
import com.util.NewHibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

public class AccountDao {

    public void doAdd(Account a) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.save(a);
        s.getTransaction().commit();;
        s.close();
    }

    public void doDel(Account a) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.delete(a);
        s.getTransaction().commit();;
        s.close();
    }

    public void doUp(Account a) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.update(a);
        s.getTransaction().commit();;
        s.close();
    }

    public List<Account> showAllAccount() {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Account");
        List<Account> lis = q.list();
        return lis;
    }

    public List<Integer> allId() {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("select id from Account");
        List<Integer> lis = q.list();
        return lis;
    }

    public Account aAccount(int id) {
        Account a = new Account();
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Account where accNo=" + id);
        List<Account> lis = q.list();
        a=lis.get(0);
        return a;
    }
}
