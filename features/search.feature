Feature: Use the website to find restaurants
	So that I can order food
	As a hungry customer
	I want to be able to find restaurants in my area

	Scenario: Search for restaurants in an area
		Given I am on website "http://www.justeat.co.uk" 
		And I want food in "AR51"
		When I search for restaurants
		Then I should see some restaurants in "AR51"

	Scenario: Search for restaurants using incorrect postcode format
                And I want food in "X"
		When I search for restaurants
		Then I should see an error message returned

	Scenario: Search for restaurants and count results
		And I want food in "AR51"
		When I search for restaurants
		Then I should see some restaurants in "AR51"
 		And I should see "22" number of restuarants returned

	Scenario: Search for restaurant - localization
		And I am on localized site <site_id>
		
