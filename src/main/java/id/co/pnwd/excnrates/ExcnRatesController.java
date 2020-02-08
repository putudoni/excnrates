package id.co.pnwd.excnrates;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
* Simple exchange rates application with spring boot
*
* @author  Putu Ngurah Wigadoni
* @version 1.0
* @since   2019-08-11
*/
@Controller
public class ExcnRatesController {
	
	@Autowired
	private ExcnRatesService excnRatesService;
	
	@GetMapping("/rates")
	public String index(Model model) {
		List<ResultApi> result = excnRatesService.getRates();
		model.addAttribute("result",result);
		return "rates";
	}
	
}
