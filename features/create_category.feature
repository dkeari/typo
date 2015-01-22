Feature: Create Category
  As an author
  In order to categorize my blogs
  I want to create categories

  Scenario: Create category page shown
    Given I am on the categories page
    Then I should see "Categories"
    And I should see "You are in Categories Page!"

  Scenario: Create category page not shown when category pressed
    Given the blog is set up
    When I am on the categories page
    Then I should not see "You are in Categories Page!"
    And I should see "Ain't in Categories Page!"

