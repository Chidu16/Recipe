class DropAndCreateComments < ActiveRecord::Migration[5.2]
  def change
    drop_table :comments
    
    create_table :comments do |t|
      t.text :body
      
      t.references :recipe,  foreign_key: true
      t.references :user,  foreign_key: true

      t.timestamps
    end
  end
    
end
