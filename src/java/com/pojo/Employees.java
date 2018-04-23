package com.pojo;
// Generated Apr 18, 2018 1:05:02 AM by Hibernate Tools 4.3.1


import com.Dao.EmployeesDao;
import java.sql.Date;
import java.util.List;
import javax.faces.bean.ManagedBean;

@ManagedBean
public class Employees  implements java.io.Serializable {


     private Integer id;
     private String name;
     private String email;
     private String gender;
     private String religion;
     private String nationality;
     private Date jdate;
     private Date dob;
     private String phone;
     private String adress;
     private Double salary;

    public Employees() {
    }

    public Employees(String name, String email, String gender, String religion, String nationality, Date jdate, Date dob, String phone, String adress, Double salary) {
       this.name = name;
       this.email = email;
       this.gender = gender;
       this.religion = religion;
       this.nationality = nationality;
       this.jdate = jdate;
       this.dob = dob;
       this.phone = phone;
       this.adress = adress;
       this.salary = salary;
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
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getGender() {
        return this.gender;
    }
    
    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getReligion() {
        return this.religion;
    }
    
    public void setReligion(String religion) {
        this.religion = religion;
    }
    public String getNationality() {
        return this.nationality;
    }
    
    public void setNationality(String nationality) {
        this.nationality = nationality;
    }
    public Date getJdate() {
        return this.jdate;
    }
    
    public void setJdate(Date jdate) {
        this.jdate = jdate;
    }
    public Date getDob() {
        return this.dob;
    }
    
    public void setDob(Date dob) {
        this.dob = dob;
    }
    public String getPhone() {
        return this.phone;
    }
    
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getAdress() {
        return this.adress;
    }
    
    public void setAdress(String adress) {
        this.adress = adress;
    }
    public Double getSalary() {
        return this.salary;
    }
    
    public void setSalary(Double salary) {
        this.salary = salary;
    }

   private List<Integer> showAllId;

    public List<Integer> getShowAllId() {
        EmployeesDao em=new EmployeesDao();
        showAllId=em.findAllId();
        return showAllId;
    }

    public void setShowAllId(List<Integer> showAllId) {
        this.showAllId = showAllId;
    }
   
    public void findaEmp(){
    EmployeesDao em=new EmployeesDao();
    Employees e=em.aEmployee(id);
    this.id=e.id;
    this.name=e.name;
    this.salary=e.salary;
    }


}


