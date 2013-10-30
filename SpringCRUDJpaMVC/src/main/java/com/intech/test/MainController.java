package com.intech.test;

import java.util.ArrayList;
import java.util.Map;
import java.util.Map.Entry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.WebApplicationContext;

@Controller
public class MainController {

	@Autowired
	private WebApplicationContext ctx;

	@RequestMapping("/")
	public String index(Model model) {

		// recup de tous les @Controller pour afficher la liste
		Map<String, CRUDController> controllers = ctx
				.getBeansOfType(CRUDController.class);

		ArrayList<String> list = new ArrayList<String>();

		for (Entry<String, CRUDController> beanEntry : controllers.entrySet()) {
			String beanName = beanEntry.getKey();
			Object beanObject = beanEntry.getValue();
			list.add(beanName);
		}

		model.addAttribute("controllers", list);

		return "/main.jsp";
	}

}
