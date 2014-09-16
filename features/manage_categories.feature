Feature: Manage Categories
  As a blog administrator
  In order to organise my blog articles
  I would like to be able to manage categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully add new category
    When I follow "Categories"
    And I fill in "category_name" with "Foo"
    And I fill in "category_keywords" with "Foo Bar"
    And I fill in "category_description" with "Foo Bar Category"
    And I press "Save"
    Then I should be on the categories admin page
    And I should see "Foo"

  Scenario: Successfully edit an existing category
    Given I have successfully added the category "Football"
    When I follow "Football"
    And I fill in "category_name" with "Golf"
    And I press "Save"
    Then I should be on the categories admin page
    And I should see "Golf"
    And I should not see "Football"

