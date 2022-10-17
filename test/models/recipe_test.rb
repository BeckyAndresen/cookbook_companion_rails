# frozen_string_literal: true

require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  test 'should return all recipes' do
    recipes = Recipe.all_for_ingredients(['', '1', '2', '3', '4', '5', '6', '7'])

    assert_equal(Recipe.all.count, recipes.count)
  end

  test 'should return pb and pbj sandwich' do
    recipes = Recipe.all_for_ingredients(['', '1', '2', '3'])

    assert_equal(2, recipes.count)
  end

  test 'should return pb sandwich' do
    recipes = Recipe.all_for_ingredients(['', '1', '2'])

    assert_equal(1, recipes.count)
    assert_equal('Peanut Butter Sandwich', recipes.first.name)
  end

  test 'should return nothing' do
    recipes = Recipe.all_for_ingredients(['', '1'])

    assert_equal(0, recipes.count)
  end
end
