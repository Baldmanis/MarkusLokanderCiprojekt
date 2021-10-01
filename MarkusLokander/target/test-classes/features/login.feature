Feature: Login
  I need to test the login screen

  @login
  Scenario Outline: Sign up to https://login.mailchimp.com/signup/


    Given I have entered "<email>"
    And entered "<username>"
    And I have put in "<password>"
    When I press sign up
    Then the result should be "<result>" on the screen
    Examples:
      | email                     | username     | password    | result                                         |
      | Markuslokander97@gmail.com| alreadytaken | Password10! | Another user with this username already exists.|
      | Markuslokander97@gmail.com| working      | Password10! | Check your email                               |
      | Markuslokander97@gmail.com| random100    | Password100!| Enter a value less than 100 characters long    |
      | Markuslokander97@gmail.com| working      | Password10! | Please enter a value                           |

