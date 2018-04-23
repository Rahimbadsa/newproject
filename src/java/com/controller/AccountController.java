
package com.controller;

import com.Dao.AccountDao;
import com.pojo.Account;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AccountController {
    @RequestMapping("saveAccount.htm")
    public String doSave(@ModelAttribute("account") Account a, Model m){
        AccountDao ad=new AccountDao();
        ad.doAdd(a);
        List<Account> lis=ad.showAllAccount();
        m.addAttribute("aa", lis);
        return "resultAccount";
    }
    
    @RequestMapping("deleteAccount.htm")
    public String doDelete(@ModelAttribute("account") Account a, Model m){
        AccountDao ad=new AccountDao();
        ad.doDel(a);
        List<Account> lis=ad.showAllAccount();
        m.addAttribute("aa", lis);
        return "resultAccount";
    }
    
    @RequestMapping("updateAccount.htm")
    public String doUpdate(@ModelAttribute("account") Account a, Model m){
        AccountDao ad=new AccountDao();
        ad.doUp(a);
        List<Account> lis=ad.showAllAccount();
        m.addAttribute("aa", lis);
        return "resultAccount";
    }
    
    @RequestMapping("upchangeAccount.htm")
    public String doUpchange(@ModelAttribute("account") Account a, Model m){
        AccountDao ad=new AccountDao();
        List<Account> lis=ad.showAllAccount();
        m.addAttribute("aa", lis);
        return "updateAccount";
    }
    
    @RequestMapping("showAccount.htm")
    public String doShow(@ModelAttribute("account") Account a, Model m){
        AccountDao ad=new AccountDao();
        List<Account> lis=ad.showAllAccount();
        m.addAttribute("aa", lis);
        return "resultAccount";
    }
}
