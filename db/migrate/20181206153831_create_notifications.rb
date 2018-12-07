class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.string :from_name
      t.references :user, foreign_key: true
      t.references :comment, foreign_key: true
      t.timestamps
    end
  end
end
