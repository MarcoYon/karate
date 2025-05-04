Feature: Test for the Home Page


  Background:
  * url 'https://conduit-api.bondaracademy.com/api/'

  @conduit_01
  Scenario: Get all tags
    Given path 'tags'
    When method Get
    Then status 200
    And match response.tags contains 'Test'
    And match response.tags contains [ 'Test', 'qa career' ]
    And match response.tags !contains [ 'noPresent' ]
    And match response.tags !contains 'noPresent'
    And match response.tags == "#array"
    And match each response.tags == "#string"
    And match each response.tags == "#notnull"

  @conduit_02
  Scenario: Get 10 articles from the page
    Given path 'articles'
    #Given param limit = 10
    #Given param offset = 0
    Given params { limit: 10, offset: 0 }
    When method Get
    Then status 200
    And match response.articles == "#[10]"
    And match response.articlesCount == 10