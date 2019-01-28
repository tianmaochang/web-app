package com.fyxt.w.controller.info;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fyxt.w.common.config.FileConfig;
import com.fyxt.w.controller.base.BaseController;
import com.fyxt.w.entity.common.ImageNewsType;
import com.fyxt.w.entity.common.InfoStatus;
import com.fyxt.w.entity.info.Explain;
import com.fyxt.w.service.info.ExplainService;

/**
 * 产品说明
 */
@Controller
@RequestMapping(value = "/sys/info/explain")
public class ExplainController extends BaseController{

	@Autowired
	private ExplainService explainService;
	
	@Autowired
	private FileConfig fileConfig;
	
	private void setBases(Model model) {
		model.addAttribute("infoStatuss", InfoStatus.values());
	}

	@RequestMapping
	public String list(Model model, Explain explain) {
		model.addAttribute("page", explainService.findPage(explain));

		return "info/explain/list";
	}

	@GetMapping("/create")
	public String createForm(Model model) {
		
		return "info/explain/form";
	}

	@PostMapping("/create")
	public String create(Explain explain, BindingResult result,
						 Model model, RedirectAttributes attrs) {
		
		int r = explainService.save(explain);
		if(r > 0){
			super.addMessage(attrs, "保存产品说明成功");
		}else{
			super.addMessage(attrs, "保存产品说明失败，请重试！");
		}
		
		return "redirect:/sys/info/explain";
	}

	@GetMapping("/update/{id}")
	public String updateForm(@PathVariable("id") Long id, Model model) {
		model.addAttribute("explain", explainService.get(id));
		
		return "info/explain/form";
	}

	@PostMapping("/update/{id}")
	public String update(Explain explain, BindingResult result,
						 Model model, RedirectAttributes attrs) {
		int r = explainService.update(explain);
		if(r > 0){
			super.addMessage(attrs, "修改产品说明成功");
		}else{
			super.addMessage(attrs, "修改产品说明失败，请重试！");
		}
		
		return "redirect:/sys/info/explain";
	}

	@GetMapping("/delete/{id}")
	public String delete(@PathVariable("id") Long id, RedirectAttributes attrs) {
		int r = explainService.delete(id);
		if(r > 0){
			super.addMessage(attrs, "删除产品说明成功");
		}else{
			super.addMessage(attrs, "删除产品说明失败，请重试！");
		}
		
		return "redirect:/sys/info/explain";
	}
}
