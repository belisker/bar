Feature: Manage_stock
  In order to manage the stock of each alcool
  As a barman
  I want to buy time
  
  @wip
  Scenario Outline: Adding alcool into a list
    Given I have no alcool in the list
    And I am on the list of alcools
    When I follow "add alcool"
    And I fill in "Name" with "<name_alcool>"
    And I fill in "Quantity" with "<number_bottle>"
    And I press "Create Alcool"
    Then I should be on the list of alcools
    And I should see "<name_alcool>"
    And I should see "<number_bottle>"
    And I should have 1 alcool in the list
  
    Examples:
      | name_alcool | number_bottle |
      |  vodka      |     50        |
      |  wisky      |     75        |
    
    
  @wip
    Scenario Outline: Decrease a number of bottles of one alcool
      Given I have <number_of_bottle> bottles of "<name_of_alcool>"
      And I am on the list of alcools
      And I fill in "quantity" with "<number_decreased>"
      When I press "decrease"
      Then I should see "<rest_of_bottle>"
    
    Examples:
      | number_of_bottle | name_of_alcool    | number_decreased | rest_of_bottle |
      |       50         |  vodka            |        10        |     40         |
      |       75         |  wisky            |        22        |     53         |  
  
  # @wip
  #   Scenario: decrease the number of bottles of one alcool
  #     Given I have 50 bottles of "vodka"
  #     And I am on the list of alcools
  #     When I press "decrease"
  #     Then I should see "49"
  

   # @wip
  # Scenario: Add alcool into a list
  #   Given I have no alcool in the list
  #   And I am on the list of alcools
  #   When I follow "add alcool"
  #   And I fill in "Name" with "vodka"
  #   And I fill in "Quantity" with "50"
  #   And I press "Create Alcool"
  #   Then I should be on the list of alcools
  #   And I should see "vodka"
  #   And I should see "50"
  #   And I should have 1 alcool in the list

  
    # Scenario: decrease the number of bottles of one alcool
    #     Given I have alcools titled vodka  
    #     And I have 50 bottles of vodka
    #     When I press the button decrease
    #     Then I should have 49 bottles of vodka
    
  # Scenario: Send a mail  
  #     Given I have a stock of 50 bottles of vodka
  #     When I have a number of bottles bellow the number 5 
  #     Then A windows should appear on my computer with 50 by default in the casebox
  #     When I click on the button order
  #     Then A script should send a mail to the provider to order the good number of vodka 
  #    
  #   Scenario: Increase a particular alcool
  #     Given I have 3 bottles of vodka
  #     And I receive my 50 bottles of vodka 
  #     When I enter 50 bottles in the casebox
  #     And I press the button add to stock
  #     Then The stock of vodka should be equal to 53 bottles
  