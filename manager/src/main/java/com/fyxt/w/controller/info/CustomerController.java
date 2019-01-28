package com.fyxt.w.controller.info;


import com.fyxt.w.controller.base.BaseController;
import com.fyxt.w.entity.info.Customer;
import com.fyxt.w.service.info.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * 客户信息
 */
@Controller
@RequestMapping(value = "/sys/info/customer")
public class CustomerController extends BaseController{

	@Autowired
	private CustomerService customerService;

	@RequestMapping
	public String list(Model model, Customer customer) {
		model.addAttribute("page", customerService.findPage(customer));

		return "info/customer/list";
	}

	@GetMapping("/create")
	public String createForm(Model model) {

		return "info/customer/form";
	}

	@PostMapping("/create")
	public String create(Customer customer, BindingResult result,
						 Model model, RedirectAttributes attrs) {
		
		int r = customerService.save(customer);
		if(r > 0){
			super.addMessage(attrs, "保存客户成功");
		}else{
			super.addMessage(attrs, "保存客户失败，请重试！");
		}
		
		return "redirect:/sys/info/customer";
	}

	@GetMapping("/update/{id}")
	public String updateForm(@PathVariable("id") Long id, Model model) {
		model.addAttribute("customer", customerService.get(id));
		
		return "info/customer/form";
	}

	@PostMapping("/update/{id}")
	public String update(Customer customer, BindingResult result,
						 Model model, RedirectAttributes attrs) {
		int r = customerService.update(customer);
		if(r > 0){
			super.addMessage(attrs, "修改客户成功");
		}else{
			super.addMessage(attrs, "修改客户失败，请重试！");
		}
		
		return "redirect:/sys/info/customer";
	}

	@GetMapping("/delete/{id}")
	public String delete(@PathVariable("id") Long id, RedirectAttributes attrs) {
		int r = customerService.delete(id);
		if(r > 0){
			super.addMessage(attrs, "删除客户成功");
		}else{
			super.addMessage(attrs, "删除客户失败，请重试！");
		}
		
		return "redirect:/sys/info/customer";
	}
}
