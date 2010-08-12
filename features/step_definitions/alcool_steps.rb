Given /^I have no alcool in the list$/ do
  Alcool.delete_all
end

Then /^I should have ([0-9]+) alcool in the list$/ do |count|
  Alcool.count.should == count.to_i
end


Given /^I have (\d+) bottles of "([^"]*)"$/ do |number, alcool_name|
  alcool = Alcool.where(:name => alcool_name).first
  unless alcool
    alcool = Alcool.new
    alcool.name = alcool_name
  end
  alcool.quantity = number
  alcool.save
end

Given /^I have a (\d+) of "([^"]*)"$/ do |number, name_alcool|
  alcool = Alcool.where(:name => name_alcool).first
  unless
    alcool = Alcool.new
    alcool.name = name_alcool
  end
  alcool.quantity = number
  alcool.save
end

When /^I have a (\d+) of "([^"]*)" less than (\d+)$/ do |number, name_alcool, limite|
  alcool = Alcool.where(:name => name_alcool).first
  unless
     alcool = Alcool.new
     alcool.name = name_alcool
  end
  alcool.quantity = number
  alcool.quantity.should < limite.to_i
  alcool.save
end

Then /^I fill in "([^"]*)" whit (\d+)$/ do |quantity_command, number_command|
  alcool.quantity_command = number_command
end