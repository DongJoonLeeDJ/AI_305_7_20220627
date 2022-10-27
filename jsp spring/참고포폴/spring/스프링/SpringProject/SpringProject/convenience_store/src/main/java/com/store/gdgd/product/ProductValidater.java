package com.store.gdgd.product;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.store.gdgd.sale.Sales1;

public class ProductValidater implements Validator{
	
	@Override
	public boolean supports(Class<?> clazz) {
		return Sales1.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"title", "required");
		
	}

}
