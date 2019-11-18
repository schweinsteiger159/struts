package actions;

import com.opensymphony.xwork2.ActionSupport;

public class LoginForm extends ActionSupport {
	private static final long serialVersionUID = 7299264265184515893L;
	@Override
    public String execute() {
     
        return "login";
    }
}
