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

