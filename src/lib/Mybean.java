package lib;

public class Mybean {
public String account;
public String m;

	public String getM() {
		if(m.equals("123")){
			m="����Ա";
			
		}else if(m.equals("124")){
			m="����";
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
