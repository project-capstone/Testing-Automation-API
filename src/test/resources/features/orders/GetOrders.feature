@GETOrder
Feature: GET order
  As a admin
  I want to get all data order and detail order by id
  So that I am success get data order

  #GET order BY id order Success
  Scenario: I want to get order by id order as admin
    Given I am successfully login as admin
    When I am hit endpoint get order by id 58
    Then I am get a status code 200 for get oder by id
    And Validate response body success code 200 message "Success Operation" for get order by id 58

  #GET order BY id order failed access forbidden
  Scenario: I want to get order by id order as customer
    Given I am successfully login as customer
    When I am hit endpoint get order by id 58
    Then I am get a status code 400 for get oder by id
    And Validate response body failed code 400 message "Access Forbidden" for get order by id order

  #GET order BY id order failed data not found
  Scenario: I want to get order by id order not exist as admin
    Given I am successfully login as admin
    When I am hit endpoint get order by id 100
    Then I am get a status code 400 for get oder by id
    And Validate response body failed code 400 message "Data Not Found" for get order by id order

  #GET order BY id order failed access forbidden
  Scenario: I want to get order by id order not exist as customer
    Given I am successfully login as admin
    When I am hit endpoint get order by id 100
    Then I am get a status code 400 for get oder by id
    And Validate response body failed code 400 message "Access Forbidden" for get order by id order

  #GET order BY id order failed invalid id
  Scenario: I want to get order by invalid id order as admin
    Given I am successfully login as admin
    When I am hit endpoint get order by id "limadua"
    Then I am get a status code 400 for get oder by id
    And Validate response body failed code 400 message "Invalid Id" for get order by id order

  #GET order BY id order failed access forbidden
  Scenario: I want to get order by invalid id order as customer
    Given I am successfully login as customer
    When I am hit endpoint get order by id "limadua"
    Then I am get a status code 400 for get oder by id
    And Validate response body failed code 400 message "Access Forbidden" for get order by id order

  #GET order By id order Failed
  Scenario: I want to get order by id group
    Given I am successfully login as customer
    When I am hit endpoint get order by id group 1
    Then I am get a status code 200 for get oder by id group
    And Validate response body code 200 message "Access Forbidden" for get order by id group

