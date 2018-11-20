class CreateDirections < ActiveRecord::Migration[5.2]
  def change
    create_table :directions do |t|
      t.string :Steps
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
