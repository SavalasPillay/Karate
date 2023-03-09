Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'https://petstore.swagger.io/v2/pet/'

  Scenario Outline: get all users and then get the first user by id

    * param status = <petStatus>
    Given path 'findByStatus'
    When method get
    Then status 200

    Examples:
    | petStatus   |
    | 'available' |
    | 'pending    |
    | 'sold'      |