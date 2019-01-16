class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :users_id
      t.integer :tours_id
      t.integer :rep_id

      t.timestamps
    end
  end
end
