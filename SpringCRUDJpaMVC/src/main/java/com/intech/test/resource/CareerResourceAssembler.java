package com.intech.test.resource;

import static org.springframework.hateoas.mvc.ControllerLinkBuilder.linkTo;
import static org.springframework.hateoas.mvc.ControllerLinkBuilder.methodOn;

import org.springframework.hateoas.mvc.ResourceAssemblerSupport;
import org.springframework.stereotype.Component;

import com.intech.model.Career;
import com.intech.test.controller.CareerController;

@Component
public class CareerResourceAssembler extends
		ResourceAssemblerSupport<Career, CareerResource> {

	public CareerResourceAssembler() {
		super(CareerController.class, CareerResource.class);
	}

	@Override
	public CareerResource toResource(Career career) {
		// will add also a link with rel self pointing itself
		CareerResource resource = createResourceWithId(career.getCareerId(),
				career);
		// adding a link with rel books pointing to the Career's books
		resource.add(linkTo(
				methodOn(CareerController.class)
						.getCareer(career.getCareerId())).withRel("books"));
		return resource;
	}

	@Override
	protected CareerResource instantiateResource(Career career) {
		return new CareerResource(career.getCareerId(), career.getCareerName());
	}

}
