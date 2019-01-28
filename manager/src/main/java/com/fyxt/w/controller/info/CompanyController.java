package com.fyxt.w.controller.info;


import com.fyxt.w.controller.base.BaseController;
import com.fyxt.w.entity.info.Company;
import com.fyxt.w.service.info.CompanyService;
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
 * 产品说明
 */
@Controller
@RequestMapping(value = "/sys/info/company")
public class CompanyController extends BaseController{

	@Autowired
	private CompanyService companyService;

	@RequestMapping
	public String list(Model model, Company company) {
		model.addAttribute("page", companyService.findPage(company));

		return "info/company/list";
	}
	
	@GetMapping("/create")
	public String createForm(Model model) {
		
		return "info/company/form";
	}

	@PostMapping("/create")
	public String create(Company company, BindingResult result,
						 Model model, RedirectAttributes attrs) {
		
		int r = companyService.save(company);
		if(r > 0){
			super.addMessage(attrs, "保存公司成功");
		}else{
			super.addMessage(attrs, "保存公司失败，请重试！");
		}
		
		return "redirect:/sys/info/company";
	}

	@GetMapping("/update/{id}")
	public String updateForm(@PathVariable("id") Long id, Model model) {
		model.addAttribute("company", companyService.get(id));
		
		return "info/company/form";
	}

	@PostMapping("/update/{id}")
	public String update(Company company, BindingResult result,
						 Model model, RedirectAttributes attrs) {
		int r = companyService.update(company);
		if(r > 0){
			super.addMessage(attrs, "修改公司成功");
		}else{
			super.addMessage(attrs, "修改公司失败，请重试！");
		}
		
		return "redirect:/sys/info/company";
	}

	@GetMapping("/delete/{id}")
	public String delete(@PathVariable("id") Long id, RedirectAttributes attrs) {
		int r = companyService.delete(id);
		if(r > 0){
			super.addMessage(attrs, "删除公司成功");
		}else{
			super.addMessage(attrs, "删除公司失败，请重试！");
		}
		
		return "redirect:/sys/info/company";
	}
}
