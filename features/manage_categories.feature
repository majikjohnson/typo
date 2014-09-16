Feature: Manage Categories
  As a blog administrator
  In order to organise my blog articles
  I would like to be able to manage categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully add new category
    When I follow "Categories"
    And I fill in "name" with "Foo"
    And I fill in "keywords" with "Foo Bar"
    And I fill in "description" with "Foo Bar Category"
    And I press "Save"
    Then I should be on the admin categories page
    And I should see "Foo"

  Scenario: Successfully edit an existing category
