package it.unirc.pistony.util;
import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;


import it.unirc.pistony.pojo.titolare.Titolare;
import it.unirc.pistony.pojo.titolare.TitolareAware;

public class InterceptorTitolare implements Interceptor {
	
	private static final long serialVersionUID = 1L;
	
	public void destroy() {
	}
	public void init() {
	}

	public String intercept(ActionInvocation actionInvocation) throws Exception {
		
		Map<String, Object> session = actionInvocation.getInvocationContext().getSession();
		Object aut=session.get("utente");
		
		if (aut==null ||!aut.getClass().getName().equals("it.unirc.pistony.pojo.titolare.Titolare")) {
		    return Action.LOGIN;
		} 
		
		Titolare t = (Titolare) aut;		
		 Action action = ( Action ) actionInvocation.getAction();
		 
		    if (action instanceof TitolareAware) {
		        ((TitolareAware)action).setTitolare(t);
		    }
		    return actionInvocation.invoke();
		}
	
	}


