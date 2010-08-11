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
