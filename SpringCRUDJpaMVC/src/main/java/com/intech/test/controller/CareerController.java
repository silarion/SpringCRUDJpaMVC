package com.intech.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.hateoas.ExposesResourceFor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.intech.model.Career;
import com.intech.test.CRUDController;
import com.intech.test.repository.CareerRepository;
import com.intech.test.resource.CareerResource;
import com.intech.test.resource.CareerResourceAssembler;

@Controller
@ExposesResourceFor(Career.class)
@RequestMapping("/careers")
public class CareerController extends CRUDController<Career, Integer> {

	@Autowired
	private CareerRepository careerRepository;

	@Autowired
	private CareerResourceAssembler careerResourceAssembler;

	// @Autowired
	// @Qualifier("armorRepository")
	// private SimpleJpaRepository<Armor, Integer> armorRepository;

	@Override
	protected JpaRepository<Career, Integer> getRepository() {
		return careerRepository;
	}

	@RequestMapping(value = "/{careerId}", method = RequestMethod.GET)
	@ResponseBody
	public CareerResource getCareer(@PathVariable("careerId") int careerId) {
		return careerResourceAssembler.toResource(careerRepository
				.findOne(careerId));
	}

	@RequestMapping("/get/{careerId}")
	public Career findAllView(Model model, @PathVariable Integer careerId) {
		return getRepository().findOne(careerId);
	}

	// @RequestMapping("/{id}")
	// @ResponseBody
	// Career career(@PathVariable("id") Integer careerId) {
	// return getRepository().findOne(careerId);
	// }
}
