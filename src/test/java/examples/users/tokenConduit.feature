Feature: Token for the Home Page ConduitApp


  Background:
    * url 'https://conduit-api.bondaracademy.com/api/'

  @conduiToken
  Scenario: Get token
    Given path 'users/login'
    And request { user: {email: "karatePrueba@testkarate.com", password: "12345678"} }
    When method Post
    Then status 200
    * print response
    * def token = response.user.token
    * print token



    Given header Authorization = 'Token ' + token
    And path 'articles'
    And request {"article":{"title":"Article prueba 06","description":"Article prueba 06","body":"Article prueba 06","tagList":[]}}
    When method post
    Then status 201
    And response.article.title == "Article prueba 06"
    And response.article.author.username == "karatePruebaMayn"
    * print response

