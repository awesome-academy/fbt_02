class CreateBookTours < ActiveRecord::Migration[5.2]
  def change
    create_table :book_tours do |t|
      t.integer :users_id
      t.integer :tours_id
      t.integer :quantity
      t.float :price
      t.string :note

      t.timestamps
    end
  end
end
