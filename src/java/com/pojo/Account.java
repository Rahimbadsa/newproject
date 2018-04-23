package com.pojo;

import javax.faces.bean.ManagedBean;

@ManagedBean
public class Account  implements java.io.Serializable {


     private Integer accNo;
     private String name;
     private String accType;
     private String password;
     private String gender;
     private String dob;
     private String phone;
     private String adress;
     private Double balance;

    public Account() {
    }

    public Account(String name, String accType, String password, String gender, String dob, String phone, String adress, Double balance) {
       this.name = name;
       this.accType = accType;
       this.password = password;
       this.gender = gender;
       this.dob = dob;
       this.phone = phone;
       this.adress = adress;
       this.balance = balance;
    }
   
    public Integer getAccNo() {
        return this.accNo;
    }
    
    public void setAccNo(Integer accNo) {
        this.accNo = accNo;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getAccType() {
        return this.accType;
    }
    
    public void setAccType(String accType) {
        this.accType = accType;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public String getGender() {
        return this.gender;
    }
    
    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getDob() {
        return this.dob;
    }
    
    public void setDob(String dob) {
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
    public Double getBalance() {
        return this.balance;
    }
    
    public void setBalance(Double balance) {
        this.balance = balance;
    }




}


