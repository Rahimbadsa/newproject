package com.controller;

import com.Dao.EmployeesDao;
import com.pojo.Employees;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EmployeesController {

    @RequestMapping("saveEm.htm")
    public String doSave(@ModelAttribute("employees") Employees e, Model m) {
        EmployeesDao ed = new EmployeesDao();
        ed.doAdd(e);
        List<Employees> lis = ed.findAllInfo(e);
        m.addAttribute("aa", lis);
        return "resEmp";
    }

    @RequestMapping("showEmp.htm")
    public String doShow(@ModelAttribute("employees") Employees e, Model m) {
        EmployeesDao ed = new EmployeesDao();
        List<Employees> lis = ed.findAllInfo(e);
        m.addAttribute("aa", lis);
        return "resEmp";
    }

    @RequestMapping("deleteEmp.htm")
    public String doDelete(@ModelAttribute("employees") Employees e, Model m) {
        EmployeesDao ed = new EmployeesDao();
        ed.doDel(e);
        List<Employees> lis = ed.findAllInfo(e);
        m.addAttribute("aa", lis);
        return "resEmp";
    }

    @RequestMapping("updateEmp.htm")
    public String doUpdate(@ModelAttribute("employees") Employees e, Model m) {
        EmployeesDao ed = new EmployeesDao();
        ed.doUp(e);
        List<Employees> lis = ed.findAllInfo(e);
        m.addAttribute("aa", lis);
        return "resEmp";
    }

    @RequestMapping("upchangeEmp.htm")
    public String doUodate(@ModelAttribute("employees") Employees e, Model m) {
        EmployeesDao ed = new EmployeesDao();
        List<Employees> lis = ed.findAllInfo(e);
        m.addAttribute("aa", lis);
        return "EmployeesUpdate";
    }
}
