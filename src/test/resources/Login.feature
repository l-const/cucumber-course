@login
Feature: Login

  Scenario: Login scenario
    Given I tried to login with username kostas
    When  I tried to login with username "john"
    When User logged in with the following details
    | Giannis | Lampropoulos | 25 | giannis@gmail.com |
    When User logged in with the following details
      | Giannis | Lampropoulos | 25 | giannis@gmail.com |
      | Kostas | Lampropoulos | 29 | kostas@gmail.com |
    When I proceed
    Then Logged in


  Scenario Outline: Login second scenario outline
    Given I tried to login with username kostas
    When  I tried to login with username "john"
    When User login into application with username <UserName> and password <Password>
    When I proceed
    Then Logged in

    Examples:
    |UserName | Password|
    |user1 | passwd1    |
    |user2 | passwd2    |
    |user3 | passwd3    |
