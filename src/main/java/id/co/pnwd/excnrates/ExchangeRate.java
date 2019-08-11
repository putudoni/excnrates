package id.co.pnwd.excnrates;

import java.math.BigDecimal;
import java.util.Map;

/**
* Simple exchange rates application with spring boot
*
* @author  Putu Ngurah Wigadoni
* @version 1.0
* @since   2019-08-11
*/
public class ExchangeRate {

	private String base;
	
	private Map<String, BigDecimal> rates;
	
	public String getBase() {
		return base;
	}
	public void setBase(String base) {
		this.base = base;
	}
	public Map<String, BigDecimal> getRates() {
		return rates;
	}
	public void setRates(Map<String, BigDecimal> rates) {
		this.rates = rates;
	}
}
