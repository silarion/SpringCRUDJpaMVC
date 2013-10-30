package com.intech.test;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.web.PagedResourcesAssembler;
import org.springframework.hateoas.EntityLinks;
import org.springframework.hateoas.PagedResources;
import org.springframework.hateoas.Resource;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;

public abstract class CRUDController<T, ID extends Serializable> {

	// @Autowired
	// protected JpaRepository<T, Serializable> repository;

	@Autowired
	protected EntityLinks entityLink;

	protected abstract JpaRepository<T, ID> getRepository();

	// @RequestMapping("/{careerId}")
	// public String findAllView(Model model, @PathVariable ID careerId) {
	// model.addAttribute("list", getRepository().findOne(careerId));
	// return "/list.jsp";
	// }

	@RequestMapping(value = "/all", headers = { "Accept=application/json" })
	public HttpEntity<PagedResources<Resource<T>>> findAllJson(
			Pageable pageable, PagedResourcesAssembler<T> assembler) {
		Page<T> items = getRepository().findAll(pageable);
		return new ResponseEntity<PagedResources<Resource<T>>>(
				assembler.toResource(items), HttpStatus.OK);
	}

	public List<Item> findAll(Sort arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Item> findAll(Iterable<Long> arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	public void flush() {
		// TODO Auto-generated method stub

	}

	public <S extends Item> List<S> save(Iterable<S> arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	public Item saveAndFlush(T arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	public Page<Item> findAll(Pageable arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	public long count() {
		// TODO Auto-generated method stub
		return 0;
	}

	@RequestMapping("/delete/{id}")
	public void delete(ID id) {

	}

	public void delete(T arg0) {
		// TODO Auto-generated method stub

	}

	public void delete(Iterable<? extends T> arg0) {
		// TODO Auto-generated method stub

	}

	public void deleteAll() {
		// TODO Auto-generated method stub

	}

	public boolean exists(Long arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	public T findOne(ID id) {
		return getRepository().findOne(id);
	}

	public <S extends T> S save(S arg0) {
		// TODO Auto-generated method stub
		return null;
	}

}
