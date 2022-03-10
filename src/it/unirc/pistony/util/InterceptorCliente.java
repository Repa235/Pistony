package it.unirc.pistony.util;

import java.util.Map;


import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

import it.unirc.pistony.pojo.Cliente.Cliente;
import it.unirc.pistony.pojo.Cliente.ClienteAware;





public class InterceptorCliente implements Interceptor {

	private static final long serialVersionUID = 1L;



	public void destroy() {
	}
	public void init() {
	}

	public String intercept( ActionInvocation actionInvocation ) throws Exception {
		Map<String, Object> session = actionInvocation.getInvocationContext().getSession();

		Object aut=session.get("utente");



		if (aut==null ||!aut.getClass().getName().equals("it.unirc.pistony.pojo.Cliente.Cliente")) {
			return Action.LOGIN;
		}



		Cliente cliente = (Cliente) aut;

		Action action = ( Action ) actionInvocation.getAction();

		if (action instanceof ClienteAware) {
			((ClienteAware)action).setCliente(cliente);
		}
		return actionInvocation.invoke();
	}
}

