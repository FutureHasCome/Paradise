package lib;

public class Mybean {
public String account;
public String m;

	public String getM() {
		if(m.equals("123")){
			m="管理员";
			
		}else if(m.equals("124")){
			m="读者";
		}
	return m;
}
public void setM(String m) {
	this.m = m;
}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	
	
}
