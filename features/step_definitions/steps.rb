Given(/^I am on website "(.*?)"$/) do |url|
  visit url
  #begin
  #  wait_until_exists(@browser.div(:id => 'wheasdasde'))
  # end
end

And(/I want food in "([^""]+)"/) do |area|
   fill_in('where', :with => area)
end

When(/^I search for restaurants$/) do
   find_button('btnSearch').click
end

Then(/^I should see some restaurants in "(.*?)"$/) do |area|
   page.should have_content(area)   
end
