Feature: PetStore

  Background:
    * url 'https://petstore.swagger.io/v2'

  @petStore01
  Scenario: Finds Pets by status
    Given path '/pet/2'
    When method get
    Then status 200