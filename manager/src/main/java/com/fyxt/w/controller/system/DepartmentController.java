package com.fyxt.w.controller.system;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fyxt.w.common.vo.MessageStatus;
import com.fyxt.w.controller.base.BaseController;
import com.fyxt.w.entity.system.Department;
import com.fyxt.w.service.system.DepartmentService;

/**
 * 部门
* @author ZhangBo   
* @date 2017年4月5日 下午5:56:12
 */
@Controller
@RequestMapping("/sys/system/department")
public class DepartmentController extends BaseController{
    
    @Autowired
    private DepartmentService departmentService;
    
    private void setModel(Model model){
        model.addAttribute("departmentTree", super.buildTree(this.departmentService.findTree()));
    }
    
    @GetMapping("/create")
    public String createForm(Model model){
        this.setModel(model);
        return "system/department/form";
    }
    
    @PostMapping("/create")
    public String create(Department department, BindingResult result, Model model, RedirectAttributes attrs){
        this.departmentService.save(department);
        super.addMessage(attrs, "部门保存成功");
        return "redirect:/sys/system/department";
    }
    
    @GetMapping("/update/{pid}")
    public String updateForm(@PathVariable("pid") Long id, Model model){
        Department department = this.departmentService.get(id);
        model.addAttribute("department", department);
        this.setModel(model);
        return "system/department/form";
    }
    
    @PostMapping("/update/{pid}")
    public String update(Department department, BindingResult result, Model model, RedirectAttributes attrs){
        this.departmentService.update(department);
        super.addMessage(attrs, "部门更新成功");
        return "redirect:/sys/system/department";
    }
    
    @GetMapping("/delete/{pid}")
    public String delete(@PathVariable("pid") Long id, RedirectAttributes attrs){
        try{
            int result = this.departmentService.delete(id);
            if(result > 0){
                super.addMessage(attrs, "部门删除成功");
            }
            else{
                super.addMessage(attrs, MessageStatus.ERROR, "删除失败，当前部门下有用户或子部门");
            }
        }
        catch(Exception e){
            super.addMessage(attrs, MessageStatus.ERROR, "删除失败，当前部门下有用户或子部门");
        }
        return "redirect:/sys/system/department";
    }
    
    @RequestMapping
    public String list(Model model, Department department){
        model.addAttribute("page", this.departmentService.findPage(department));
        this.setModel(model);
        return "system/department/list";
    }
}
