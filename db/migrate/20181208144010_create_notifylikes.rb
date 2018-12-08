class CreateNotifylikes < ActiveRecord::Migration[5.2]
  def change
    create_table :notifylikes do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.references :like, foreign_key: true

      t.timestamps
    end
  end
end
