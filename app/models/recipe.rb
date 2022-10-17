# frozen_string_literal: true

class Recipe < ApplicationRecord
  has_and_belongs_to_many :ingredients

  def self.all_for_ingredients(ingredient_ids)
    selected_ingredients = ingredient_ids.reject(&:empty?).map(&:to_i)

    recipes = Recipe.includes(:ingredients).all

    recipes.select do |recipe|
      (recipe.ingredients.ids - selected_ingredients).empty?
    end
  end
end
