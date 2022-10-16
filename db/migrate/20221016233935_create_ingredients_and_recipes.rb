class CreateIngredientsAndRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.timestamps
    end

    create_table :recipes do |t|
      t.string :name
      t.integer :page_number
      t.timestamps
    end

    create_table :ingredients_recipes, id: false do |t|
      t.belongs_to :recipe
      t.belongs_to :ingredient
    end
  end
end
