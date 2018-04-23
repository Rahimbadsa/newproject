
package com.Dao;

import com.pojo.Employees;
import com.pojo.Salary;
import com.util.NewHibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;


public class SalaryDao {
   
    public void doAdd(Salary sa) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.save(sa);
        s.getTransaction().commit();;
        s.close();
    }

    public List<Salary> findAllSalary() {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Salary");
        List<Salary> lis = q.list();
        return lis;
    }
    
    public Salary aSalary(int id) {
        Salary sa=new Salary();
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Salary where id="+id);
        List<Salary> lis=q.list();
        sa=lis.get(0);
        return sa;
    }
}
