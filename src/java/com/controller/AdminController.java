package com.controller;

import com.Dao.AdminDao;
import com.pojo.Admin;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

    @RequestMapping("save.htm")
    public String doSave(@ModelAttribute("admin") Admin a) {
        AdminDao ad = new AdminDao();
        ad.doAdd(a);
        return "login";
    }

    @RequestMapping("show.htm")
    public String doShow(@ModelAttribute("admin") Admin a, Model m) {
     AdminDao ad = new AdminDao();
        List<Admin> lis=ad.findAllInfo(a);
        m.addAttribute("aa", lis);
        return "showAdmin";
    }
    
    @RequestMapping("delete.htm")
    public String doDelete(@ModelAttribute("admin") Admin a, Model m) {
     AdminDao ad = new AdminDao();
     ad.doDel(a);
      List<Admin> lis=ad.findAllInfo(a);
        m.addAttribute("aa", lis);
        return "showAdmin";
    }
    
    @RequestMapping("update.htm")
    public String doUpdate(@ModelAttribute("admin") Admin a, Model m) {
     AdminDao ad = new AdminDao();
     ad.doUp(a);
      List<Admin> lis=ad.findAllInfo(a);
        m.addAttribute("aa", lis);
        return "showAdmin";
    }
    
    @RequestMapping("upChange.htm")
    public String doUpChanges(@ModelAttribute("admin") Admin a, Model m) {
     AdminDao ad = new AdminDao();
      List<Admin> lis=ad.findAllInfo(a);
        m.addAttribute("aa", lis);
        return "adminUpdate";
    }
    
    @RequestMapping("login.htm")
    public String doLogin(@ModelAttribute("admin") Admin a, Model m) {
     AdminDao ad = new AdminDao();
        if (ad.doLogin(a.getName(), a.getPassword())) {
           return "resAd";
        } else {
            return "singUp";
        }
        }
}
