# frozen_string_literal: true

class RecipesController < ApplicationController
  def index
    ingredient_ids = params[:ingredients] || []
    @recipes = Recipe.all_for_ingredients(ingredient_ids)
  end
end
