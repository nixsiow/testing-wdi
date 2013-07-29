Given(/^I have the number (\d+)$/) do |number|
  @calculator = Calculator.new
  @calculator << number
end

When(/^I add them together$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see (\d+) on the terminal$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
