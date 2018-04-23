
package com.controller;

import com.Dao.LoanDao;
import com.pojo.Loan;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoanController {
    @RequestMapping("saveLoan.htm")
    public String doSave(@ModelAttribute("loan") Loan lo, Model m){
        LoanDao ld=new LoanDao();
        ld.doAdd(lo);
        List<Loan> lis=ld.showallLoan();
        m.addAttribute("aa", lis);
        return "showLoan";
    }
    
    @RequestMapping("deleteLoan.htm")
    public String doDelete(@ModelAttribute("loan") Loan lo, Model m){
        LoanDao ld=new LoanDao();
        ld.doDel(lo);
        List<Loan> lis=ld.showallLoan();
        m.addAttribute("aa", lis);
        return "showLoan";
    }
    
     @RequestMapping("updateLoan.htm")
    public String doUpdate(@ModelAttribute("loan") Loan lo, Model m){
        LoanDao ld=new LoanDao();
        ld.doUp(lo);
        List<Loan> lis=ld.showallLoan();
        m.addAttribute("aa", lis);
        return "showLoan";
    }
    
     @RequestMapping("upchanceLoan.htm")
    public String doUpchange(@ModelAttribute("loan") Loan lo, Model m){
        LoanDao ld=new LoanDao();       
        List<Loan> lis=ld.showallLoan();
        m.addAttribute("aa", lis);
        return "updateLoan";
    }
      
    @RequestMapping("showLoan.htm")
    public String doShow(@ModelAttribute("loan") Loan lo, Model m){
        LoanDao ld=new LoanDao();
        List<Loan> lis=ld.showallLoan();
        m.addAttribute("aa", lis);
        return "showLoan";
    }
}
