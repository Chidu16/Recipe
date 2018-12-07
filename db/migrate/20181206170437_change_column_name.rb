class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    
    rename_column :recipes, :Name, :name
    rename_column :recipes, :Description, :description
    
  end
end
