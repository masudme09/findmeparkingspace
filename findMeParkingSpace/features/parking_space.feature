Feature: User Management
  As a user
  Such that I go to registration page
  I want to register into the system.
    
Scenario: User register to system
    Given the following users are registered in the system
        | fullname      | email                     | password  | licence number|
        | Rajesh Kapoor | rajesh.kapoor@gmail.com   | abcdefg   | LCN1234       |
        | ManishKapoor  | rmanish.kapoor@gmail.com  | abcdefk   | LCN1334       |

    And I open the registration page
    And I enter registration information
    When I submit registration request
    Then I should see the “Welcome + fullname”

Feature: Interactive Search of Parking Space
  As a user 
  Such that I open parking space search page
  I want to search available parking space into the system.

Scenario: Search available parking space 
    Given I am logged on the system
    And I have written destination location on the search page
    When I click on search button
    Then I should see available parking space for me

Scenario: Summary of available parking space
    Given I am logged on the system
    And I have written destination location on the search page
    When I click on search button
    Then I should see available parking space with price and distance from destination

Scenario: Estimation of the price based on leaving hours
    Given I am logged on the system 
    And I have written destination location on the search page
    And I have entered leaving hours 
    When I click on search button
    Then I should able to see available parking space with the price estimation hourly basis based on leaving hours
    Then I should able to see available parking space with the price estomation real time basis based on leaving hours




