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

