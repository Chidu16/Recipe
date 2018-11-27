class CreateCuisines < ActiveRecord::Migration[5.2]
  def change
    create_table :cuisines do |t|
      t.string :CuisineType

      t.timestamps
    end
  end
end
