class CreateIngLinker < ActiveRecord::Migration[5.2]
  def change
    create_table :ing_linkers do |t|
      t.references :recipe, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true
    end
  end
end
