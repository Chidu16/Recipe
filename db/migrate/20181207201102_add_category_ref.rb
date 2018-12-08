class AddCategoryRef < ActiveRecord::Migration[5.2]
  def change
    
    add_reference :ingredients, :category, index: true
    
  end
end
