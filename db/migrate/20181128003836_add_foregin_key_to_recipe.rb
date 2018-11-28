class AddForeginKeyToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_reference :recipes, :course, index: true
    add_reference :recipes, :cuisine, index: true
  end
end
