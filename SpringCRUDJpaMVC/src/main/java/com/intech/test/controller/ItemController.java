package com.intech.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.web.PagedResourcesAssembler;
import org.springframework.hateoas.PagedResources;
import org.springframework.hateoas.Resource;
import org.springframework.http.HttpEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.intech.test.CRUDController;
import com.intech.test.Item;
import com.intech.test.repository.ItemRepository;

@Controller
@RequestMapping("/items")
public class ItemController extends CRUDController<Item, Long> {

	@Autowired
	private ItemRepository itemRepository;

	@Override
	protected JpaRepository getRepository() {
		return itemRepository;
	}

	public String findAllView(Model model) {
		Item item = new Item();
		item.setPrice(100.5);
		item.setProduct("myproduct");
		item.setQuantity(53);
		itemRepository.saveAndFlush(item);

		// return super.findAllView(model);
		return null;
	}

	public HttpEntity<PagedResources<Resource<Item>>> findAllJson(
			Pageable pageable, PagedResourcesAssembler assembler) {
		Item item = new Item();
		item.setPrice(100.5);
		item.setProduct("myproduct");
		item.setQuantity(53);
		itemRepository.saveAndFlush(item);

		return super.findAllJson(pageable, assembler);
	}

}
