class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.integer :ingredient_id
      t.integer :course_id
      t.integer :cuisine_id

      t.timestamps
    end
  end
end
