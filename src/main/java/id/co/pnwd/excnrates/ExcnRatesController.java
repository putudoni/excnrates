package id.co.pnwd.excnrates;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.client.RestTemplate;

/**
* Simple exchange rates application with spring boot
*
* @author  Putu Ngurah Wigadoni
* @version 1.0
* @since   2019-08-11
*/
@Controller
public class ExcnRatesController {
	
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	RestTemplate restTemplate;
	
	@GetMapping("/rates")
	public String index(Model model) {
		HttpEntity<String> entity = ExcnratesUtil.getHttpEntity();
		ResponseEntity<ExchangeRate> rates = null;
		List<ResultApi> result = new ArrayList<>();
		Countries countries = new Countries();
		ResultApi resultApi = null;
		for (Map.Entry<String, String> entry : countries.getCode().entrySet()) {
			String countryCode = (String) entry.getKey();
			String currencyCode = (String) entry.getValue();
			try {
				rates = restTemplate.exchange(AppConstants.RATESAPI_IO_URL+"/latest?base="+currencyCode+"&symbols=IDR",HttpMethod.GET,entity, ExchangeRate.class);
				if(rates != null) {
					BigDecimal rate = rates.getBody().getRates().get(AppConstants.MY_CURRENCY);
					if(rate !=null) {
						resultApi = new ResultApi();
						resultApi.setCountryCode(countryCode);
						resultApi.setCurrencyCode(currencyCode);
						resultApi.setRate(rate.setScale(0, BigDecimal.ROUND_HALF_UP));
						result.add(resultApi);
					}
				}
			} catch (Exception e) {
				logger.error(e.getMessage());
			}
		}
		model.addAttribute("result",result);
		return "rates";
	}
	
}
