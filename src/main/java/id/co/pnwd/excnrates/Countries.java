package id.co.pnwd.excnrates;

import java.util.HashMap;
import java.util.Map;

/**
* Simple exchange rates application with spring boot
*
* @author  Putu Ngurah Wigadoni
* @version 1.0
* @since   2019-08-11
*/
public class Countries {

	private Map<String, String> code;
	
	public Countries() {
		this.code = new HashMap<String, String>();
		this.code.put("AU","AUD");
		this.code.put("CN","CNY");
		this.code.put("CH","CHF");
		this.code.put("GB","GBP");
		this.code.put("HK","HKD");
		this.code.put("JP","JPY");
		this.code.put("KR","KRW");
		this.code.put("MY","MYR");
		this.code.put("SG","SGD");
		this.code.put("US","USD");
		this.code.put("ES","EUR");
		this.code.put("IT","EUR");
	}

	public Map<String, String> getCode() {
		return code;
	}

	public void setCode(Map<String, String> code) {
		this.code = code;
	}
	
}
