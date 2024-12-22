package stepDefinations;

import java.io.IOException;

import io.cucumber.java.Before;

public class Hooks {

	@Before("@DeletePlace")
	public void beforeScenario() throws IOException {
		// execute this code only when place id is null
		// write a code that will give you place id

		StepDefination m = new StepDefination();
		if (StepDefination.place_id == null) {    // place_id is static variable so we need to call with method name

			m.add_place_payload_with("Darji", "Gujarati", "Bharat");
			m.user_call_with_http_request("AddPlaceAPI", "POST");
			m.verify_place_id_created_maps_to_using("Darji", "getPlaceAPI");
		}
	}

}
