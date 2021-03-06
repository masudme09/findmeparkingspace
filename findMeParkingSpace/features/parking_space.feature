Feature: User Management(registration)
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
        Then I should see the "Welcome + fullname"

Feature: User Management(login logout)
  As a user
  Such that I go to login page
  I want to logged in into the system.

    Scenario: User login to system
        Given the following users provide login infromation in the system
            | email                     | password  | 
            | rajesh.kapoor@gmail.com   | abcdefg   | 
            | rmanish.kapoor@gmail.com  | abcdefk   |

        And I open the login page
        And I enter "rajesh.kapoor@gmail.com" as email and "abcdefg" as password
        When I submit login request
        Then I should see the "Welcome + fullname"

    Scenario: User logout from the system
        Given the following users are logged in into the system
            | email                     | password  | 
            | rajesh.kapoor@gmail.com   | abcdefg   | 
            | rmanish.kapoor@gmail.com  | abcdefk   |
            
        And I am logged in into the system
        When I submit logout request
        Then I should see the login page

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

Feature: Parking Paymnet
  As a user 
  Such that I am in the system
  I want to process parking space Paymnet

    Scenario: Selecting hourly payment
        Given I am logged on the system
        And I have entered the destination location
        And I have selected hourly payment scheme
        When I click on search 
        Then system must show the price in hourly payment rates
    
    Scenario: Selecting real time payment
        Given I am logged on the system
        And I have entered the destination location
        And I have selected real time payment scheme
        When I click on search 
        Then system must show the price in real time payment rates
    
    Scenario:  Selection of start and end time
        Given I am logged on the system
        And I have entered the destination location
        And I have entered start and end time
        When I click on search 
        Then system must show the price based on my start and end time

