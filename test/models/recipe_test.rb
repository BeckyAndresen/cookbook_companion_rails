# frozen_string_literal: true

require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  test 'should return all recipes' do
    actual = Recipe.all_for_ingredients(['', '1', '2', '3', '4', '5', '6', '7'])
    expected = Recipe.all

    assert_equal(expected.sort, actual.sort)
  end

  test 'should return pb and pbj sandwich' do
    actual = Recipe.all_for_ingredients(['', '1', '2', '3'])
    expected = Recipe.where(id: [1, 4])

    assert_equal(expected.sort, actual.sort)
  end

  test 'should return pb sandwich' do
    actual = Recipe.all_for_ingredients(['', '1', '2'])
    expected = [Recipe.find(4)]

    assert_equal(expected, actual)
  end

  test 'should return nothing' do
    actual = Recipe.all_for_ingredients(['', '1'])

    assert_equal([], actual)
  end
end
