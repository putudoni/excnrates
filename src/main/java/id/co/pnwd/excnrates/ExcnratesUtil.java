package id.co.pnwd.excnrates;

import java.util.Arrays;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;

/**
* Simple exchange rates application with spring boot
*
* @author  Putu Ngurah Wigadoni
* @version 1.0
* @since   2020-02-01
*/
public class ExcnratesUtil {

	public static HttpEntity<String> getHttpEntity() {
		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		headers.add("user-agent",AppConstants.USER_AGENT);
		return new HttpEntity<String>(headers);
	}
	
}
