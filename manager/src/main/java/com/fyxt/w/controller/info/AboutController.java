package com.fyxt.w.controller.info;


import com.fyxt.w.common.config.FileConfig;
import com.fyxt.w.controller.base.BaseController;
import com.fyxt.w.entity.common.ImageNewsType;
import com.fyxt.w.entity.common.InfoStatus;
import com.fyxt.w.entity.info.Explain;
import com.fyxt.w.service.info.ExplainService;
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
@RequestMapping(value = "/sys/info/about")
public class AboutController extends BaseController{

	@Autowired
	private ExplainService explainService;
	
	@Autowired
	private FileConfig fileConfig;
	
	private void setBases(Model model) {
		model.addAttribute("infoStatuss", InfoStatus.values());
	}
	
	@GetMapping("/create")
	public String createForm(Model model) {
		model.addAttribute("types", ImageNewsType.values());
		
		return "info/about/form";
	}

	@PostMapping("/create")
	public String create(Explain imgNew, BindingResult result,
						 Model model, RedirectAttributes attrs) {
		
		int r = explainService.save(imgNew);
		if(r > 0){
			super.addMessage(attrs, "保存图片新闻成功");
		}else{
			super.addMessage(attrs, "保存图片新闻失败，请重试！");
		}
		
		return "redirect:/sys/info/about";
	}

	@GetMapping("/update/{id}")
	public String updateForm(@PathVariable("id") Long id, Model model) {
		model.addAttribute("types", ImageNewsType.values());
		model.addAttribute("news", explainService.get(id));
		
		return "info/about/form";
	}

	@PostMapping("/update/{id}")
	public String update(Explain imgNew, BindingResult result,
						 Model model, RedirectAttributes attrs) {
		int r = explainService.update(imgNew);
		if(r > 0){
			super.addMessage(attrs, "修改图片新闻成功");
		}else{
			super.addMessage(attrs, "修改图片新闻失败，请重试！");
		}
		
		return "redirect:/sys/info/about";
	}

	@GetMapping("/delete/{id}")
	public String delete(@PathVariable("id") Long id, RedirectAttributes attrs) {
		int r = explainService.delete(id);
		if(r > 0){
			super.addMessage(attrs, "删除图片新闻成功");
		}else{
			super.addMessage(attrs, "删除图片新闻失败，请重试！");
		}
		
		return "redirect:/sys/info/about";
	}

	@RequestMapping
	public String list(Model model, Explain imgNew) {
		setBases(model);
		model.addAttribute("page", explainService.findPage(imgNew));
		model.addAttribute("webBaseUrl", fileConfig.getWebBaseUrl().startsWith("http://")?fileConfig.getWebBaseUrl():"http://"+fileConfig.getWebBaseUrl());
		
		return "info/about/list";
	}
}
