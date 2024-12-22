Feature: Validate place API's

@AddPlace
Scenario Outline: Verify if place is being successfully added using AddPlaceAPI
    Given Add Place Payload with "<name>" "<language>" "<address>"
    When user call "AddPlaceAPI" with "Post" http request
    Then the API call is success with status code 200
    And "status" in response body is "OK"
    And "scope" in response body is "APP"
    And verify place_Id created maps to "<name>" using "getPlaceAPI"
    
Examples: 
		| name    | language | address 						|
		| AAhouse | English  | World Cross Center | 
#		| BBhouse | Spanish  | Sea Cross Center   |

@DeletePlace
Scenario: Verify if Delete Place functiolity is working

		Given DeletePlace Playload
		When user call "deletePlaceAPI" with "POST" http request
		Then the API call is success with status code 200
		And "status" in response body is "OK"     