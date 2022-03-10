package it.unirc.pistony.Validators;

import java.util.regex.Pattern;

import com.opensymphony.xwork2.validator.ValidationException;
import com.opensymphony.xwork2.validator.validators.FieldValidatorSupport;

public class NameSurnameOnlyValidator extends FieldValidatorSupport {
	
	static Pattern soloLettere = Pattern.compile("^(?=.{0,40}$)[a-zA-Z]+(?:[-'\\s][a-zA-Z]+)*$");

	@Override
	public void validate(Object arg0) throws ValidationException {
		// TODO Auto-generated method stub

		String input = (String) this.getFieldValue(this.getFieldName(), arg0);
	
		System.out.println(" Valore inserito  "+input);
		
		Boolean passOnlyLetters = soloLettere.matcher(input).find();
		if(!passOnlyLetters){
			addFieldError(getFieldName(), arg0);
		}
		
	}

}
