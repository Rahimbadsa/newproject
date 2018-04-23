
package com.controller;

import com.Dao.SalaryDao;
import com.pojo.Salary;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SalaryController {
     @RequestMapping("salary.htm")
    public String showSalary(@ModelAttribute("salary") Salary sa, Model m){
        SalaryDao sd=new SalaryDao();
        List<Salary> lis=sd.findAllSalary();
        m.addAttribute("aa", lis);
        return "salaryResult";
    }
}
