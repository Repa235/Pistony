package it.unirc.pistony.Validators;

import java.util.regex.Pattern;

import com.opensymphony.xwork2.validator.ValidationException;
import com.opensymphony.xwork2.validator.validators.FieldValidatorSupport;

public class PasswordStrenght extends FieldValidatorSupport {
	
	static Pattern pattern_pw = Pattern.compile("^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,16}$");
//la password deve contenere tra 8 e 16 caratteri tra: lettere (maiuscole e minuscole), numeri e caratteri speciali.
	@Override
	public void validate(Object arg0) throws ValidationException {
		// TODO Auto-generated method stub

		String input = (String) this.getFieldValue(this.getFieldName(), arg0);
	
		System.out.println("Parametro inserito:  "+input);
		
		Boolean password_ok = pattern_pw.matcher(input).find();
		if(!password_ok){
			addFieldError(getFieldName(), arg0);
		}
		
	}

}
