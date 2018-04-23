package com.pojo;

import com.Dao.EmployeesDao;
import com.Dao.SalaryDao;
import javax.faces.bean.ManagedBean;

@ManagedBean
public class Salary implements java.io.Serializable {

    private Integer sid;
    private Integer id;
    private String name;
    private Double salary;
    private Double rent;
    private Double tallowance;
    private Double ta;
    private Double tsalary;

    public Salary() {
    }

    public Salary(Integer id, String name, Double salary, Double rent, Double tallowance, Double ta, Double tsalary) {
        this.id = id;
        this.name = name;
        this.salary = salary;
        this.rent = rent;
        this.tallowance = tallowance;
        this.ta = ta;
        this.tsalary = tsalary;
    }

    public Integer getSid() {
        return this.sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getSalary() {
        return this.salary;
    }

    public void setSalary(Double salary) {
        this.salary = salary;
    }

    public Double getRent() {
        return this.rent;
    }

    public void setRent(Double rent) {
        this.rent = rent;
    }

    public Double getTallowance() {
        return this.tallowance;
    }

    public void setTallowance(Double tallowance) {
        this.tallowance = tallowance;
    }

    public Double getTa() {
        return this.ta;
    }

    public void setTa(Double ta) {
        this.ta = ta;
    }

    public Double getTsalary() {
        return this.tsalary;
    }

    public void setTsalary(Double tsalary) {
        double s=salary;
        double a=(salary*rent)/100;
        double b=(salary*tallowance)/100;
        double c=(salary*ta)/100;
        double total=s+a+b+c;
        tsalary=total;
        this.tsalary = tsalary;
    }

    public void doSave() {
        SalaryDao sd = new SalaryDao();
        sd.doAdd(this);

    }
    
    public void findaSalary(){
    SalaryDao sd=new SalaryDao();
    Salary sa=sd.aSalary(id);
    this.salary=sa.salary;
    this.rent=sa.rent;
    this.tallowance=sa.tallowance;
    this.ta=sa.ta;
    this.tsalary=sa.tsalary;
    }

}
