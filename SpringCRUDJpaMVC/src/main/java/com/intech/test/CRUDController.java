package com.intech.test;

import java.io.Serializable;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.GenericTypeResolver;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.support.SimpleJpaRepository;
import org.springframework.data.web.PagedResourcesAssembler;
import org.springframework.hateoas.EntityLinks;
import org.springframework.hateoas.PagedResources;
import org.springframework.hateoas.Resource;
import org.springframework.hateoas.ResourceAssembler;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;

//@Controller
public class CRUDController<T, ID extends Serializable> {

	// @Autowired
	// protected JpaRepository<T, Serializable> repository;

	private Class domainClass = null;

	@Autowired
	protected EntityLinks entityLink;

	@PersistenceContext
	private EntityManager em;

	protected JpaRepository<T, ID> repository;

	public CRUDController() {
		domainClass = GenericTypeResolver.resolveTypeArguments(getClass(),
				CRUDController.class)[0];
	}

	public CRUDController(Class domainClass) {
		this.domainClass = domainClass;
	}

	protected JpaRepository<T, ID> getRepository() {
		// TODO - chercher si un repo n'existe pas deja dans spring pour ce
		// domainclassname
		if (repository == null) {
			return new SimpleJpaRepository(domainClass, em);
		} else {
			return repository;
		}
	}

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

	@RequestMapping(value = "/test", headers = { "Accept=application/json" })
	public HttpEntity<PagedResources<Resource<T>>> test(Pageable pageable,
			PagedResourcesAssembler<T> assembler,
			ResourceAssembler<T, Resource<T>> ra) {
		Page<T> items = getRepository().findAll(pageable);
		return new ResponseEntity<PagedResources<Resource<T>>>(
				assembler.toResource(items, ra), HttpStatus.OK);
	}

	public List<T> findAll(Sort arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<T> findAll(Iterable<Long> arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	public void flush() {
		// TODO Auto-generated method stub

	}

	public <S extends T> List<S> save(Iterable<S> arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	public T saveAndFlush(T arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	public Page<T> findAll(Pageable arg0) {
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

	public Class getDomainClass() {
		return domainClass;
	}

	public void setDomainClass(Class domainClass) {
		this.domainClass = domainClass;
	}

}
